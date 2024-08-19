SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]     
      ,[SalesOrderNumber]  
      ,[SalesAmount]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  Where LEFT(OrderDateKey,4) >= YEAR(GETDATE())-2
  Order BY OrderDateKey ASC