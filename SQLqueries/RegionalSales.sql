SELECT 
    Region, 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Sales
GROUP BY Region
ORDER BY Total_sales DESC;

-- Total Sales By Region