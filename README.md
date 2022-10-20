# Final Project (Anton, Sharon, Lina, Elyse, Amanda)


## **Presentation Section of Rubric for Week 1 of Group Work:**

### 1.  We selected Census data that looks at whether participants earn less than or more than $50,000 per year.  

### 2.  We selected this topic because, although the Census delays its publication of the adult dataset to protect the privacy of the respondents, we would like to eventually compare the 1994 publication to the present-day, even in the absence of a more current comparison dataset.  In the United States, an income of $50,000 in the year 1994 is equivalent to approximately $100,000 today.  A common topic that is spoken about is the income disparity between the rich and the poor, so this topic is of interest to us to see if any of the variables collected on this survey relate to income level, such as age or marital status.  A variable not collected directly by this survey is “inherited wealth;” however, it does collect the variable “capital gain,” which could be a potential proxy.

### 3.  The dataset is derived from the Census.gov 1994 Adult Dataset, and it is described column by column here:  
- **Column A = the participant ID number.**
- **Column B =  age:** the respondent’s age as an integer;
- **Column C = workclass:** Pertains to their sector of employment or independent contractor status (Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked).
- **Column D = fnlwgt:** how common is this respondent in the general population?  The final weight is an approximate number of people in the general population that are believed to be represented by this respondent.
- **Column E = education:** the highest level of education received by the respondent in nominal categories (Preschool, 1st-4th, 5th-6th, 7th-8th,  9th, 10th, 11th, 12th, HS-grad, Some-college, Assoc-voc, Assoc-acdm, Bachelors, Masters, Prof-school, Doctorate.)
- **Column F =  education_num:** pertains to the highest level of education in numerical form, which was adjusted for the fact that the preschool-educated respondents had to be placed at a “1,” which then “bumped up” the numbering for the other educational attainments, given that preschool could not have been an integer less than 0 if 1st grade had been the “1.”
- **Column G = marital_status:** pertains to the marital status of an individual.  For example, Married-civ-spouse means a civilian spouse and Married-AF-spouse means a spouse in the Armed Forces.  These nominal categories are: Married-civ-spouse, Married-AF-spouse, Married-spouse-absent, Separated, Divorced, Widowed, Never-married.
- **Column H = occupation:** this represents the type of job held by the respondent.  These include: Craft-repair, Other-service, Sales, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces, Tech-support, Exec-managerial, and Prof-specialty.
- **Column I = relationship:** this may duplicate the meaning of the marital status column, such as if the respondent is a Husband.  The options in this group are very similar.  They include: Husband, Wife, Unmarried, Own-child, Not-in-family, Other-relative.
- **Column J = race:** This describes the respondent’s race, such as: Amer-Indian-Eskimo, Asian-Pac-Islander, Black, White, and Other.
- **Column K = sex:** This describes the biological sex as either Male or female.
- **Column L =  capital_gain:** Capital gains means the profit from the sale of property or an investment.  It means that the respondent may have earned money from something other than employment.  It is an integer greater than or equal to 0.
- **Column M = capital_loss:** Capital loss is the opposite of capital gains—the respondent lost money from some property or investment.  It is also an integer greater than or equal to 0.
- **Column N = hours_per_week:** This is the workweek of the respondent as a continuous number.
- **Column O = native_country:** This is the respondent’s country of origin.  The Census made some spelling errors which we are keeping until they can be cleaned.  For example, Hong should say Hong-Kong, Trinadad should say Trinidad, Holand should say Holland, and Columbia should say Colombia.  In addition, we do not know what South means.  South could mean either South Korea or South Africa.  We do not have reason to think it means South Sudan because it is 1994 data.  For now, these categories include: Cambodia, Canada, China, Columbia, Cuba, Dominican-Republic, Ecuador, El-Salvador, England, France, Germany, Greece, Guatemala, Haiti, Holand-Netherlands, Honduras, Hong, Hungary, India, Iran, Ireland, Italy, Jamaica, Japan, Laos, Mexico, Nicaragua, Outlying-US(Guam-USVI-etc), Philippines, Poland, Portugal, Puerto-Rico, Scotland, South, Taiwan, Thailand, Trinadad&Tobago, Peru, United-States, Vietnam, and Yugoslavia. 
- **Column P = income:** This represents whether the respondent earns more or less than $50,000 annually, using logic: <= 50K, or  >50K.

### 4.  We hope to answer the questions of which variables lead to higher income level, and is 1994 comparable to today?  Regarding machine learning modeling, we must focus on the United States data rather than the world data because there will not be enough datapoints to include the other countries.  We would be looking at the U.S. data for the machine learning component, but we may be looking at the world data for the database component.

Possible Hypotheses:
1. Higher age will be likely to yield higher income level over $50K.
2. Country is expected to yield higher incomes in 1st world and capitalist countries.
3. Education Level is expected to yield the lowest results at the lower end (high school or less).  We would expect the Master’s degree holders to earn the most, followed by the Bachelor’s degree.  The Associates may or may not hit the threshold of $50K.  The AA degree may be a border zone of where $50K begins for some people.
4. Gender may be related in non-U.S. countries where the mother is more expected to stay home with children and/or work part-time.
5.  Executive/professional work would likely yield higher income than clerical or service industry occupations.
6.  Race may not be relevant as of the date of this dataset, especially in countries where the nationality is homogenous.
7.  Families with children may have lower income attainment.  Single people may be more career-oriented and earn higher incomes.

### Other Questions Discussed:
- **Perhaps we should focus solely on the 40-hour participants.**
- Can we meaningfully combine federal, state and local government into a public sector category?
- Can we meaningfully combine educational attainment into less than high school, high school, and Bachelor’s and graduate school?
- Does capital gains represent a proxy for social class, or does it not matter to the regression equation?
- What are the fewest amount of variables we can use to still have high accuracy? 

## Communication Methods:
Aside from communication on Slack, our Zoom Meeting Schedule (in addition to Monday- Wednesday class time) will be:
- Fridays at 7:00 PM
- Sundays at 12:00 PM
- (The paid version of Zoom will allow us to have multiple presenters if multiple people need to share. Zoom will also have whiteboards if needed.)

### Division of Labor:
- Lina & Sharon = Database.
- Anton & Amanda = Machine Learning/Regression.
- (Amanda= Report-writer for Segment 1; Zoom Coordinator; mapped out data columns for Segment 1; will focus more on machine learning/regression in future segments.  Anton did the supervised machine learning in Segment 1).
- Elise – Visualization; Miscellaneous.

### **Individual Branches**
- We have at least one branch for each team member.
- Each team member has at least four commits from the duration of the first segment on either their own branch or the main branch.

## **Machine Learning Model**
- We present here a provisional machine learning model that stands in for the final machine learning model that takes in data in from the provisional database and outputs labels for input data.

## **Database**
- We present here a provisional database that stands in for the final database and contains: 
- Sample data that mimics the expected final database structure or schema.
- A draft machine learning module is connected to the provisional database.