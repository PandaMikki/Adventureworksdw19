--cleansed fact_internet sales table--
select
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
[SalesOrderNumber],
[SalesAmount]
from
[dbo].[FactInternetSales]
where
LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -4 -- ensures we always only bring two years of date from extraction.
ORDER BY
OrderDateKey asc