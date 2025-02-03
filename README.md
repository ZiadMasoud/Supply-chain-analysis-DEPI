# CAI2_DAT1_S2 – Data Analysis Final Project

## Project Overview
This project is part of the final assessment for the Google Data Analysis Diploma at DEPI. It analyzes a supply chain dataset to extract business insights and support decision-making through data cleaning, analysis, forecasting, and visualization.

## Table of Contents
1. [Project Overview](#project-overview)
2. [Phases and Deliverables](#phases-and-deliverables)
3. [Tools and Technologies](#tools-and-technologies)
4. [Installation and Setup](#installation-and-setup)
5. [Usage](#usage)

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

## Tools and Technologies
- **Google Colab** for Python scripting.
- **MySQL Workbench** for database management.
- **Tableau Public** for creating dashboards.
- **Python Libraries:** pandas, matplotlib, seaborn, scikit-learn, mysql-connector-python.

## Installation and Setup
Clone the repository and install dependencies:
```bash
git clone https://github.com/yourusername/CAI2_DAT1_S2---Data-Analysis---Final_Project.git
cd CAI2_DAT1_S2---Data-Analysis---Final_Project
pip install -r requirements.txt
```
## Usage
- **Data Cleaning**: Open notebooks/01_data_preprocessing.ipynb in Google Colab to run the data cleaning process.
- **Analysis**: Refer to notebooks/02_analysis_questions.ipynb for exploratory data analysis.
- **Forecasting**: Run notebooks/03_forecasting.ipynb to see forecasting models in action.
- **Dashboard**: The Tableau dashboard file is available in the reports folder.
