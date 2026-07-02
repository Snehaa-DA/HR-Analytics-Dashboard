CREATE DATABASE hr_analytics;
USE hr_analytics;
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM educationlevel;
SELECT COUNT(*) FROM ratinglevel;
SELECT COUNT(*) FROM satisfiedlevel;
SELECT Gender, COUNT(*) AS TotalEmployees
FROM employee
GROUP BY Gender;
SELECT *
FROM employee
LIMIT 10;
SELECT Department,
       COUNT(*) AS EmployeeCount
FROM employee
GROUP BY Department
ORDER BY EmployeeCount DESC;
SELECT Gender,
       COUNT(*) AS EmployeeCount
FROM employee
GROUP BY Gender
ORDER BY EmployeeCount DESC;
SELECT Department,
       ROUND(AVG(Age),2) AS AverageAge
FROM employee
GROUP BY Department
ORDER BY AverageAge DESC;
SELECT BusinessTravel,
       COUNT(*) AS Employees
FROM employee
GROUP BY BusinessTravel;
SELECT
MIN(Age) AS Youngest,
MAX(Age) AS Oldest,
ROUND(AVG(Age),2) AS AverageAge
FROM employee;
DESCRIBE employee;
SELECT COUNT(*) AS TotalEmployees
FROM employee;
SHOW COLUMNS FROM employee;
SELECT Attrition,
       COUNT(*) AS Employees
FROM employee
GROUP BY Attrition;
SELECT Department,
       Attrition,
       COUNT(*) AS Employees
FROM employee
GROUP BY Department, Attrition
ORDER BY Department;
SELECT JobRole,
       COUNT(*) AS Employees
FROM employee
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Employees DESC;
SELECT Department,
       ROUND(AVG(Salary),2) AS AvgSalary
FROM employee
GROUP BY Department
ORDER BY AvgSalary DESC;
SELECT OverTime,
       Attrition,
       COUNT(*) AS Employees
FROM employee
GROUP BY OverTime, Attrition;
SELECT Attrition,
       ROUND(AVG(YearsAtCompany),2) AS AvgYears
FROM employee
GROUP BY Attrition;
SELECT Department,
       COUNT(*) AS EmployeesLeft
FROM employee
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY EmployeesLeft DESC;
SELECT JobRole,
       COUNT(*) AS EmployeesLeft
FROM employee
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY EmployeesLeft DESC;
SELECT OverTime,
       Attrition,
       COUNT(*) AS Employees
FROM employee
GROUP BY OverTime, Attrition;
SELECT Department,
       ROUND(AVG(Salary),2) AS AvgSalary
FROM employee
GROUP BY Department
ORDER BY AvgSalary DESC;
