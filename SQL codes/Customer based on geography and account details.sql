use bank_data;
select GeographyLocation,
	case when EstimatedSalary <= 65000 then 'Low'
         when EstimatedSalary <= 130000 then 'Average'
         else 'Good' end as SalaryCategory,
         GenderCategory,
         Age,
         count(CustomerId) as NumOfCustomers
from customerinfo
group by SalaryCategory,GenderCategory,Age,GeographyLocation
order by GeographyLocation,Age,NumOfCustomers;
         