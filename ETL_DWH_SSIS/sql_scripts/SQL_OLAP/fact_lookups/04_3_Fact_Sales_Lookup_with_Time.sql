
SELECT [TimeSK] ,
   [Time]
  FROM [Sales_DWH].[dbo].[DimTime]

  SELECT 
Time,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DIM TIME'

alter table dimtime 
  