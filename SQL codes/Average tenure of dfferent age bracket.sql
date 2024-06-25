////16.	Using SQL, write a query to find out the average tenure of the people who have exited in each age bracket (18-30, 30-50, 50+)./////
use bank_data;
select 
      case 
      when c.Age between 18 and 30 then '18-30'
      when c.Age between 30 and 50 then '30-50'
      else '51+' 
      end as AgeBracket,
      avg(b.Tenure) as AvgTenure
from customerinfo c 
join bank_churn b on c.customer_id = b.CustomerID
where Exited = 1
group by AgeBracket
order by AgeBracket;