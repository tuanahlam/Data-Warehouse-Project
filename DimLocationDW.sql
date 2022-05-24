CREATE TABLE dbo.DimLocation (
  LocationKey INT IDENTITY(1,1) NOT NULL ,
  [LocationAlternateKey] int NOT NULL,
  [LocationName] nvarchar(100) NOT NULL,
  [LocationImage] nvarchar(200) NOT NULL
);