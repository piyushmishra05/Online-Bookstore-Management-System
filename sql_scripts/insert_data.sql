INSERT INTO Categories (category_name)
VALUES ('Fiction'), ('Science'), ('Technology'), ('History');

INSERT INTO Authors (author_name, country)
VALUES ('J.K. Rowling', 'UK'),
       ('Isaac Newton', 'UK'),
       ('Elon Musk', 'USA'),
       ('Yuval Noah Harari', 'Israel');

INSERT INTO Books (title, price, stock, category_id)
VALUES ('Harry Potter', 599.99, 50, 1),
       ('Principia Mathematica', 999.99, 20, 2),
       ('Tesla: The Visionary', 499.99, 30, 3),
       ('Sapiens', 699.99, 40, 4);

INSERT INTO BookAuthors VALUES (1,1), (2,2), (3,3), (4,4);

INSERT INTO Customers (name, email, city)
VALUES ('Amit Sharma', 'amit@gmail.com', 'Delhi'),
       ('Riya Patel', 'riya@gmail.com', 'Mumbai'),
       ('Arjun Singh', 'arjun@gmail.com', 'Pune');

INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES (1, '2025-11-01', 1199.98),
       (2, '2025-11-02', 699.99);

INSERT INTO OrderDetails (order_id, book_id, quantity, subtotal)
VALUES (1, 1, 1, 599.99),
       (1, 2, 1, 599.99),
       (2, 4, 1, 699.99);