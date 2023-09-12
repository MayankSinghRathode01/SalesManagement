--Cleansed DIM_DateTable--

SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      ,--[DayNumberOfWeek]
      [EnglishDayNameOfWeek] as Day
      --[SpanishDayNameOfWeek]
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNo
      ,[EnglishMonthName] as Month,
	  LEFT([EnglishDayNameOfWeek],3) as MonthShort
      --[SpanishMonthName]
      --[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthNo
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where [CalendarYear]>=2021;
