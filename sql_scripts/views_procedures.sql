CREATE VIEW CustomerOrderSummary AS
SELECT c.name AS customer_name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

DELIMITER //
CREATE PROCEDURE GetBooksByCategory(IN cat_name VARCHAR(100))
BEGIN
    SELECT b.title, b.price, b.stock
    FROM Books b
    JOIN Categories c ON b.category_id = c.category_id
    WHERE c.category_name = cat_name;
END //
DELIMITER ;