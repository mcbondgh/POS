IF EXISTS (SELECT * FROM sysobjects WHERE name = 'stockQuery' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].stockQuery
GO

CREATE PROCEDURE [dbo].stockQuery
AS
	SET NOCOUNT ON;
SELECT id, product_name, quantity FROM products 
WHERE quantity < 10
GO

