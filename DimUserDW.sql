CREATE TABLE dbo.DimUsers(
  UsersKey INT IDENTITY(1,1) NOT NULL ,
  [UsersAlternateKey] int NOT NULL,
  [UserName] nvarchar(50) NOT NULL,
  [Password] nvarchar(50) NOT NULL,
  [Email] nvarchar(50) NOT NULL,
  [FirstName] nvarchar(50) NOT NULL,
  [LastName] nvarchar(50) NOT NULL,
  [Tel] nvarchar(10) NOT NULL,
  [UserLevel] nvarchar(5) NOT NULL
);