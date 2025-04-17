# Supply Chain Analysis Project

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Tableau](https://img.shields.io/badge/Tableau-Latest-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Latest-yellow)


## Project Overview 🚀

This comprehensive supply chain analytics project, part of the Google Data Analysis Diploma at DEPI, analyzes an advanced IoT-enabled supply chain dataset with real-time tracking and predictive capabilities. The project combines traditional supply chain metrics with modern IoT sensor data and machine learning-based risk assessments.

### Dataset Overview
- **Type**: Real-time IoT-enabled supply chain data
- **Temporal Resolution**: Hourly timestamps
- **Spatial Coverage**: GPS tracking across multiple regions
- **IoT Integration**: Temperature sensors, vehicle telemetry
- **Risk Assessment**: Dynamic risk classification and prediction
- **Monitoring Scope**: Vehicle, inventory, environmental, and human factors

### Key Data Features
1. **Real-time Tracking**
   - GPS location tracking (latitude/longitude)
   - Vehicle monitoring and telemetry
   - Route risk assessment

2. **Operational Metrics**
   - Inventory levels
   - Order fulfillment status
   - Loading/unloading times
   - Equipment availability

3. **Environmental Monitoring**
   - IoT temperature readings
   - Weather condition severity
   - Traffic congestion levels

4. **Performance Indicators**
   - Supplier reliability scores
   - Driver behavior metrics
   - Fatigue monitoring
   - Delivery time variations

5. **Risk Analytics**
   - Dynamic risk classification
   - Disruption likelihood scores
   - Delay probability assessment
   - Route risk evaluation

### Key Objectives
- Real-time supply chain performance monitoring
- Predictive risk assessment and mitigation
- Route optimization and delivery time prediction
- IoT-based inventory and condition monitoring
- Driver safety and performance analysis
- Environmental impact tracking
- Cost optimization across transportation modes

## Table of Contents 📑
1. [Project Structure](#project-structure)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Installation and Setup](#installation-and-setup)
5. [Usage Guide](#usage-guide)
6. [Project Phases](#project-phases)
7. [Data Governance](#data-governance)

## Project Structure 📂
```
supply-chain-analysis/
├── Data/                  # Raw and processed datasets
├── Notebooks/            # Jupyter notebooks for analysis
├── docs/                 # Project documentation
├── Reports/             # Analysis reports and figures
├── src/                 # Source code
└── Visualization/       # Dashboards
```

## Features ✨

### Analytics Capabilities
- **Real-time Monitoring**
  - Live GPS tracking and route analysis
  - Dynamic inventory level monitoring
  - IoT sensor data processing
  - Environmental condition tracking

- **Predictive Analytics**
  - Risk classification and prediction
  - Delay probability assessment
  - ETA variation analysis
  - Disruption likelihood forecasting

- **Performance Analysis**
  - Driver behavior scoring
  - Supplier reliability assessment
  - Equipment utilization tracking
  - Delivery time optimization

### Visualization Features
- Interactive GPS tracking maps
- Real-time KPI dashboards
- Risk assessment heat maps
- Performance metric scorecards
- Trend analysis charts
- Predictive analytics visualizations

### Technical Implementation
- IoT data integration pipeline
- Real-time data processing system
- Machine learning-based risk assessment
- Interactive visualization dashboards
- GPS tracking integration
- Predictive modeling capabilities

## Tools and Technologies
- **Google Colab** for Python scripting.
- **MySQL Workbench** for database management.
- **Python Libraries:** pandas, matplotlib.

## Installation and Setup 🔧

### Prerequisites
- Python 3.8+
- MySQL 8.0+
- Tableau Public/Desktop
- PowerBI
- Git

### Setup Steps

1. Clone the repository:
```bash
git clone https://github.com/ZiadMasoud/Supply-chain-analysis-DEPI.git
cd Supply-chain-analysis-DEPI
```

2. Install required Python packages:
```bash
pip install -r requirements.txt
```

## Usage Guide 📖

### Data Processing Pipeline
1. Real-time data ingestion from IoT devices
2. GPS and sensor data processing
3. Risk assessment calculations
4. Performance metric computation

### Analysis Workflows
1. **Real-time Monitoring**
   - GPS tracking visualization
   - IoT sensor data analysis
   - Risk level assessment

2. **Predictive Analytics**
   - Delay probability forecasting
   - Risk classification
   - ETA prediction

3. **Performance Analysis**
   - Driver behavior assessment
   - Route efficiency analysis
   - Equipment utilization tracking

### Interactive Dashboards
Access real-time visualizations for:
- Live GPS tracking
- IoT sensor readings
- Risk assessment maps
- Performance scorecards
- Predictive analytics
- Environmental monitoring

### Data Preprocessing
1. Navigate to `Notebooks/Data_Preprocessing.ipynb`
2. Update database connection parameters if needed
3. Run all cells sequentially
4. Verify the output in `Data/cleaned_supply_chain_logistics_dataset.csv`

### Analysis
1. Open `Notebooks/Analysis_Questions.ipynb`
2. Follow the structured analysis sections:
   - Inventory Analysis
   - Shipping Optimization
   - Supplier Performance
   - Customer Demographics
   - Product Category Analysis


## Phases and Deliverables

### Week 1: Data Cleaning and Preprocessing
**Tasks:**
- Import the CSV file into a MySQL database.
- Clean and preprocess the data using Python (handle missing values, duplicates, and incorrect data types).
- Save the cleaned dataset as a CSV file.

**Deliverables:**
- `cleaned_supply_chain_data.csv`
- Python notebook documenting the preprocessing steps.

**Tools:**
- Google Colab, MySQL Workbench, pandas, matplotlib.

### Week 2: Analysis Questions Phase
**Tasks:**
- Determine key business questions to analyze (e.g., the impact of product category on revenue, which supplier contributes the most to profit margins).
- Perform exploratory data analysis (EDA).

**Deliverables:**
- Python notebook documenting EDA and results.
- A list of analysis questions relevant to decision-makers.

**Tools:**
- Google Colab, pandas, matplotlib, seaborn.

### Week 3: Forecasting Questions Phase
**Tasks:**
- Identify trends and patterns in the dataset.
- Build forecasting models to answer questions such as:
  - What is the expected revenue for the next quarter?
  - Which products are likely to experience demand growth?

**Deliverables:**
- Python notebook with forecasting models and visualizations.

**Tools:**
- Google Colab, pandas, scikit-learn, matplotlib.

### Week 4: Visualization Dashboard and Final Presentation
**Tasks:**
- Create an interactive dashboard to showcase key insights.
- Prepare a final report summarizing data cleaning, analysis, forecasting results, and business recommendations.

**Deliverables:**
- Tableau dashboard file.
- Final report and presentation.

**Tools:**
- Tableau Public, Google Colab, pandas, matplotlib.

## Data Governance 📊

### Dataset Specifications
- **Primary Dataset**: `dynamic_supply_chain_logistics_dataset.csv`
- **Time Range**: Hourly data from January 2021
- **Key Metrics**: 25 real-time supply chain indicators
- **Data Types**: Numerical, categorical, timestamps, GPS coordinates
- **Update Frequency**: Hourly updates

### Data Quality Controls
- Real-time validation of GPS coordinates
- Temperature range validation (-10°C to +40°C)
- Risk score normalization (0-10 scale)
- Automated outlier detection
- Missing data handling protocols

### Security & Privacy
- GPS data anonymization
- Driver behavior score aggregation
- Secure IoT data transmission
- Compliance with data protection regulations

### Backup & Recovery
- Hourly data snapshots
- Automated backup procedures
- Data versioning system
- Recovery point objectives (RPO): 1 hour
- Recovery time objectives (RTO): 4 hours
