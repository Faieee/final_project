# Technologies Used
## Data Cleaning and Analysis
Initially we performed a preliminary exploration of the Census dataset in Jupyter Notebook and PostgresSQL. We extracted some tables and statistical findings, but felt we needed to drop several columns to be able to develop better visualizations and statistical findings, so we created adult_c2.data, adult_c2.names, and census_data_education csv. Further analysis and visualizations were completed using Python libraries and VBA.

## Database Storage
We merged PostgresSQL and our Jupyter Notebooks in order to extrapulate and form the tables we were interested in analyzing. Using PostgresSQL, we created a schema and uploaded the census_data.csv, and after exploratory data analysis created census_data_EDA.ipynb and census_data_EDA_rev2.ipynb. In another schema, we uploaded adult_c2.data.csv and wanted to look specifically at adult education level and capital gain. We are still working on this notebook under data_c2.ipynb.
We may integrate Flask to display the data.

## Machine Learning
SciKitLearn is the Machine Learning library we used to create a classifier. We found that using balanced random forest produced the best results. We also trained the data by using naive random oversampling, smote oversampling, ClusterCentroids resampler, SMOTEENN, EasyEnsembleClassifier, BalancedRandomForestClassifier. 

## Dashboard
We will be using Tableau template to display an interactive dashboard of our analysis and thought process. 
