////2.	Identify the top 5 customers with the highest Estimated Salary in the last quarter of the year. (SQL)////
use BANK_DATA
set SQL_SAFE_UPDATES = 0;
select date_format(str_to_date(Bank_DOJ,'%m/%d/%y'),'%d-%m-%Y') AS BankDOJ
FROM customerinfo;
SELECT CustomerID, Surname, EstimatedSalary
FROM customerinfo
WHERE quarter(BankDOJ) = 4
ORDER BY EstimatedSalary DESC
LIMIT 5;

