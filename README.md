# 1994 Census Adult Dataset Project ~ presented by the Fab 5

## Anton, Amanda, Elise, Sharon, and Lina

<p align="center">
  <img width="1000" height="200" src="https://github.com/Faieee/final_project/blob/main/static/images/AvatarsHorizontal.png">
</p>

## Modeling and Forecasting Income Inequality in the United States

### Topic & Data Source
The dataset selected was derived from the Census.gov 1994 Adult Dataset, which looks at whether participants earn less or more than $50,000 per year. The dataset can be found on UCI Machine Learning Repository: 
https://archive.ics.uci.edu/ml/datasets/census+income 

Although the Census delays the publication of the adult dataset to protect the privacy of the respondents, we are interested in comparing the 1994 publication to the present day, even in the absence of a more current comparison dataset. In the U.S., an income of $50,000 in 1994 is equivalent to approximately $100,000 today, as described in https://www.in2013dollars.com/us/inflation/1994?amount=50000. The annual income disparity between the rich and the poor is a hotly debated topic in the political arena and communities and households. Consequently, we are curious to see how and if any of the variables collected in this survey impact income levels. Additionally, we would like to see if a trend can be measured and used to practice machine learning problems such as classification. One limitation of this survey we noticed right away was the lack of a variable for "inherited wealth." However, the survey does collect the variable "capital gain," which could be a potential proxy.

**List of columns from the 1994 Census dataset:** 
- **Column A = the participant ID number.**
- **Column B =  age:** the respondent’s age as an integer;
- **Column C = workclass:** Pertains to their sector of employment or independent contractor status (Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked).
- **Column D = fnlwgt:** how common is this respondent in the general population?  The final weight is an approximate number of people in the general population that are believed to be represented by this respondent.
- **Column E = education:** the highest level of education received by the respondent in nominal categories (Preschool, 1st-4th, 5th-6th, 7th-8th,  9th, 10th, 11th, 12th, HS-grad, Some-college, Assoc-voc, Assoc-acdm, Bachelors, Masters, Prof-school, Doctorate.)
- **Column F =  education_num:** pertains to the highest level of education in numerical form, which was adjusted for the fact that the preschool-educated respondents had to be placed at a “1,” which then “bumped up” the numbering for the other educational attainments, given that preschool could not have been an integer less than 0 if 1st grade had been the “1.”
- **Column G = marital_status:** Pertains to the marital status of an individual. For example, Married-civ-spouse means a civilian spouse, and Married-AF-spouse means a spouse in the Armed Forces. These nominal categories are Married-civ-spouse, Married-AF-spouse, Married-spouse-absent, Separated, Divorced, Widowed, and Never-married.
- **Column H = occupation:** tTis represents the type of job held by the respondent.  These include: Craft-repair, Other-service, Sales, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces, Tech-support, Exec-managerial, and Prof-specialty.
- **Column I = relationship:** This may duplicate the meaning of the marital status column, such as if the respondent is a Husband. The options in this group are very similar. They include Husband, Wife, Unmarried, Own-child, Not-in-family, and Other-relative.
- **Column J = race:** This describes the respondent’s race, such as: Amer-Indian-Eskimo, Asian-Pac-Islander, Black, White, and Other.
- **Column K = sex:** This represents the biological sex as either Male or female.
- **Column L =  capital_gain:** Capital gains refer to the profit from selling property or an investment. The respondent may have earned money from something other than employment. It is an integer greater than or equal to 0.
- **Column M = capital_loss:** Capital loss is the opposite of capital gains—the respondent lost money from some property or investment.  It is also an integer greater than or equal to 0.
- **Column N = hours_per_week:** This is the workweek of the respondent as a continuous number.
- **Column O = native_country:** This is the respondent’s country of origin. The Census made spelling errors, which we keep until they can be cleaned. For example, Hong should say Hong-Kong, Trinadad should say Trinidad, Holand should say Holland, and Columbia should say Colombia. In addition, we do not know what South means. South could represent either South Korea or South Africa. We do not have reason to think it means South Sudan because it is 1994 data. For now, these categories include Cambodia, Canada, China, Columbia, Cuba, Dominican-Republic, Ecuador, El-Salvador, England, France, Germany, Greece, Guatemala, Haiti, Holand-Netherlands, Honduras, Hong, Hungary, India, Iran, Ireland, Italy, Jamaica, Japan, Laos, Mexico, Nicaragua, Outlying-US(Guam-USVI-etc), Philippines, Poland, Portugal, Puerto-Rico, Scotland, South, Taiwan, Thailand, Trinadad&Tobago, Peru, United-States, Vietnam, and Yugoslavia 
- **Column P = income:** his represents whether the respondent earns more or less than $50,000 annually, using logic: <= 50K or >50K.

### Questions
We hope to answer the questions of which variables lead to higher income levels and how 1994 income is comparable to today. Regarding machine learning modeling, we must focus on the United States data rather than the world data because there will not be enough data points to include the other countries. We would look at the U.S. data for the machine learning component, but we may look at the world data for the database component.

**Possible Hypotheses:**
1. Higher age will be likely to yield higher income level over $50K.

![age_boxplot](https://user-images.githubusercontent.com/68654746/199134388-9dcec6d1-b5b2-418f-8d81-8e6374b94f8e.jpg)

2. Country is expected to yield higher incomes in 1st world and capitalist countries of origin.

3. Education Level is expected to yield the lowest results at the extremes (high school or less, and doctorate).  With doctorates, many students are earning poverty-level wages by working for professors, or they major in something esoteric that does not connect to the labor force.  We would expect the Master’s degree holders to earn the most, followed by the Bachelor’s degree.  The Associates may or may not hit the threshold of $50K.  The AA degree may be a border zone where $50K begins for some people.

![edu](https://user-images.githubusercontent.com/68654746/198147358-63467d2c-804e-4cb9-a200-0aeeb12a480e.jpg)
![image (3)](https://user-images.githubusercontent.com/68654746/198133670-6c39e672-a49c-47a1-a48a-fae35c1d9b52.png)

4. Gender may be related in non-U.S. countries where the mother is more expected to stay home with children and/or work part-time, but we do not suspect it will matter much in the U.S.

![sex](https://user-images.githubusercontent.com/68654746/198148017-d793c45f-306d-41a4-9923-409c5be9b3d8.jpg)
![relationship](https://user-images.githubusercontent.com/68654746/198147622-6482ade6-3172-4f52-b260-f854a51b48b3.jpg)

5.  Executive/professional work would likely yield higher income than clerical or service industry occupations.
![occupation](https://user-images.githubusercontent.com/68654746/198147513-793ea0b6-4d85-4253-8cae-c6946e5548d2.jpg)

![workclass](https://user-images.githubusercontent.com/68654746/198147245-5c5da75e-102f-4bd1-9fe1-8a54da7aeee4.jpg)

6.  Race may not be relevant as of the date of this dataset, especially in countries where the nationality is homogeneous.
![race](https://user-images.githubusercontent.com/68654746/198147978-ac58caf2-f2aa-4c3d-89a2-058b3310af41.jpg)

7.  Families with children and married people may earn higher incomes than the unmarried and divorced.

![martialStatus](https://user-images.githubusercontent.com/68654746/198147503-e3e72ba6-2a25-497b-8ded-8de27fd223ba.jpg)
![image (5)](https://user-images.githubusercontent.com/68654746/198133705-af4e9333-d8fd-432d-8d5f-c962b369b1b4.png)

### Preliminary data preprocessing
- Our first step was loading the data in Jupyter Notebook and performing a preliminary exploration of the 1994 Census dataset. Dropping a few columns first, we wanted to focus on age, final weight, education (in numerical form), capital gain and loss, and hours per week worked.  

- Below is a table summarizing the data's descriptive statistics:
![census_description](https://user-images.githubusercontent.com/68654746/198146984-9a471231-4242-41b2-b3b6-41b25485f523.jpg)

- We then pulled unique values and examined if there were any duplicate values in each of the columns of the dataset. Once we cleaned our data, we extracted some preliminary tables, but found that we still needed to drop several more columns and values in order to be able to develop better visualizations and statistical findings. That led us to created cleaned adult_c2.data, adult_c2.names, and census_data_education csv. 

- Further analysis and visualizations were completed using Python libraries and VBA. We also formed a connection string with SQLAlchemy and created a schema in PostgreSQL. 

**Below is our ERD diagram with relationships:**

![ERD](https://user-images.githubusercontent.com/68654746/199123519-214ec72d-2913-477e-8102-7e0dd8b358ce.png)


### Database
[Link to SQL database](https://github.com/Faieee/final_project/blob/main/QuickDBD_schema.sql) 

![correlation](https://user-images.githubusercontent.com/68654746/198148402-3a81615b-e439-44b6-8ab4-6841a715b374.jpg)
![correllation_seaborn](https://user-images.githubusercontent.com/68654746/198148454-676a70e3-cadb-49c7-b08b-60c5c387ebd7.jpg)

- We merged PostgreSQL and our Jupyter Notebooks in order to extrapulate and form the tables we were interested in analyzing. Using PostgreSQL, we created a schema and uploaded the census_data.csv, and after exploratory data analysis created census_data_EDA.ipynb and census_data_EDA_rev2.ipynb. In another schema, we uploaded adult_c2.data.csv and wanted to look specifically at adult education level and capital gains. We are still working on this notebook under data_c2.ipynb. We may integrate Flask to display the data.



### Machine Learning Model 

**Description of preliminary feature engineering and preliminary feature selection, including their decision-making process**


We felt most confident using SciKit-Learn to run classifications and clustering algorithms. We found that using balanced random forest produced the best results. 

**Description of how data was split into training and testing sets**

- We also trained the data by using naive random oversampling, smote oversampling, ClusterCentroids resampler, SMOTEEN, EasyEnsembleClassifier, BalancedRandomForestClassifier.

**naive random oversampling**

![NaiveRandomOversampling](https://user-images.githubusercontent.com/68654746/198139966-1130bf4a-108b-495b-b213-57944ea27536.jpg)

Balanced Accuracy: 0.7384790685541558 or 73.85%

Precision: 91% for <$50k outcomes

Recall: 71% of <$50k outcomes were found

**SMOTE oversampling**

![SMOTE](https://user-images.githubusercontent.com/68654746/198140668-064d4645-65d2-4fb4-8eab-7524afbdc70d.jpg)

Balanced Accuracy: 0.7406228479555395 or 74.06%

Precision: 92% for <$50k outcomes

Recall: 70% of <$50k outcomes were found

**ClusterCentroids undersampling**

![ClusterCentroids](https://user-images.githubusercontent.com/68654746/198141085-42a4743c-08cd-4d09-ae27-78b1ff2adf9d.jpg)

Balanced Accuracy: 0.7369091820621197 or 73.69%

Precision: 92% for <$50k outcomes

Recall: 66% of <$50k outcomes were found

**SMOTEEN**

![SMOTEEN](https://user-images.githubusercontent.com/68654746/198141390-3f5227a5-8b31-4afa-ab66-547189405faa.jpg)

Balanced Accuracy: 0.7369091820621197 or 73.69%

Precision: 90% for <$50k outcomes

Recall: 76% of <$50k outcomes were found

**EasyEnsembleClassifier**

![EasyEnsembleClassifier](https://user-images.githubusercontent.com/68654746/198141709-fd8e09d7-61cb-4896-b484-5775fcc93d4d.jpg)

Balanced Accuracy: 0.8050432225910351 or 80.50%

Precision: 94% for <$50k outcomes

Recall: 76% of <$50k outcomes were found

**BalancedRandomForestClassifier**

![BalancedRandomForest](https://user-images.githubusercontent.com/68654746/198142393-15e38a7b-650f-456d-adbb-b5c3cdb78a25.jpg)

Balanced Accuracy: 0.7893344741273003 or 78.93%

Precision:  94% for <$50k outcomes

Recall: 75% of <$50k outcomes were found


**Summary of models by feature importance in descending order**

![FeatureImportance](https://user-images.githubusercontent.com/68654746/198142756-45b8eac4-3b7f-403d-8140-f9aa926fbf5d.jpg)

**Confusion Matrix Summary Table**

![ConfusionSummary](https://user-images.githubusercontent.com/68654746/198142955-c1ef3571-0c0a-4daa-9201-f18cd82f4dec.jpg)

**Explanation of model choice, including limitations and benefits**

- After reviewing all six models under two iterations of variables (one with all major variables and one that eliminated the variables of little correlational significance), the EasyEnsembleClassifer model yields the best results with the highest balanced accuracy rate of 80.50%.  The higher iteration was the one with all variables, even those of less significance, such as gender and race.  However, it may be essential to consider that the cleaned census education dataset may skew the results. Additionally, adults who received education in their native countries outside of the U.S. would likely have different standards. Thus, people from different backgrounds make it difficult to have comparable measures.

Questions to think about...
- How does it work?
- Why this specific model?
- What is the model's accuracy? (capture an interpretation of how accurate, precise, or sensitive the model is)
- If there are statistics involved, what stats are being included in analysis and why?
- If no statistics are involved, what would you include if you had more time?

### Presentation & Dashboard

**[Link to FAB5's Google Presentation Slides](https://docs.google.com/presentation/d/1eKOsacdlemOc44aoOOdj5vFGXsFLmb5p/edit?usp=sharing&ouid=113563215958551190830&rtpof=true&sd=true)**

For our final dashboard, we are using Tableau and HTML:

**[Link to Fab5's Tableau Dashboard](https://public.tableau.com/app/profile/amanda8204/viz/FinalProject_16668222456730/Dashboard1)**

**Report for this dashboard:**
- Age has the highest correlation to high/low 1994 income at 0.32. 
- This visualization shows that the average age of respondents in the high income group was 44, while it was 34 in the low income group.
- The next highest correlation is relationship at 0.16. Marital Status, a similar variable, was 0.14. The underlying variable, sex, which only had a correlation of 0.02 may have accounted for this slight difference.
- Educational Attainment had a correlation of 0.14. Education levels vary across country of origin; however, higher earners in our U.S. dataset tended to have college degrees, whereas lower income earners tended to not have college degrees.
- Although race is not well correlated to income, our dataset had a preponderance of white people.
- Higher income earners tended to have more capital gains, which stands to reason.
- Low income earners worked 39 hours per week on average, while higher income earners worked 45.5 hours per week on average.

**[Link to Country comparision Tableau](https://public.tableau.com/app/profile/lina.valencia/viz/Income_Comparison_US_Dollars/IncomecomparisoninUSDollars?publish=yes)**

- Within Tableau, we used the filter, highlight, and actions to create tables and charts similar to ones we've produced in Jupyter Notebook and SQL. 
- We also wanted to incorporate the inflation rate website in our analysis so the URL action allowed us to display it in Tableau. 
- One interactive chart we're interested in is hours worked per week. 
- Tableau also includes comparative charts, derived from https://stats.oecd.org/index.aspx?queryid=66670, of various cuntries that match those from the original dataset. 
- The purpose of this comparison is to show what the average income is in some of the countries the participants are from vs the income in the United States. 


## Website Progress:
![Amanda](https://github.com/Faieee/final_project/blob/main/static/images/Website_11-2-22.png)
