CREATE VIEW v_products_suppliers
AS
SELECT * 
FROM products
JOIN suppliers
ON pro_sup_id = sup_id
