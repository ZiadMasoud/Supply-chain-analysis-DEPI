use supply_chain;

SELECT Lead_Times, AVG(Stock_Levels) AS Avg_Stock
FROM Supply_Chain
GROUP BY Lead_Times;

SELECT Supplier_Name, MIN(Lead_Times) AS Min_Lead_Time
FROM Supply_Chain
GROUP BY Supplier_Name
ORDER BY Min_Lead_Time;

SELECT Shipping_Carriers, AVG(Shipping_Times) AS Avg_Shipping_Time
FROM Supply_Chain
GROUP BY Shipping_Carriers
ORDER BY Avg_Shipping_Time;

SELECT Supplier_Name, AVG(Defect_Rates) AS Avg_Defect_Rate
FROM Supply_Chain
GROUP BY Supplier_Name
ORDER BY Avg_Defect_Rate;

SELECT Routes, Shipping_Carriers, AVG(Shipping_Times) AS Avg_Shipping_Time
FROM Supply_Chain
GROUP BY Routes, Shipping_Carriers
ORDER BY Avg_Shipping_Time DESC;

SELECT Availability, AVG(Number_of_Products_Sold) AS Avg_Sales_Volume
FROM Supply_Chain
GROUP BY Availability
ORDER BY Availability;

SELECT SKU, Customer_Demographics, SUM(Number_of_Products_Sold) AS Total_Sales
FROM Supply_Chain
GROUP BY SKU, Customer_Demographics
ORDER BY SKU, Total_Sales DESC;

WITH RankedProducts AS (
    SELECT 
        SKU, 
        Customer_Demographics, 
        SUM(Number_of_Products_Sold) AS Total_Sales,
        RANK() OVER (PARTITION BY Customer_Demographics ORDER BY SUM(Number_of_Products_Sold) DESC) AS Sales_Rank
    FROM Supply_Chain
    GROUP BY SKU, Customer_Demographics
)
SELECT * FROM RankedProducts WHERE Sales_Rank = 1;

SELECT 
    SKU, 
    COUNT(*) AS Stockout_Occurrences 
FROM Supply_Chain
WHERE Stock_Levels = 0
GROUP BY SKU
ORDER BY Stockout_Occurrences DESC;

SELECT 
    Lead_Times, 
    COUNT(*) AS Stockout_Occurrences
FROM Supply_Chain
WHERE Stock_Levels = 0
GROUP BY Lead_Times
ORDER BY Lead_Times;

SELECT 
    SKU, 
    AVG(Order_Quantities) AS Avg_Reorder_Quantity,
    AVG(Stock_Levels) AS Avg_Stock_Levels,
    AVG(Transportation_Costs) AS Avg_Inventory_Cost
FROM Supply_Chain
WHERE Stock_Levels < 10  -- Adjust threshold for stockout risk
GROUP BY SKU
ORDER BY Avg_Inventory_Cost ASC;

SELECT 
    Location, 
    AVG(Lead_Times) AS Avg_Lead_Time
FROM Supply_Chain
GROUP BY Location
ORDER BY Avg_Lead_Time DESC;

SELECT 
    Product_Type, 
    AVG(Manufacturing_Lead_Time) AS Avg_Manufacturing_Lead_Time
FROM Supply_Chain
GROUP BY Product_Type
ORDER BY Avg_Manufacturing_Lead_Time DESC;

SELECT 
    Supplier_Name, 
    AVG(Defect_Rates) AS Avg_Defect_Rate
FROM Supply_Chain
GROUP BY Supplier_Name
ORDER BY Avg_Defect_Rate ASC
LIMIT 10;

SELECT 
    Product_Type, 
    Supplier_Name, 
    AVG(Manufacturing_Costs) AS Avg_Manufacturing_Cost
FROM Supply_Chain
GROUP BY Product_Type, Supplier_Name
ORDER BY Avg_Manufacturing_Cost DESC;

SELECT 
    Production_Volumes, 
    AVG(Defect_Rates) AS Avg_Defect_Rate
FROM Supply_Chain
GROUP BY Production_Volumes
ORDER BY Production_Volumes;

SELECT 
    Product_Type, 
    SKU, 
    AVG(Shipping_Times) AS Avg_Shipping_Time
FROM Supply_Chain
GROUP BY Product_Type, SKU
ORDER BY Avg_Shipping_Time DESC;

SELECT 
    Transportation_Modes, 
    AVG(Shipping_Costs) AS Avg_Shipping_Cost
FROM Supply_Chain
GROUP BY Transportation_Modes
ORDER BY Avg_Shipping_Cost DESC;

SELECT 
    Product_Type, 
    Transportation_Modes, 
    AVG(Shipping_Costs) AS Avg_Shipping_Cost
FROM Supply_Chain
GROUP BY Product_Type, Transportation_Modes
ORDER BY Product_Type, Avg_Shipping_Cost ASC;

SELECT 
    Customer_Demographics, 
    SUM(Number_of_Products_Sold) AS Total_Products_Purchased
FROM Supply_Chain
GROUP BY Customer_Demographics
ORDER BY Total_Products_Purchased DESC;

SELECT 
    Product_Type, 
    Location, 
    SUM(Number_of_Products_Sold) AS Total_Sales
FROM Supply_Chain
GROUP BY Product_Type, Location
ORDER BY Location, Total_Sales DESC;

SELECT 
    Customer_Demographics, 
    AVG(Shipping_Times) AS Avg_Shipping_Time, 
    AVG(Shipping_Costs) AS Avg_Shipping_Cost, 
    SUM(Number_of_Products_Sold) AS Total_Purchases
FROM Supply_Chain
GROUP BY Customer_Demographics
ORDER BY Total_Purchases DESC;

SELECT 
    Lead_Times, 
    AVG(Revenue_Generated) AS Avg_Revenue
FROM Supply_Chain
GROUP BY Lead_Times
ORDER BY Lead_Times;

SELECT 
    Supplier_Name, 
    AVG(Manufacturing_Costs) AS Avg_Manufacturing_Cost, 
    AVG(Defect_Rates) AS Avg_Defect_Rate
FROM Supply_Chain
GROUP BY Supplier_Name
ORDER BY Avg_Manufacturing_Cost ASC, Avg_Defect_Rate ASC;
SELECT 
    Shipping_Carriers, 
    AVG(Shipping_Costs) AS Avg_Shipping_Cost, 
    AVG(Shipping_Times) AS Avg_Shipping_Time
FROM Supply_Chain
GROUP BY Shipping_Carriers
ORDER BY Avg_Shipping_Cost ASC, Avg_Shipping_Time ASC;

SELECT 
    Transportation_Costs, 
    AVG(Revenue_Generated - Transportation_Costs) AS Avg_Profit
FROM Supply_Chain
GROUP BY Transportation_Costs
ORDER BY Transportation_Costs;


























