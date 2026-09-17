CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    contact_no VARCHAR(15)
);

INSERT INTO Customers 
(customer_id, customer_name, email, city, contact_no)
VALUES
(101, 'Amit Sharma', 'amit@gmail.com', 'Delhi', '9876543210'),
(102, 'Rahul Verma', 'rahul@gmail.com', 'Mumbai', '9876543211'),
(103, 'Priya Singh', 'priya@gmail.com', 'Delhi', '9876543212'),
(104, 'Neha Kapoor', 'neha@gmail.com', 'Pune', '9876543213');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(custo

