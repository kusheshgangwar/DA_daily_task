-- day 05
SELECT *
FROM Product
WHERE price = (
    SELECT MAX(price)
    FROM Product
);

SELECT *
FROM Product
WHERE price > (
    SELECT AVG(price)
    FROM Product
);

SELECT
    product_name,
    price,
    CASE
        WHEN price >= 5000 THEN 'Premium'
        WHEN price >= 2000 THEN 'Standard'
        ELSE 'Basic'
    END AS product_type
FROM Product;

SELECT
    product_name,
    stock,
    CASE
        WHEN stock = 0 THEN 'Out of Stock'
        WHEN stock <= 10 THEN 'Low Stock'
        ELSE 'Available'
    END AS stock_status
FROM Product;

SELECT
    Customer.name,
    SUM(Product.price * Shipment.quantity) AS total_spending
FROM Customer
JOIN Shipment
ON Customer.customer_id = Shipment.customer_id
JOIN Product
ON Shipment.product_id = Product.product_id
GROUP BY Customer.customer_id, Customer.name;

SELECT *
FROM Product
ORDER BY price DESC
LIMIT 5;

CREATE VIEW Sales_View AS
SELECT
    Customer.name AS customer_name,
    Product.product_name,
    Shipment.quantity,
    Product.price,
    Shipment.quantity * Product.price AS total_amount
FROM Customer
JOIN Shipment
ON Customer.customer_id = Shipment.customer_id
JOIN Product
ON Shipment.product_id = Product.product_id;

SELECT *
FROM Sales_View;

SELECT
    Customer.name,
    COUNT(Shipment.shipment_id) AS total_orders,
    SUM(Shipment.quantity) AS total_quantity,
    SUM(Product.price * Shipment.quantity) AS total_spending,
    AVG(Product.price * Shipment.quantity) AS average_order_value
FROM Customer
JOIN Shipment
ON Customer.customer_id = Shipment.customer_id
JOIN Product
ON Shipment.product_id = Product.product_id
GROUP BY Customer.customer_id, Customer.name;