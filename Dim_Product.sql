SELECT  [ProductKey]
      ,[ProductAlternateKey] as ItemCode
	  ,[EnglishProductName] as Name
      ,ps.EnglishProductSubcategoryName as SubCategory
	  ,pc.EnglishProductCategoryName as CategoryName
      ,[Color] as Color
      ,[Size] as Size
      ,[ProductLine] as ProductLine
      ,[ModelName]
      ,[EnglishDescription]
      ,ISNULL (P.[Status], 'OutDate') as Status
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  Left join DimProductSubcategory ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  Left join DimProductCategory pc on pc.ProductCategoryKey = ps.ProductCategoryKey
  Order by ProductKey ASC