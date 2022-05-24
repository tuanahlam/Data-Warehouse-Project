USE [MLXL_Ticket];
GO
INSERT INTO users([id],[UserName],[Password],[Email],[FirstName],[LastName],[Tel],[UserLevel])
VALUES (11,'Ahlam','Ahlam','Ahlam@gmail.com','Ahlam','Tuansani','0863333333','user');

INSERT INTO concert([id],[ConcertName],[location_id],[ShowDate],[ReserveDate],[Pic])
VALUES (61,'MAGIC HOUR with Eiji Akaso & Keita Machida',11,2020-01-12,2019-12-10,'https://www.picz.in.th/image/osm4o0');

INSERT INTO orders([id],[concert_id],[users_id],[zone_id],[OrdersQuantity],[TotalPrice],[status_id])
VALUES (52,60,10,4,3,16500,1);