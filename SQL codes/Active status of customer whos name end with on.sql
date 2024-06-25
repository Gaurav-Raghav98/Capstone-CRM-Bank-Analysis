//////26.	Write the query to get the customer IDs, their last name, 
whether they are active or not for the customers whose surname ends with “on”#--------////

SELECT b.CustomerID, c.Surname,
case when b.IsActiveMember = 1 then 'Active' 
else 'InActive' end as ActiveStatus
from customerinfo c
join bank_churn b on c.CustomerId = b.CustomerID
where c.Surname regexp 'on$' 
order by c.Surname;