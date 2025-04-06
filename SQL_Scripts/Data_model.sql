-- Create a new database
CREATE DATABASE supply_chain_db;
USE supply_chain_db;

-- Create a table for your supply chain data
CREATE TABLE supply_chain_data (
    product_type VARCHAR(50),
    SKU VARCHAR(50) PRIMARY KEY,
    price DECIMAL(10 , 2 ),
    availability INT,
    number_of_products_sold INT,
    revenue_generated DECIMAL(12 , 2 ),
    customer_demographics VARCHAR(50),
    stock_levels INT,
    lead_times INT,
    order_quantities INT,
    shipping_times INT,
    shipping_carriers VARCHAR(50),
    shipping_costs DECIMAL(10 , 2 ),
    supplier_name VARCHAR(100),
    location VARCHAR(50),
    supplier_lead_time INT,
    production_volumes INT,
    manufacturing_lead_time INT,
    manufacturing_costs DECIMAL(10 , 2 ),
    inspection_results VARCHAR(50),
    defect_rates DECIMAL(5 , 3 ),
    transportation_modes VARCHAR(50),
    routes VARCHAR(50),
    costs DECIMAL(10 , 2 )
);

SELECT * FROM supply_chain_data;

-- Check for duplicate SKUs (if any)
SELECT SKU, COUNT(*) AS count
FROM supply_chain_data
GROUP BY SKU
HAVING count > 1;

-- Check unique values in a categorical column (e.g., Product type)
SELECT DISTINCT product_type
FROM supply_chain_data;

SELECT 
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    AVG(price) AS avg_price,
    MIN(revenue_generated) AS min_revenue,
    MAX(revenue_generated) AS max_revenue,
    AVG(revenue_generated) AS avg_revenue
FROM supply_chain_data;

