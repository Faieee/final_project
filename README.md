# 1994 Census Adult Dataset Project ~ presented by the Fab 5

## Anton, Amanda, Elise, Sharon, and Lina

<p align="center">
  <img width="1000" height="200" src="https://github.com/Faieee/final_project/blob/main/static/images/AvatarsHorizontal.png">
</p>

## Modeling and Forecasting Income Above or Below $50K in the United States in 1994

### Technologies & Languages used in Data Cleaning & Analysis
- Our analysis was completed using [these technologies](https://github.com/Faieee/final_project/blob/main/Technologies%20Textfile.txt)
- Our dashboard and storyboard visualizations were completed using Tableau.

### Data Source
- Originally cleaned and donated by Ronny Kohavi and Barry Becker (Data Mining and Visualization, Silicon Graphics) on May 1996, the dataset can be found on UCI Machine Learning Repository: **https://archive.ics.uci.edu/ml/datasets/census+income**
- The dataset selected was derived from the Census.gov 1994 Adult Dataset, which looks at whether participants earn >$50,000 or <=$50,000 per year. 
- In this dataset, there are 32,561 respondants and 14 columns with attributes that determine an adult's annual income. 


#### **The list of columns from the 1994 Census dataset are as follows:** 
- **Column A = the participant ID number.**
- **Column B =  age:** the respondent’s age as an integer. *(range from 17 - 90 years old)*
- **Column C = workclass:** pertains to their sector of employment or independent contractor status.
*(Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked)*
- **Column D = fnlwgt:** how common is this respondent in the general population?  The final weight is an approximate number of people in the general population that are believed to be represented by this respondent.
- **Column E = education:** the highest level of education received by the respondent in nominal categories. *(Preschool, 1st-4th, 5th-6th, 7th-8th,  9th, 10th, 11th, 12th, HS-grad, Some-college, Assoc-voc, Assoc-acdm, Bachelors, Masters, Prof-school, Doctorate)*
- **Column F =  education_num:** pertains to the highest level of education in numerical form, which was adjusted for the fact that the preschool-educated respondents had to be placed at a “1,” which then “bumped up” the numbering for the other educational attainments, given that preschool could not have been an integer less than 0 if 1st grade had been the “1.”
- **Column G = marital_status:** pertains to the marital status of an individual. For example, Married-civ-spouse means a civilian spouse, and Married-AF-spouse means a spouse in the Armed Forces. *These nominal categories are Married-civ-spouse, Married-AF-spouse, Married-spouse-absent, Separated, Divorced, Widowed, and Never-married.*
- **Column H = occupation:** this represents the type of job held by the respondent.  *These include: Craft-repair, Other-service, Sales, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces, Tech-support, Exec-managerial, and Prof-specialty.*
- **Column I = relationship:** this may duplicate the meaning of the marital status column, such as if the respondent is a Husband. The options in this group are very similar. *(Husband, Wife, Unmarried, Own-child, Not-in-family, and Other-relative)*
- **Column J = race:** This describes the respondent’s race, such as: *Amer-Indian-Eskimo, Asian-Pac-Islander, Black, White, and Other.*
- **Column K = sex:** This represents the biological sex as either *Male or female.*
- **Column L =  capital_gain:** capital gains refer to the profit from selling property or an investment. The respondent may have earned money from something other than employment. *It is an integer greater than or equal to 0.*  One limitation of this survey we noticed right away was the lack of a variable for "inherited wealth." However, the survey does collect the variable "capital gain," which could be a potential proxy.
- **Column M = capital_loss:** capital loss is the opposite of capital gains—the respondent lost money from some property or investment.  It is also an integer greater than or equal to 0.
- **Column N = hours_per_week:** this is the workweek of the respondent as a continuous number.
- **Column O = native_country:** this is the respondent’s country of origin (if not born in the U.S.). The Census made spelling errors, which we keep until they can be cleaned. For example, Hong should say Hong-Kong, Trinadad should say Trinidad, Holand should say Holland, and Columbia should say Colombia. In addition, we do not know what South means. South could represent either South Korea or South Africa. We do not have reason to think it means South Sudan because it is 1994 data. *For now, these categories include Cambodia, Canada, China, Columbia, Cuba, Dominican-Republic, Ecuador, El-Salvador, England, France, Germany, Greece, Guatemala, Haiti, Holand-Netherlands, Honduras, Hong, Hungary, India, Iran, Ireland, Italy, Jamaica, Japan, Laos, Mexico, Nicaragua, Outlying-US(Guam-USVI-etc), Philippines, Poland, Portugal, Puerto-Rico, Scotland, South, Taiwan, Thailand, Trinadad&Tobago, Peru, United-States, Vietnam, and Yugoslavia.* 
- **Column P = income:** this represents whether the respondent earns more or less than $50,000 annually, *using logic: <= 50K or >50K.*


## Topic & Questions to Be Answered
- **We hope to find answers as to which variables will lead to higher or lower annual income levels.  In particular, we wish to know which factors could disadvantage a person's income level, if any.** 
- This is an old dataset from 1994; however, another curiosity is whether the important variables in 1994 would still be important today, such as age, education level, and marital/family status.  For example, an American income of $50,000 in 1994 is equivalent to approximately $100,000 [today](https://www.in2013dollars.com/us/inflation/1994?amount=50000); nevertheless, the annual income disparity between the rich and the poor continues to be relevant. 




## Preliminary data cleaning
- Our first step was loading the data into Jupyter Notebook and performing a preliminary exploration of the 1994 Census dataset using Pandas library. 
- While we verified the potential use of the dataset for our final project, we brainstored a list of hypotheses that would be of interest by the end of our study. After reading the data, we identified the variables by type and category as well as getting the count of desired variables, such as workclass (sector) and education level. 
- Some good practice data cleaning techniques we conducted included dropping duplicate and null values and finding the spread of unique values.   

- We decided to focus on a few independent variables, such as age, education and hours per week worked. Below is a table summarizing our data's descriptive statistics. Just by looking at the statistics, such standard deviations and quartiles, there were certain attributes we would like to investigate further in our learning. 

![census_description](https://user-images.githubusercontent.com/68654746/198146984-9a471231-4242-41b2-b3b6-41b25485f523.jpg)

- Next we conducted some univariable analysis for our categorical and continuous variables. First, we pulled unique values and examined if there were any duplicate values in each of the columns of the dataset to drop. 
- Once our data was cleaned, we sorted each variable by value then made some visualizations to further understand the distribution of each category. 
- After extracting some preliminary tables, we found that we still needed to drop several more columns and values in order to be able to develop better visualizations and statistical findings. That led us to created cleaned adult_c2.data, adult_c2.names, and census_data_education csv. 
- Below are some bar charts and box plots found and some questions we hope to answer. 

### **Sample Characteristics:**

:monocle_face: **Income is our dependent variable. It is important to keep in mind that less than a fourth of participants in this dataset make more than $50K a year in 1994.**

![income_grp](https://user-images.githubusercontent.com/68654746/200508629-b43a0c59-0c60-4f04-b3c9-35d4f4415ce0.jpg)

:thinking: Older adults will likely have more experience and have a better chance of yielding an income level over $50K than younger adults. The box plot shows the median age is 37 years old with a cluster of outliers in the age group greater than 78 years old. 

![age_boxplot](https://user-images.githubusercontent.com/68654746/199134388-9dcec6d1-b5b2-418f-8d81-8e6374b94f8e.jpg)

:thinking: **Adults with more years of education have a better chance of being classified in the income group over $50K compared to someone with a high school degree or less.**  
- The mode education category level was a high school degree in 1994.  
- In this sample, after the high school diploma, the next most popular category was "some college", followed by Bachelor's degree. 


![edu](https://user-images.githubusercontent.com/68654746/198147358-63467d2c-804e-4cb9-a200-0aeeb12a480e.jpg)


- **The lowest "fnlwgt" educational bracket was graduate school.**
- Doctoral degrees were less common than Pre-K through 8th grade-educations.  
![image (3)](https://user-images.githubusercontent.com/68654746/198133670-6c39e672-a49c-47a1-a48a-fae35c1d9b52.png)


:thinking: **This sample was 2/3 men and only 1/3 women.**

![sex](https://user-images.githubusercontent.com/68654746/198148017-d793c45f-306d-41a4-9923-409c5be9b3d8.jpg)

:thinking:  **Looking at the distribution of occupations and workclass (sector), the participants mostly came from private sector; however, the occupational categories were generally represented across sectors.**

![occupation](https://user-images.githubusercontent.com/68654746/198147513-793ea0b6-4d85-4253-8cae-c6946e5548d2.jpg)
![workclass](https://user-images.githubusercontent.com/68654746/198147245-5c5da75e-102f-4bd1-9fe1-8a54da7aeee4.jpg)

:thinking:  **Most participants in this sample were white.**  
- It is also important to be aware that majority of the participants in this survey are native to the U.S.

![race](https://user-images.githubusercontent.com/68654746/198147978-ac58caf2-f2aa-4c3d-89a2-058b3310af41.jpg)
![native_cntry](https://user-images.githubusercontent.com/68654746/200510085-83d6b0d4-cdb4-4dfe-aa86-9b0dddd5dfc9.jpg)

:thinking:  **The Relationship category is generally redundant to marital status**

![image (5)](https://user-images.githubusercontent.com/68654746/198133705-af4e9333-d8fd-432d-8d5f-c962b369b1b4.png)
![relationship](https://user-images.githubusercontent.com/68654746/198147622-6482ade6-3172-4f52-b260-f854a51b48b3.jpg)

:thinking:  **Also in our EDA, we produced a correlation matrix using seaborn library to find a fair idea of the correlation strength between different variables.  From the heatmap below, it appears that education level (in numerical form) demonstrates the highest correlation to income level of all our variables.** 

![correlation](https://user-images.githubusercontent.com/68654746/198148402-3a81615b-e439-44b6-8ab4-6841a715b374.jpg)
![correllation_seaborn](https://user-images.githubusercontent.com/68654746/198148454-676a70e3-cadb-49c7-b08b-60c5c387ebd7.jpg)



# Database

**Below is our ERD diagram with relationships:**

![ERD](https://github.com/Faieee/final_project/blob/main/ERDhorizontal.png)

### **[Link to SQL database](https://github.com/Faieee/final_project/blob/main/QuickDBD_schema.sql)** 

- We merged PostgreSQL and our Jupyter Notebooks in order to extrapulate and form the tables we were interested in analyzing. 
- Using PostgreSQL, we created a schema and uploaded the census_data.csv, and after exploratory data analysis created census_data_EDA.ipynb and census_data_EDA_rev2.ipynb. 
- In another schema, we uploaded adult_c2.data.csv and wanted to look specifically at adult education level and capital gains. 
- CensusData_Education was used as the basis for the machine learning models.
- We used SQL Alchemy to connect the database to the machine learning model.
- An inner join was used to connect native country to the country_group renamed field.
-   The encoded one is found under the field "country_group corr."

# Machine Learning Model 

## **Description of preliminary feature engineering and preliminary feature selection, including their decision-making process**
- **The outcome variable was income level, which was either above or below $50K, so we knew that this would lend itself the most to supervised machine learning.**  

### First Attempt
- In the first attempt at machine learning, we set up six different supervised models, which were: Cluster Centroids, SMOTEENN, Naive Random Oversampling, SMOTE, Balanced Random Forest Classifier, and the Easy Ensemble with Adaptive Boost.  We selected almost all of the predictor variables in this first attempt to use as a baseline, which included: age, relationship, education category level, marital status, occupation, working class (AKA sector), race, and sex because they had a relevance of at least 0.02 to the model.
  - We did not include capital gains/loss because few records contained values in those columns, and the records that did contain values (particularly for capital gains) had substantially large values, which could have thrown off the model with outliers.  
  - In addition, the average hours worked in both groups was relatively comparable overall.  
- **The end result of the first attempt was that the best overall model was the Easy Ensemble with Adaptive Boost, which we believed had the highest balanced accuracy because it avoids overfitting (which could be useful if future Census samples are taken and added to this dataset) and it tends to learn the best from the weaker classifiers.  Since we eliminated some of the anticipated noise and outliers, it seemed like this model was the most logical contender at outset.  
- The variables in descending order of importance to the model were: age, relationship, and educational level as among the most relevant.  
- Since race and sex were lowest-scoring, we planned to get rid of them on our second machine learning attempt; however, we were aware that sometimes variables can be statistically significant, but they simply had low “say” on the model.  Therefore, we did not anticipate that the Easy Ensemble with Adaptive Boost would perform any better on the second attempt, but we did want to see if other models could outperform it on the second attempt.

### Second Attempt
- On the second attempt, we removed race and sex from the models, but this set of models performed worse across the board, so we reverted to the original model.  Thus, the pictures below represent the first iteration with the above-mentioned variables all included.


### **Description of how data was split into training and testing sets**
- We set "iter" to 500.  The outcome variable is the income level variable (whether it would be above or below $50,000).
- We opted to stratify, because this stratify parameter splits it so that the proportion of values in the resulting sample will be the same as the proportion of values given to parameter stratify.



### **Naive Random Oversampling**

![NaiveRandomOversampling](https://user-images.githubusercontent.com/68654746/198139966-1130bf4a-108b-495b-b213-57944ea27536.jpg)

Balanced Accuracy: 0.7384790685541558 or 73.85%

Precision: 91% for <$50k outcomes

Recall: 71% of <$50k outcomes were found



### **SMOTE oversampling**

![SMOTE](https://user-images.githubusercontent.com/68654746/198140668-064d4645-65d2-4fb4-8eab-7524afbdc70d.jpg)

Balanced Accuracy: 0.7406228479555395 or 74.06%

Precision: 92% for <$50k outcomes

Recall: 70% of <$50k outcomes were found



### **ClusterCentroids undersampling**

![ClusterCentroids](https://user-images.githubusercontent.com/68654746/198141085-42a4743c-08cd-4d09-ae27-78b1ff2adf9d.jpg)

Balanced Accuracy: 0.7369091820621197 or 73.69%

Precision: 92% for <$50k outcomes

Recall: 66% of <$50k outcomes were found



### **SMOTEENN**

![SMOTEEN](https://user-images.githubusercontent.com/68654746/198141390-3f5227a5-8b31-4afa-ab66-547189405faa.jpg)

Balanced Accuracy: 0.7369091820621197 or 73.69%

Precision: 90% for <$50k outcomes

Recall: 76% of <$50k outcomes were found



### **EasyEnsembleClassifier**

![EasyEnsembleClassifier](https://user-images.githubusercontent.com/68654746/198141709-fd8e09d7-61cb-4896-b484-5775fcc93d4d.jpg)

**Balanced Accuracy: 0.8050432225910351 or 80.50%**

**Precision: 94% for <$50k outcomes**

**Recall: 76% of <$50k outcomes were found**



### **BalancedRandomForestClassifier**

![BalancedRandomForest](https://user-images.githubusercontent.com/68654746/198142393-15e38a7b-650f-456d-adbb-b5c3cdb78a25.jpg)

Balanced Accuracy: 0.7893344741273003 or 78.93%

Precision:  94% for <$50k outcomes

Recall: 75% of <$50k outcomes were found




### **Summary of models by feature importance in descending order**

- **The correlation coefficient of each variable to the model would be the main statistics that we examined, with age being the most relevant variable out of all of them.** 

![FeatureImportance](https://user-images.githubusercontent.com/68654746/198142756-45b8eac4-3b7f-403d-8140-f9aa926fbf5d.jpg)

**Confusion Matrix Summary Table**

![ConfusionSummary](https://user-images.githubusercontent.com/68654746/198142955-c1ef3571-0c0a-4daa-9201-f18cd82f4dec.jpg)

### **Explanation of model choice, including limitations and benefits after the second iteration of machine learning**

- We found that using the Ada Boost Easy Ensemble model produced the highest balanced accuracy the first time (relative to the second time).  This model is helpful in that it avoids overfitting and that it makes the most of the weak classifiers.  However, we did not believe that it was going to have much more accuracy the second time (with sex and race removed) because its main disadvantage is that it does not deal well with noise or outliers.

- **After reviewing all six models under two iterations of variables (one with all major variables and one that eliminated the variables of little correlational significance), the EasyEnsembleClassifer model yields the best results with the highest balanced accuracy rate of 80.50%.**  The higher iteration was the one with all variables, even those of less significance, such as gender and race.  

- It may be essential to consider that the cleaned census education dataset may skew the results. Additionally, adults who received education in their native countries outside of the U.S. may have different standards. Thus, people from different backgrounds make it difficult to have comparable measures.

### **Exploration of feature combinations**

By breaking up the dataset and using different combinations of features, we hoped to see different trends and patterns in our data. The key important features that were considered in this analysis were Education, Sex, and Marital Status. The emphasis was put on being able to predict whether or not an individual was making <$50k, so only the classification report for outcomes labeled "0" was analyzed.

**Separation by Education**

- High school grad or less

![](/Resources/ml_results/high_school.png)

- College grads

![](/Resources/ml_results/college.png)

While the accuracy of these models was the same, the < high school set had an almost perfect precision of 97% when looking at <$50k outcomes, at the cost of poor precision for >$50k outcomes. This pattern will be seen consistently, with a possible explanation being that most <$50k outcomes end up in the < high school demographic. 

**Separation by Marital Status**

- Married

![](/Resources/ml_results/married.png)

- Single

![](/Resources/ml_results/single.png)

This faces a similar situation to the education split, where the single dataset had great performance for prediction <$50 outcomes, but the married dataset had a ~70% rate for predicting all outcomes. Since "Single" was counted as "has never married" while "Married" was counted as "at one point was married", it is possible that young people overwhelmingly belong to the single group, and have great representation there.

**Separation by Sex**

- All males

![](/Resources/ml_results/male_all_data.png)

- All females

![](/Resources/ml_results/female_all_data.png)

- Male high school grad or less

![](/Resources/ml_results/male_high_school.png)

- Female high school grad or less

![](/Resources/ml_results/female_high_school.png)

- Male single

![](/Resources/ml_results/male_single.png)

- Female single

![](/Resources/ml_results/female_single.png)

A matter of note with the "single" classifications is that the sample sizes were starting to get relatively small, but useful information trends are still possible to retrieve from them. The most interesting matter of note is with the married female demographic. This subset had an unusually low accuracy, and we believe this to be attributed to the time this dataset was collected. Since this is from the 90's USA, the general social attitude was for young women to play a smaller role in the workforce compared to the more equal roles of today. Therefore, with the married female dataset, more members of the dataset could have less influence of their income compared to the members of the married male dataset, where more of the members were focused on making money.

**Analysis of key demographic features**

- Age, race, sex only

![](/Resources/ml_results/age_race_sex.png)

 - Age, race, sex, and education only

 ![](/Resources/ml_results/age_race_sex_education.png)

 With the models and analysis gained from working on this dataset, it may become necessary to compare it to other datasets, either from around the world or from a different time. Therefore, two subsets of the data were made that focus only on key demographic features. When looking at only the members' Age, Race, and Sex, we see a 70% accuracy for results. This is an incredible "at a glance" rate that allows us to compare this to most other datasets from other sources, since these features are almost certain to be included. Another analysis was done by also including Education into the aformentioned cluster, raising the accuracy up to nearly 75%.

## Presentation & Dashboard

### **[Link to FAB5's Google Presentation Slides](https://docs.google.com/presentation/d/1eKOsacdlemOc44aoOOdj5vFGXsFLmb5p/edit?usp=sharing&ouid=113563215958551190830&rtpof=true&sd=true)**


### For our final dashboard, we are using Tableau and HTML:  **[Link to Fab5's Tableau Dashboard](https://public.tableau.com/app/profile/amanda8204/viz/FinalProject_16668222456730/Dashboard1)**

**Report for this dashboard:**
- **Age has the highest correlation to high/low 1994 income at 0.32.**

*Variable Correlation Summary*
<p>
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/VariableCorrelations.png">
</p>

- This visualization shows that the average age of respondents in the high income group was 44, while it was 34 in the low income group.
<p align="center">
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/AgeStory.png">
</p>

- **The next highest correlation is Relationship at 0.16.** Marital Status, a similar variable, was 0.14. The underlying variable, sex, which only had a correlation of 0.02 may have accounted for this slight difference.
<p align="center">
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/GraphTodayMarital.png">
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/MaritalStatusStory.png">
</p>

- Educational Attainment had a correlation of 0.14. Education levels vary across country of origin; however, higher earners in our U.S. dataset tended to have college degrees, whereas lower income earners tended to not have college degrees.
<p align="center">
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/AvgEducationStory.png">
</p>

- Although race is not well correlated to income, our dataset had a preponderance of white people.
- Higher income earners tended to have more capital gains, which stands to reason.
- Low income earners worked 39 hours per week on average, while higher income earners worked 45.5 hours per week on average.

- Workclass was not a major factor on income level. 
<p align="center">
  <img src="https://github.com/Faieee/final_project/blob/main/Resources/images/SectorOccupationStory.png">
</p>

### **[Link to Country comparision Tableau](https://public.tableau.com/app/profile/lina.valencia/viz/Income_Comparison_US_Dollars/IncomecomparisoninUSDollars?publish=yes)**

:thinking:

**Report for this dashboard:**
- Within Tableau, we used the filter, highlight, and actions to create tables and charts similar to ones we've produced in Jupyter Notebook and SQL. 
- We also wanted to incorporate the inflation rate website in our analysis so the URL action allowed us to display it in Tableau. 
- One interactive chart we're interested in is hours worked per week. 
- Tableau also includes comparative charts, derived from https://stats.oecd.org/index.aspx?queryid=66670, of various cuntries that match those from the original dataset. 
- The purpose of this comparison is to show what the average income is in some of the countries the participants are from vs the income in the United States. 


## :sunglasses: Website:
- The website is created using HTML, CSS, and Javascript.  

- The word cloud at the top is done in NVivo version 12, and this software reads the dataset and displays larger font for the words that appear most often.  This also helped to guide our understanding of which variables may have been more or less popular in the dataset, and confirmed our understanding that the dataset may be somewhat skewed toward white males who work in private sector.

- The Tableaux are embedded so that the mouse can hover over and receive the descriptions.

- A few other websites and calculators are embedded also with links either underneath them or when you click on them.

![Amanda](https://github.com/Faieee/final_project/blob/main/static/images/Website_11-2-22.png)


### Further investigation / What to do differently next time

