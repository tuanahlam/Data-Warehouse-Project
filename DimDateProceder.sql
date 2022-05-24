USE [MLXL_TicketDW];
GO

--This stored procedure accepts a single input parameter: DateToKey (integer)
--It will extend the DimDate records to the input date
--It is designed to be executed by the ETL process, extended the date records as required
CREATE PROC [dbo].[uspDimDateExtend]
	@DateToKey INT
AS
	SET NOCOUNT ON;

		DECLARE @DateFrom DATE = '2019-01-01';
		DECLARE @DateTo DATE = '2021-02-20';
	
	WHILE (@DateFrom <= @DateTo)
	BEGIN
		INSERT [dbo].[DimDate]
		(
			[DateKey]
            ,[DateAlternateKey]
            ,[DayOfWeek]
			,[MonthName]
			,[CalenderQuarter]
			,[Year]
  
		)
		 SELECT DateKey = YEAR(@DateFrom) * 10000 + MONTH(@DateFrom) * 100 + DAY(@DateFrom),
         DateAlternateKey = @DateFrom ,
	     CASE DATEPART(dw, @DateFrom)
				WHEN 1 THEN 'Sunday'
				WHEN 2 THEN 'Monday'
				WHEN 3 THEN 'Tuesday'
				WHEN 4 THEN 'Wednesday'
				WHEN 5 THEN 'Thursday'
				WHEN 6 THEN 'Friday'
				WHEN 7 THEN 'Saturday'
			END AS [DayOfWeek],
			CASE DATEPART(m, @DateFrom)
				WHEN 1 THEN 'January'
				WHEN 2 THEN 'February'
				WHEN 3 THEN 'March'
				WHEN 4 THEN 'April'
				WHEN 5 THEN 'May'
				WHEN 6 THEN 'June'
				WHEN 7 THEN 'July'
				WHEN 8 THEN 'August'
				WHEN 9 THEN 'September'
				WHEN 10 THEN 'October'
				WHEN 11 THEN 'November'
				WHEN 12 THEN 'December'
			END AS [MonthName]
			,DATEPART(q, @DateFrom) AS [CalenderQuarter]
			,DATEPART(yyyy, @DateFrom) AS [Year]
     SET @DateFrom = DATEADD(d, 1, @DateFrom);
	END;
GO