SELECT b.title, a.author_name
FROM Books b
JOIN BookAuthors ba ON b.book_id = ba.book_id
JOIN Authors a ON ba.author_id = a.author_id;

SELECT c.category_name, SUM(od.subtotal) AS total_sales
FROM OrderDetails od
JOIN Books b ON od.book_id = b.book_id
JOIN Categories c ON b.category_id = c.category_id
GROUP BY c.category_name;

SELECT b.title, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Books b ON od.book_id = b.book_id
GROUP BY b.title
ORDER BY total_sold DESC
LIMIT 3;

SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name;