# %% [markdown]
# # Import Libraries

# %%
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# %% [markdown]
# # Features

# %% [markdown]
# ### Description of the Data ####
# 
# The provided dataset, `supply_chain_data.csv`, contains detailed information about various products in a supply chain, including their types, stock-keeping units (SKUs), pricing, availability, sales, revenue, customer demographics, stock levels, lead times, order quantities, shipping details, supplier information, manufacturing details, and quality inspection results. The dataset is structured with 100 rows (products) and 24 columns (attributes) for each product.
# 
# #### Key Columns and Their Descriptions #####
# 
# 1. Product type: The category of the product (e.g., haircare, skincare, cosmetics).
# 2. SKU: The unique identifier for each product.
# 3. Price: The price of the product.
# 4. Availability: The current stock availability of the product.
# 5. Number of products sold: The quantity of the product sold.
# 6. Revenue generated: The total revenue generated from the product.
# 7. Customer demographics: The gender or demographic group of the customers (e.g., Male, Female, Non-binary, Unknown).
# 8. Stock levels: The current stock levels of the product.
# 9. Lead times: The time taken from placing an order to receiving it.
# 10. Order quantities: The quantity of products ordered.
# 11. Shipping times: The time taken to ship the product.
# 12. Shipping carriers: The carrier used for shipping (e.g., Carrier A, Carrier B, Carrier C).
# 13. Shipping costs: The cost associated with shipping the product.
# 14. Supplier name: The name of the supplier providing the product.
# 15. Location: The location of the supplier (e.g., Mumbai, Delhi, Bangalore, Chennai, Kolkata).
# 16. Lead time: The time taken by the supplier to deliver the product.
# 17. Production volumes: The volume of products produced.
# 18. Manufacturing lead time: The time taken to manufacture the product.
# 19. Manufacturing costs: The cost associated with manufacturing the product.
# 20. Inspection results: The result of quality inspection (e.g., Pass, Fail, Pending).
# 21. Defect rates: The percentage of defective products.
# 22. Transportation modes: The mode of transportation used (e.g., Road, Air, Sea, Rail).
# 23. Routes: The route taken for transportation (e.g., Route A, Route B, Route C).
# 24. Costs: The total costs associated with the product (likely transportation or logistics costs).

# %% [markdown]
# ## Read Dataset

# %%
file_path = "supply_chain_data.csv"
df = pd.read_csv(file_path)

# %% [markdown]
# # Dataset Exploration

# %%
# Display basic information about the dataset
df_info = df.info()
df_head = df.head()

df_info, df_head

# %% [markdown]
# # Overview
# 
# 1. **Rows & Columns**: 100 rows × 24 columns.
# 2. **Data Types**:
#     - **Numerical (float64, int64)**: Price, Availability, Revenue, Lead Times, Manufacturing Costs, etc.
#     - **Categorical (object)**: Product type, SKU, Customer demographics, Shipping carriers, etc.
# 3. **No Missing Values**: Every column has 100 non-null values.

# %%
df.head()

# %% [markdown]
# #  Data Cleaning & Preprocessing

# %% [markdown]
# ## Duplicate Check

# %%
# Check for duplicate 
df.duplicated().sum()

# %% [markdown]
# ## Categorical Consistency

# %%
# Check unique values in categorical columns to find inconsistencies
categorical_columns = ["Product type", "Customer demographics", "Shipping carriers", "Location", "Inspection results", "Transportation modes", "Routes"]
unique_values = {col: df[col].unique() for col in categorical_columns}
unique_values

# %% [markdown]
# # Findings So Far
# 
# - **No Duplicate SKUs**: Each product has a unique identifier.
# - **Consistent Categorical Values**: No spelling errors or inconsistencies in labels.
# - **Clean Structure**: The dataset is well-formatted, with clearly defined categories.

# %% [markdown]
# ## Check for Outliers

# %%
# Select numerical columns to check for outliers
num_columns = ["Price", "Revenue generated", "Lead times", "Defect rates", "Shipping costs"]

# Generate box plots for numerical columns
plt.figure(figsize=(12, 6))
df[num_columns].boxplot()
plt.xticks(rotation=40)
plt.title("Box Plot of Key Num Columns to Detect Outliers")
plt.show()

# statistical summary
df[num_columns].describe()

# %% [markdown]
# ### Outlier Analysis Findings
# 
# - **Price**: No extreme values; range is reasonable (1.7 to 99.17).
# - **Revenue**: Distributed between 1,061 and 9,866, which aligns with different product categories.
# - **Lead Times**: Range (1 to 30 days) is realistic.
# - **Defect Rates**: No extreme values (0.018 to 4.94%).
# - **Shipping Costs**: No extreme values (1.01 to 9.92).
# 
# ✅ No significant outliers need removal.

# %% [markdown]
# ## Exporting the Cleaned Data

# %%
cleaned_file_path = "cleaned_supply_chain_data.csv"
df.to_csv(cleaned_file_path, index=False)

print(f"Cleaned data exported to {cleaned_file_path}")


