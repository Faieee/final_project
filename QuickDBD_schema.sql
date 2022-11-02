-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- To be populated
CREATE TABLE "Country" (
    -- OECD statistics country code
    "country_code" varchar(3)   NOT NULL,
    "country_name" varchar(50)   NULL,
    "continent" text   NOT NULL,
    "country_group" text   NULL,
    "country_group_corr" text   NULL,
    "country_main" varchar(50)   NULL,
    -- OECD statistics currency code
    "curr_code" varchar(3)   NOT NULL,
    CONSTRAINT "pk_Country" PRIMARY KEY (
        "country_code"
     ),
    CONSTRAINT "uc_Country_country_group" UNIQUE (
        "country_group"
    ),
    CONSTRAINT "uc_Country_country_group_corr" UNIQUE (
        "country_group_corr"
    )
);

CREATE TABLE "CensusDataEducation" (
    -- participant record number
    "p_id" int   NOT NULL,
    -- respondent's age
    "age" int   NOT NULL,
    -- sector/type of employment
    "workclass" text   NOT NULL,
    -- approx. num. of people represented
    "fnlwgt" int   NOT NULL,
    -- marital status description
    "marital_status" text   NOT NULL,
    -- type of job held by respondent
    "occupation" text   NOT NULL,
    -- to participant
    "relationship" text   NOT NULL,
    -- descriptive option
    "race" text   NOT NULL,
    -- descriptive option
    "sex" varchar(10)   NOT NULL,
    -- property/investment sale gain
    "capital_gain" int   NOT NULL,
    -- property/investment sale loss
    "capital_loss" int   NOT NULL,
    -- workweek hours as number
    "hours_per_week" int   NOT NULL,
    -- descriptive option
    "native_country" text   NOT NULL,
    -- Supervised target
    "income_lev" int   NOT NULL,
    -- bin code: educ. lev. attained
    "education_cat_lev" int   NOT NULL,
    -- education_cat_lev description
    "education_cat" text   NOT NULL
);

CREATE TABLE "CensusDataNum" (
    -- participant record number
    "p_id" int   NOT NULL,
    -- for participant
    "age" int   NOT NULL,
    -- approx. num. of people represented
    "fnlwgt" int   NOT NULL,
    -- coded highest education attained
    "education_num" int   NOT NULL,
    "education_cat_lev" int   NOT NULL,
    -- bin code: educ. lev. attained
    "marital_status" int   NOT NULL,
    -- property/investment sale gain
    "capital_gain" int   NOT NULL,
    -- property/investment sale loss
    "capital_loss" int   NOT NULL,
    -- workweek hours as number
    "hours_per_week" int   NOT NULL,
    -- (0)/[1]: (<=)/[>] 50K
    "income_lev" int   NOT NULL,
    -- (0)/[1] : (No)/[Yes]
    "race_Amer-Indian-Eskimo" int   NOT NULL,
    -- (0)/[1] : (No)/[Yes]
    "race_Asian-Pac-Islander" int   NOT NULL,
    -- (0)/[1] : (No)/[Yes]
    "race_Black" int   NOT NULL,
    -- (0)/[1] : (No)/[Yes]
    "race_Other" int   NOT NULL,
    -- (0)/[1] = (No:Female)/[Yes]
    "sex_Male" int   NOT NULL,
    CONSTRAINT "pk_CensusDataNum" PRIMARY KEY (
        "p_id"
     )
);

CREATE TABLE "CensusDataClass" (
    -- participant record number
    "p_id" int   NOT NULL,
    -- sector/type of employment
    "workclass" text   NOT NULL,
    -- description of education_num
    "education" text   NOT NULL,
    -- coded highest education attained
    "education_num" int   NOT NULL,
    -- bin code: education level attained
    "education_cat_lev" int   NOT NULL,
    -- education_cat_lev description
    "education_cat" text   NOT NULL,
    -- (0)/1 : (not)/currently married
    "marital_status" int   NOT NULL,
    -- type of job held by respondent
    "occupation" text   NOT NULL,
    -- to participant
    "relationship" text   NOT NULL,
    -- descriptive option
    "native_country" text   NOT NULL,
    -- income_lev descriptive category
    "income" varchar(10)   NOT NULL,
    -- (0)/[1]: (<=)/[>] 50K
    "income_lev" int   NOT NULL
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Potentially make live interactive
CREATE TABLE "Currency" (
    -- OECD statistics currency coding
    "curr_code" varchar(3)   NOT NULL,
    -- curr_code description
    "name" text   NOT NULL,
    -- description of Currency name
    "description" varchar(50)   NOT NULL,
    "rate" money   NOT NULL,
    "rate_date" date   NOT NULL,
    CONSTRAINT "pk_Currency" PRIMARY KEY (
        "curr_code"
     ),
    CONSTRAINT "uc_Currency_description" UNIQUE (
        "description"
    )
);

CREATE TABLE "EducationLev" (
    -- coded highest education attained
    "education_num" int   NOT NULL,
    -- description of education_num
    "education" text   NOT NULL,
    -- Count in adult.data
    "rec_cnt" int   NOT NULL,
    CONSTRAINT "pk_EducationLev" PRIMARY KEY (
        "education_num"
     ),
    CONSTRAINT "uc_EducationLev_education" UNIQUE (
        "education"
    )
);

CREATE TABLE "EducationCat" (
    -- bin code: education level attained
    "education_cat_lev" int   NOT NULL,
    -- education_cat_lev description
    "education_cat" text   NOT NULL,
    -- Count in adult.data
    "rec_cnt" int   NOT NULL,
    CONSTRAINT "pk_EducationCat" PRIMARY KEY (
        "education_cat_lev"
     ),
    CONSTRAINT "uc_EducationCat_education_cat" UNIQUE (
        "education_cat"
    )
);

ALTER TABLE "Country" ADD CONSTRAINT "fk_Country_curr_code" FOREIGN KEY("curr_code")
REFERENCES "Currency" ("curr_code");

ALTER TABLE "CensusDataEducation" ADD CONSTRAINT "fk_CensusDataEducation_p_id" FOREIGN KEY("p_id")
REFERENCES "CensusDataNum" ("p_id");

ALTER TABLE "CensusDataEducation" ADD CONSTRAINT "fk_CensusDataEducation_native_country" FOREIGN KEY("native_country")
REFERENCES "Country" ("country_group");

ALTER TABLE "CensusDataEducation" ADD CONSTRAINT "fk_CensusDataEducation_education_cat_lev" FOREIGN KEY("education_cat_lev")
REFERENCES "EducationCat" ("education_cat_lev");

ALTER TABLE "CensusDataNum" ADD CONSTRAINT "fk_CensusDataNum_education_num" FOREIGN KEY("education_num")
REFERENCES "EducationLev" ("education_num");

ALTER TABLE "CensusDataClass" ADD CONSTRAINT "fk_CensusDataClass_p_id" FOREIGN KEY("p_id")
REFERENCES "CensusDataNum" ("p_id");

ALTER TABLE "CensusDataClass" ADD CONSTRAINT "fk_CensusDataClass_native_country" FOREIGN KEY("native_country")
REFERENCES "Country" ("country_group_corr");

