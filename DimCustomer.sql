SELECT c.[CustomerKey]
      ,c.[FirstName] AS [First Name]
     
      ,c.[LastName] as [Last Name]
      ,c.[FirstName]+' '+c.[LastName] as [Full Name]
      ,CASE c.[Gender] When 'M' Then 'Male' 
					   When 'F' Then 'Female'
					   END
					   AS Gender
      ,c.[DateFirstPurchase]
	  ,d.city as [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] c
  LEFT JOIN DimGeography d on c.GeographyKey = d.GeographyKey
  order by CustomerKey ASC