SELECT 
    STRFTIME('%Y-%m', [Order Date]) AS Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales,
    ROUND(SUM(Profit), 2) AS Monthly_Profit
FROM Sales
GROUP BY Month
ORDER BY Month ASC;
-- Monthly Sales Trend