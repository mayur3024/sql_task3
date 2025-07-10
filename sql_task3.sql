select * from client;

copy client from  'C:/git_hub_desktop/SQL TASK/task1_company_db/2_july_2025_client_company_db.csv' delimiter ',' csv header;

select * from departments;

copy departments from 'C:/git_hub_desktop/SQL TASK/task1_company_db/2_july_2025_departments_company_db.csv' delimiter ',' csv header;

select * from employees;

copy employees from 'C:/git_hub_desktop/SQL TASK/task1_company_db/2_july_2025_employees_company_db.csv' delimiter ',' csv header;

select * from products;

copy products from 'C:/git_hub_desktop/SQL TASK/task1_company_db/2_july_2025_products_company_db.csv' delimiter ',' csv header;

delete from products where product_id = 7;

select * from projects;

copy projects from 'C:/git_hub_desktop/SQL TASK/task1_company_db/2_july_projects_company_db.csv' delimiter ',' csv header;

---Employees table 
---IN query

SELECT * FROM Employees WHERE Department IN ('IT', 'HR');

SELECT * FROM Employees WHERE Age IN (25, 30);

SELECT * FROM Employees WHERE Salary IN (48000, 60000, 73000);

SELECT * FROM Employees WHERE Emp_Name IN ('Sam Wilson', 'Meera Nair');

SELECT * FROM Employees WHERE Join_Date IN ('2021-05-012', '2022-09-18');


---Employees table 
---between query


SELECT * FROM Employees WHERE Age BETWEEN 25 AND 35;

SELECT * FROM Employees WHERE Salary BETWEEN 40000 AND 60000;

SELECT * FROM Employees WHERE Join_Date BETWEEN '2022-01-01' AND '2023-12-31';

SELECT * FROM Employees WHERE Emp_ID BETWEEN 1 AND 10;

SELECT * FROM Employees WHERE Age BETWEEN 30 AND 40 AND Salary BETWEEN 50000 AND 80000;


---employees table
---limit query

SELECT * FROM Employees ORDER BY Salary DESC LIMIT 5;

SELECT Emp_Name, Department FROM Employees ORDER BY Age ASC LIMIT 3;

SELECT * FROM Employees ORDER BY Join_Date DESC LIMIT 10;

SELECT Emp_ID, Emp_Name FROM Employees ORDER BY Emp_ID ASC LIMIT 7;

SELECT * FROM Employees ORDER BY Salary ASC LIMIT 1;


---employees table
---order query

SELECT * FROM Employees ORDER BY Age ASC;

SELECT Emp_Name, Salary FROM Employees ORDER BY Salary DESC;

SELECT * FROM Employees ORDER BY Join_Date ASC;

SELECT Emp_ID, Emp_Name FROM Employees ORDER BY Department, Salary DESC;

SELECT Emp_Name, Age FROM Employees ORDER BY Age DESC, Salary ASC;


---employees table 
---Check query

ALTER TABLE Employees
ADD CONSTRAINT check_age CHECK (Age >= 18);

ALTER TABLE Employees
ADD CONSTRAINT check_salary CHECK (Salary >= 10000);

ALTER TABLE Employees
ADD CONSTRAINT check_join_date CHECK (Join_Date >= '2000-01-01');

ALTER TABLE Employees
ADD CONSTRAINT check_department CHECK (Department <> '');


---departments table
---In query

SELECT * FROM Departments WHERE Location IN ('Indore', 'Nagpur');

SELECT * FROM Departments WHERE Dept_Name IN ('Legal', 'Sales');

SELECT * FROM Departments WHERE Budget IN (2100000, 2800000, 3500000);

SELECT * FROM Departments WHERE Head IN ('Priya Singh', 'Amitabh Das');

SELECT * FROM Departments WHERE Dept_ID IN (6, 7, 8);

---departments table
---Between query

SELECT * FROM Departments WHERE Budget BETWEEN 3500000 AND 7000000;

SELECT * FROM Departments WHERE Dept_ID BETWEEN 9 AND 10;

SELECT * FROM Departments WHERE Num_Employees BETWEEN 12 AND 16;

SELECT * FROM Departments WHERE Budget BETWEEN 2800000 AND 3200000;

SELECT * FROM Departments WHERE Num_Employees BETWEEN 21 AND 22;


---Departments table
---limit query

SELECT * FROM Departments ORDER BY Budget DESC LIMIT 3;

SELECT * FROM Departments ORDER BY Dept_ID ASC LIMIT 5;

SELECT * FROM Departments ORDER BY Num_Employees DESC LIMIT 2;

SELECT * FROM Departments ORDER BY Budget ASC LIMIT 4;

SELECT * FROM Departments ORDER BY Dept_ID DESC LIMIT 1;

---Departments table 
---Order By query

SELECT * FROM Departments ORDER BY Budget ASC;

SELECT Dept_Name, Num_Employees FROM Departments ORDER BY Num_Employees DESC;

SELECT * FROM Departments ORDER BY Dept_ID ASC;

SELECT * FROM Departments ORDER BY Location, Budget DESC;

SELECT * FROM Departments ORDER BY Head ASC;

---departments table 
---check query

ALTER TABLE Departments
ADD CONSTRAINT check_budget CHECK (Budget >= 500000);

ALTER TABLE Departments
ADD CONSTRAINT check_num_employees CHECK (Num_Employees >= 1);

ALTER TABLE Departments
ADD CONSTRAINT check_deptid CHECK (Dept_ID > 0);

ALTER TABLE Departments
ADD CONSTRAINT check_deptname CHECK (Dept_Name <> '');

ALTER TABLE Departments
ADD CONSTRAINT check_location CHECK (Location <> '');


--- Projects table 
---In query

SELECT * FROM Projects WHERE Project_Name IN ('Helios', 'Atlas');

SELECT * FROM Projects WHERE Budget IN (800000, 950000);

SELECT * FROM Projects WHERE Team_Size IN (5, 6,7);

SELECT * FROM Projects WHERE Project_ID IN (6, 7, 8);

SELECT * FROM Projects WHERE Start_Date IN ('2023-02-20', '2023-03-10');


--- Projects table 
---Between query

SELECT * FROM Projects WHERE Budget BETWEEN 800000 AND 950000;

SELECT * FROM Projects WHERE Team_Size BETWEEN 5 AND 6;

SELECT * FROM Projects WHERE Project_ID BETWEEN 7 AND 8;

SELECT * FROM Projects WHERE Start_Date BETWEEN '2022-02-20' AND '2023-03-10';

SELECT * FROM Projects WHERE End_Date BETWEEN '2022-09-15' AND '2023-9-30';


--- Projects table 
---Limit query

SELECT * FROM Projects ORDER BY Budget DESC LIMIT 800000;

SELECT * FROM Projects ORDER BY Start_Date ASC LIMIT 5;

SELECT * FROM Projects ORDER BY End_Date DESC LIMIT 2;

SELECT * FROM Projects ORDER BY Team_Size ASC LIMIT 4;

SELECT * FROM Projects ORDER BY Project_ID DESC LIMIT 8;

--- Projects table 
---Order By query

SELECT * FROM Projects ORDER BY Budget ASC;

SELECT Project_Name, Team_Size FROM Projects ORDER BY Team_Size DESC;

SELECT * FROM Projects ORDER BY Project_ID ASC;

SELECT * FROM Projects ORDER BY Start_Date, Budget DESC;

SELECT * FROM Projects ORDER BY End_Date ASC;

--- Projects table 
---Check query

ALTER TABLE Projects
ADD CONSTRAINT check_budget CHECK (Budget >= 100000);

ALTER TABLE Projects
ADD CONSTRAINT check_teamsize CHECK (Team_Size >= 1);

ALTER TABLE Projects
ADD CONSTRAINT check_projectid CHECK (Project_ID > 0);

ALTER TABLE Projects
ADD CONSTRAINT check_projectname CHECK (Project_Name <> '');

ALTER TABLE Projects
ADD CONSTRAINT check_startdate CHECK (Start_Date >= '2020-01-01');


---Client table
---In query

SELECT * FROM Client WHERE Country IN ('India', 'USA');

SELECT * FROM Client WHERE Industry IN ('IT Services', 'Finance');

SELECT * FROM Client WHERE Client_Name IN ('AquaPure', 'MediCore');

SELECT * FROM Client WHERE Client_ID IN (21, 22, 23);

SELECT * FROM Client WHERE Credit_Limit IN (400000, 600000, 550000);

---Client table
---Between query

SELECT * FROM Client WHERE Credit_Limit BETWEEN 400000 AND 600000;

SELECT * FROM Client WHERE Client_ID BETWEEN 20 AND 21;

SELECT * FROM Client WHERE Credit_Limit BETWEEN 350000 AND 550000;

SELECT * FROM Client WHERE Credit_Limit BETWEEN 200000 AND 800000 AND Client_ID BETWEEN 20 AND 21;

SELECT * FROM Client WHERE Credit_Limit BETWEEN 450000 AND 600000;

---Client table
---Limit query

SELECT * FROM Client ORDER BY Credit_Limit DESC LIMIT 5;

SELECT * FROM Client ORDER BY Client_ID ASC LIMIT 3;

SELECT * FROM Client ORDER BY Country ASC LIMIT 4;

SELECT * FROM Client ORDER BY Credit_Limit ASC LIMIT 2;

SELECT * FROM Client ORDER BY Client_Name DESC LIMIT 1;

---Client table
---Order By query

SELECT * FROM Client ORDER BY Credit_Limit ASC;

SELECT Client_Name, Industry FROM Client ORDER BY Industry DESC;

SELECT * FROM Client ORDER BY Country ASC;

SELECT * FROM Client ORDER BY Client_ID DESC, Credit_Limit ASC;

SELECT Client_Name, Credit_Limit FROM Client ORDER BY Credit_Limit DESC, Country ASC;

---Client table
---Check query

ALTER TABLE Client
ADD CONSTRAINT check_creditlimit CHECK (Credit_Limit >= 200000);

ALTER TABLE Client
ADD CONSTRAINT check_clientid CHECK (Client_ID > 0);

ALTER TABLE Client
ADD CONSTRAINT check_clientname CHECK (Client_Name <> '');

ALTER TABLE Client
ADD CONSTRAINT check_industry CHECK (Industry <> '');

ALTER TABLE Client
ADD CONSTRAINT check_country CHECK (Country <> '');


---Products table
---In query

SELECT * FROM Products WHERE Category IN ('Electronics', 'Furniture');

SELECT * FROM Products WHERE Supplier IN ('GadgetMart', 'LightHouse');

SELECT * FROM Products WHERE Product_Name IN ('Desk Lamp', 'USB-C Hub');

SELECT * FROM Products WHERE Product_ID IN (6, 7, 8);

SELECT * FROM Products WHERE Price IN (1200, 2500, 1800);

---Products table
---Between query

SELECT * FROM Products WHERE Price BETWEEN 1200 AND 2500;

SELECT * FROM Products WHERE Stock_Qty BETWEEN 60 AND 90;

SELECT * FROM Products WHERE Product_ID BETWEEN 6 AND 7;

SELECT * FROM Products WHERE Price BETWEEN 1200 AND 2500 AND Stock_Qty BETWEEN 250 AND 300;

SELECT * FROM Products WHERE Price BETWEEN 500 AND 3200;

---Products table
---Limit query

SELECT * FROM Products ORDER BY Price DESC LIMIT 5;

SELECT * FROM Products ORDER BY Stock_Qty ASC LIMIT 3;

SELECT * FROM Products ORDER BY Category ASC LIMIT 4;

SELECT * FROM Products ORDER BY Product_ID ASC LIMIT 2;

SELECT * FROM Products ORDER BY Product_Name DESC LIMIT 1;

---Products table
---Order By query

SELECT * FROM Products ORDER BY Price ASC;

SELECT Product_Name, Stock_Qty FROM Products ORDER BY Stock_Qty DESC;

SELECT * FROM Products ORDER BY Product_ID ASC;

SELECT * FROM Products ORDER BY Category ASC, Price DESC;

SELECT Product_Name, Supplier FROM Products ORDER BY Supplier ASC, Price DESC;

---Products table
---Check query

ALTER TABLE Products
ADD CONSTRAINT check_price CHECK (Price > 0);

ALTER TABLE Products
ADD CONSTRAINT check_stockqty CHECK (Stock_Qty >= 0);

ALTER TABLE Products
ADD CONSTRAINT check_productid CHECK (Product_ID > 0);

ALTER TABLE Products
ADD CONSTRAINT check_productname CHECK (Product_Name <> '');

ALTER TABLE Products
ADD CONSTRAINT check_category CHECK (Category <> '');






















