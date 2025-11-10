SELECT
    [Product Name] AS Product,
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Sales
GROUP BY [Product Name]
ORDER BY Total_Profit DESC
LIMIT 10;
-- Top 10 Products By Profit