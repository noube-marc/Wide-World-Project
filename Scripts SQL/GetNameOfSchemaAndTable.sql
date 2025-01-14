SELECT
t.name AS Tablename,
s.name AS Schemaname
from sys.tables t
INNER JOIN sys.schemas s
on t.schema_id=s.schema_id
WHERE s.name='Sales'