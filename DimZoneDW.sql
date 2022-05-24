CREATE TABLE dbo.DimZone (
  ZoneKey INT IDENTITY(1,1) NOT NULL,
  [ZoneAlternateKey] int NOT NULL,
  [ZoneName] nvarchar(100) NOT NULL,
  [Quantity] int NOT NULL
);
