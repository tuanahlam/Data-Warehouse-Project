USE [MLXL_TicketDW];
GO
SELECT
	COUNT(ConcertKey) AS [DimConcertRecords]
FROM
	[dbo].[DimConcert]
SELECT
	COUNT(UsersKey) AS [DimUsersRecords]
FROM
	[dbo].[DimUsers]
SELECT
	COUNT(OrdersKey) AS [FactOrdersRecords]
FROM
	[dbo].[FactOrders]