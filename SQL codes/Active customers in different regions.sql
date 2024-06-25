////8.	Find out which geographic region has the highest number of active customers with a tenure greater than 5 years. (SQL)////
USE BANK_DATA;
SELECT 
      c.GeographyID, 
      COUNT(c.CustomerID) as ActiveCustomers
FROM customerinfo c 
JOIN bank_churn b on c.CustomerID = b.CustomerID
WHERE Tenure > 5 AND IsActiveMember = 1
GROUP BY c.GeographyID;

