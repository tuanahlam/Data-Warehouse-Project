CREATE TABLE dbo.DimDate(
  DateKey INT NOT NULL PRIMARY KEY,
  [DateAlternateKey] DATE NOT NULL,
  [DayOfWeek] varchar(50) NOT NULL
  ,[MonthName] varchar(50) NOT NULL
  ,[CalenderQuarter] INT NOT NULL
  ,[Year] INT NOT NULL
);

INSERT INTO DimDate (DateKey,DateAlternateKey,DayOfWeek,MonthName,CalenderQuarter,Year) VALUES
(20200101,'2020-01-01','Wednesday','January',1,2020);