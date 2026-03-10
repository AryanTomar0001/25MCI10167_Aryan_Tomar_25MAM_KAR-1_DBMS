
--------------------------------------------------

# 1. Purchases Table

**Create Table**
```sql
CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_id VARCHAR(10),
    purchase_date DATE
);
```
**Insert Data**
```sql
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
```
--------------------------------------------------

**# 2. sql query**
```sql
SELECT
p1.product_id,
p1.purchase_date,
p1.customer_id AS Customer1,
p2.customer_id AS Customer2
FROM Purchases p1
JOIN Purchases p2
ON p1.product_id = p2.product_id
AND p1.purchase_date = p2.purchase_date
AND p1.customer_id < p2.customer_id;
```
<img width="643" height="326" alt="image" src="https://github.com/user-attachments/assets/b9ad33fa-435d-4105-9783-63a5e877342d" />

--------------------------------------------------

**# 3. Employee Table**

**Create Table**
```sql
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary INT
);
```
**Insert Data**
```sql
INSERT INTO Employee VALUES
(1, 'Amit', 120000),
(2, 'Ravi', 80000),
(3, 'Neha', 82000),
(4, 'Karan', 60000),
(5, 'Simran', 62000),
(6, 'Pooja', 61000),
(7, 'Rahul', 64000),
(8, 'Arjun', 70000);
```
--------------------------------------------------

# 4. Creating a View


**Create View**
```sql
CREATE VIEW HighSalaryEmployees AS
SELECT EmpID, EmpName, Salary
FROM Employee
WHERE Salary > 50000;
```
**Query the View**
```sql
SELECT * FROM HighSalaryEmployees;
```
<img width="434" height="317" alt="image" src="https://github.com/user-attachments/assets/ce7ca806-e06b-4c67-a5dc-d66886b8bd1e" />

--------------------------------------------------
