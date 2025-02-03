create database assignment;

use assignment;

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Employees (EmpID, EmpName, Location) VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Ravi', 'Chennai'),
(3, 'Nina', 'Pune'),
(4, 'Kiran', 'Hyderabad'),
(5, 'Sanya', 'Bangalore');



CREATE TABLE Employee_Performance (
    EmpID INT,
    EmpName VARCHAR(50),
    PerformanceScore INT,
    Age INT
);

INSERT INTO Employee_Performance (EmpID, EmpName, PerformanceScore, Age) VALUES
(1, 'Amit', 85, 20),
(2, 'Ravi', 70, 22),
(3, 'Nina', 95, 19),
(4, 'Kiran', 88, 21),
(5, 'Sanya', 92, 18);

CREATE VIEW EmployeeDetails AS
SELECT EmpName, Location FROM Employees
WHERE EmpID < 5;

CREATE VIEW EmployeePerformance AS
SELECT EP.EmpID, E.EmpName, E.Location, EP.PerformanceScore
FROM Employees E, Employee_Performance EP
WHERE E.EmpName = EP.EmpName;

SELECT * FROM EmployeeDetails;
SELECT * FROM EmployeePerformance;

output:-

1	Amit	Mumbai	85
2	Ravi	Chennai	70
3	Nina	Pune	95
4	Kiran	Hyderabad	88
5	Sanya	Bangalore	92
