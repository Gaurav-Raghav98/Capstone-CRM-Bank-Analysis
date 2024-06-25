////7.	Segment the customers based on their credit score and identify the segment with the highest exit rate. (SQL)////
use BANK_DATA;
WITH CreditScoreSegments as (
select CustomerID,
CASE WHEN CreditScore < 580 then 'Poor'
	 WHEN CreditScore between 580 and 669 then 'Fair'
     WHEN CreditScore between 670 and 739 then 'Good'
     WHEN CreditScore between 740 and 799 then 'Very Good'
     ELSE 'Exceptional' END AS Credit_Segments
     from Bank_Churn b 
     )
     select Credit_segments,
            avg(Exited)*100 as Exit_Rate
	from CreditScoreSegments cs
    join Bank_Churn b on cs.CustomerID = b.CustomerID
    group by Credit_Segments
    order by Exit_Rate desc;
            
