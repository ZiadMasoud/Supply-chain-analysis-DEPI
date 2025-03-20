-- Create a new database
CREATE DATABASE supply_chain_db;
USE supply_chain_db;

-- Create suppliers table
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    location VARCHAR(50),
    contact_person VARCHAR(100),
    contact_email VARCHAR(100)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_description VARCHAR(255)
);

-- Create shipping table
CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY AUTO_INCREMENT,
    shipping_carriers ENUM('UPS', 'FedEx', 'DHL', 'USPS'),
    routes VARCHAR(50),
    shipping_costs DECIMAL(10, 2),
    shipping_times INT
);

-- Create locations table
CREATE TABLE locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(50) UNIQUE
);

-- Create the main supply chain data table
CREATE TABLE supply_chain_data (
    product_type VARCHAR(50),
    SKU VARCHAR(50) PRIMARY KEY,
    product_id INT,
    price DECIMAL(10, 2) CHECK (price >= 0),
    availability BOOLEAN,
    number_of_products_sold INT,
    revenue_generated DECIMAL(12, 2),
    customer_demographics VARCHAR(50),
    stock_levels INT CHECK (stock_levels >= 0),
    lead_times INT,
    order_quantities INT,
    shipping_id INT,
    supplier_id INT,
    supplier_lead_time INT,
    production_volumes INT,
    manufacturing_lead_time INT,
    manufacturing_costs DECIMAL(10, 2),
    inspection_results VARCHAR(50),
    defect_rates DECIMAL(5, 3),
    transportation_modes VARCHAR(50),
    costs DECIMAL(10, 2),
    order_date DATE,
    shipment_date DATETIME,
    delivery_date DATE,
    manufacturing_location_id INT,
    shipping_location_id INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (shipping_id) REFERENCES shipping(shipping_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (manufacturing_location_id) REFERENCES locations(location_id),
    FOREIGN KEY (shipping_location_id) REFERENCES locations(location_id)
);



-- Select all data from the main table
SELECT * FROM supply_chain_data;

-- Check for duplicate SKUs (if any)
SELECT SKU, COUNT(*) AS count
FROM supply_chain_data
GROUP BY SKU
HAVING count > 1;

-- Check unique values in a categorical column (e.g., Product type)
SELECT DISTINCT product_type
FROM supply_chain_data;

-- Basic descriptive statistics for numerical columns
SELECT
    MIN(price) AS min_price,
    MAX(price) AS max_price,
    AVG(price) AS avg_price,
    MIN(revenue_generated) AS min_revenue,
    MAX(revenue_generated) AS max_revenue,
    AVG(revenue_generated) AS avg_revenue
FROM supply_chain_data;