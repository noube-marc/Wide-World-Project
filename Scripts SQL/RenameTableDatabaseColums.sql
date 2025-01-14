DECLARE @TableSchema NVARCHAR(255)
DECLARE @TableName NVARCHAR(255)
DECLARE @ColumnName NVARCHAR(255)
DECLARE @NewColumnName NVARCHAR(255)
DECLARE @SQL NVARCHAR(MAX)

-- Cursor to loop through all tables and columns with spaces in their names
DECLARE ColumnCursor CURSOR FOR
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '% %'

OPEN ColumnCursor
FETCH NEXT FROM ColumnCursor INTO @TableSchema, @TableName, @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Replace spaces in column names with underscores (or remove spaces if you prefer)
    SET @NewColumnName = REPLACE(@ColumnName, ' ', '_')

    -- Generate the SQL to rename the column, including the schema name
    SET @SQL = 'EXEC sp_rename ''' + @TableSchema + '.' + @TableName + '.' + @ColumnName + ''', ''' + @NewColumnName + ''', ''COLUMN'''

    -- Print or execute the generated SQL
    PRINT @SQL
    -- Uncomment the line below to actually execute the SQL
     EXEC sp_executesql @SQL

    FETCH NEXT FROM ColumnCursor INTO @TableSchema, @TableName, @ColumnName
END

CLOSE ColumnCursor
DEALLOCATE ColumnCursor
