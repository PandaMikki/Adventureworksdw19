--CLEANSED DIM_CUSTOMERS TABLE--
select 
  c.customerkey as Customerkey, 
  c.firstname as [First Name], 
  c.lastname as [Last Name], 
  c.firstname + ' ' + lastname as [Full Name], 
  CASE c.gender WHEN 'M' THEN 'Male' when 'F' then 'Female' end as Gender, 
  c.DateFirstPurchase as DateFirstPurchase, 
  --,[commutedistance]--
  g.city as [Customer City] --Joined in customer city from geography table--
from 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.geographyKey = c.geographykey 
order by 
  Customerkey asc -- ordered list by customerkey--
