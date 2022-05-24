CREATE TABLE dbo.DimConcert(
  ConcertKey INT IDENTITY(1,1) NOT NULL,
  [ConcertAlternateKey] int NOT NULL,
  [ConcertName] nvarchar(100) NOT NULL,
  [EventDateKey] date NOT NULL,
  [StartBookingDateKey] date NOT NULL,
  [LocationKey] int NOT NULL,
  [Pic] nvarchar(200) NOT NULL,
  [EditDateKey] int NULL
);