-- INSTRUCTIONS
    -- Set the targetEntityName parameter, then stand back
    -- DON'T run on a production system. This query will get
    -- real table-scanny, real fast
DECLARE @targetEntityName VARCHAR(50) = 'account'
 
DECLARE @currentField VARCHAR(250)
 
-- This table variable will store the final list of fields that a naieve search indicates are unused
DECLARE @tblUnusedFields TABLE(
    name VARCHAR(250)
)
 
-- Declare a cursor that extracts the name of ALL known fields for the target entity
DECLARE allFieldsCursor CURSOR FOR
SELECT
    DISTINCT MetadataSchema.Attribute.Name
 
FROM
    MetadataSchema.Attribute
 
LEFT JOIN MetadataSchema.Entity ON
MetadataSchema.Attribute.EntityId = MetadataSchema.Entity.EntityId
 
WHERE
    MetadataSchema.Entity.Name = @targetEntityName AND
 
    -- NOTE: Assuming only custom fields are of interest
    MetadataSchema.Attribute.IsCustomField = 1
 
OPEN allFieldsCursor
 
-- Loop through all known fields on the target entity and see if we can find any mention of them in the FormXML of SystemFormBase
-- NOTE: This is going to run like a *turd* - I'd strongly suggest you only do this on you UAT/DEV version
 
-- DBAs of a sensitive disposition should look away now...
FETCH NEXT FROM allFieldsCursor
INTO @currentField
 
WHILE @@FETCH_STATUS = 0
    BEGIN
 
        PRINT('Currently processing ' + @currentField)
 
        IF EXISTS (SELECT 1 FROM SystemFormBase WHERE FormXml LIKE '%%' + @currentField + '%')
            BEGIN
                PRINT('     ' + @currentField + ' was found on at least one SystemForm FormXML entry')
 
            END
        ELSE
            BEGIN
                PRINT('     ' + @currentField + ' was NOT found as part of any SystemForm FormXML')
 
                INSERT INTO @tblUnusedFields (name)
                VALUES (@currentField)
            END
 
        FETCH NEXT FROM allFieldsCursor
        INTO @currentField
 
    END
 
CLOSE allFieldsCursor
DEALLOCATE allFieldsCursor
 
-- You didn't just see that...
 
SELECT *
FROM @tblUnusedFields