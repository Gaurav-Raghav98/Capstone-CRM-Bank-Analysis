use bank_data;
with GenderAvgIncome as (
select GeographyID,
       GenderCategory,
       ROUND(avg(EstimatedSalary),2) AS AvgIncome
from customerinfo
       group by GeographyID,GenderCategory
)
select * ,
RANK() over(partition by GeographyID order by AvgIncome desc) as GenderRank
from GenderAvgIncome  
order by GeographyID, GenderRank;     