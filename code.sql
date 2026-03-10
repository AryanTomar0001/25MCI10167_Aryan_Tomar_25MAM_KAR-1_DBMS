CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_id VARCHAR(10),
    purchase_date DATE
);


INSERT INTO Purchases VALUES
(1, 101, 'P1', '2026-03-01'),
(2, 102, 'P1', '2026-03-01'),
(3, 103, 'P2', '2026-03-01'),
(4, 104, 'P1', '2026-03-01'),
(5, 105, 'P3', '2026-03-02'),
(6, 101, 'P2', '2026-03-02'),
(7, 102, 'P2', '2026-03-02'),
(8, 106, 'P1', '2026-03-01'),
(9, 107, 'P3', '2026-03-02'),
(10, 108, 'P1', '2026-03-03');



select
p1.product_id,
p1.purchase_date,
p1.customer_id as Customer1 ,
p2.customer_id as Customer2
from Purchases p1
join Purchases p2
on p1.product_id=p2.product_id
and p1.purchase_date=p2.purchase_date
and p1.customer_id<p2.customer_id;



CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 120000),
(2, 'Ravi', 80000),
(3, 'Neha', 82000),
(4, 'Karan', 60000),
(5, 'Simran', 62000),
(6, 'Pooja', 61000),
(7, 'Rahul', 64000),
(8, 'Arjun', 70000);



CREATE VIEW HighSalaryEmployees AS
SELECT EmpID, EmpName, Salary
FROM Employee
WHERE Salary > 50000;


SELECT * FROM HighSalaryEmployees;
