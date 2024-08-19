SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      ,[EnglishDayNameOfWeek] as Day
 
      ,[EnglishMonthName] as Month
      ,left(EnglishMonthName,3) as MonthShort
      ,[MonthNumberOfYear] as MonthNo
      ,[CalendarQuarter] as Quater
      ,[CalendarYear] as Year
  
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  Where [CalendarYear] > 2021
 