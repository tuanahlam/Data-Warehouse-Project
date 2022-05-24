CREATE TABLE dbo.FactOrders (
  OrdersKey INT IDENTITY(1,1) NOT NULL,
  [ConcertKey] int NOT NULL,
  [UsersKey] int NOT NULL,
  [ZoneKey] int NOT NULL,
  [OrdersQuantity] int NOT NULL,
  [TotalPrice] int NOT NULL,
  [Status] nvarchar(200) NOT NULL,
  );