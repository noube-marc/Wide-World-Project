USE wideworld_gold_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gold @ViewName nvarchar(100)
AS
BEGIN

DECLARE @statement VARCHAR(MAX)

    SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
        SELECT *
        FROM
            OPENROWSET(
                BULK''https://adlsgen2nwmc.dfs.core.windows.net/oor/Dimension/'+ @ViewName +'/'',
                FORMAT = ''DELTA''
            ) AS [result]'

EXEC(@statement)
END
GO
