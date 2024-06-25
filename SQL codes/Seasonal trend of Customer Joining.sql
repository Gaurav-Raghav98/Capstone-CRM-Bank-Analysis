use bank_data;

select
      extract(year FROM Bank_DOJ) AS JoinYear,
      extract(month from Bank_DOJ) AS JoinMonth,
      count(CustomerID) AS TotalCustomers
from customerinfo
group by JoinYear,JoinMonth
order by JoinYear,JoinMonth


