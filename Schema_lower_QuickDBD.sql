-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- To be populated
CREATE TABLE "country" (
    -- OECD statistics country code
    "country_code" varchar(5)   NOT NULL,
    "country_name" varchar(50)   NULL,
    "continent" varchar(30)   NOT NULL,
    "country_group" text   NULL,
    "country_group_corr" text   NULL,
    "country_main" varchar(50)   NULL,
    -- OECD statistics currency code
    "curr_code" varchar(5)   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_code"
     ),
    CONSTRAINT "uc_country_country_group" UNIQUE (
        "country_group"
    ),
    CONSTRAINT "uc_country_country_group_corr" UNIQUE (
        "country_group_corr"
    )
);

-- Comprehensive encoded columns
CREATE TABLE "census_data_education" (
    -- participant record number
    "p_id" int   NOT NULL,
    -- respondent's age
    "age" int   NOT NULL,
    -- sector/type of employment
    "workclass" text   NOT NULL,
    -- approx. num. of people represented
    "fnlwgt" int   NOT NULL,
    "education" text   NOT NULL,
    -- coded highest education attained
    "eduation_num" int   NOT NULL,
    -- marital status description
    "marital_status" text   NOT NULL,
    -- type of job held by respondent
    "occupation" text   NOT NULL,
    -- to participant
    "relationship" text   NOT NULL,
    -- descriptive option
    "race" text   NOT NULL,
    -- descriptive option
    "sex" text   NOT NULL,
    "capital_gain" int   NOT NULL,
    "capital_loss" int   NOT NULL,
    "hours_per_week" int   NOT NULL,
    "native_country" text   NOT NULL,
    "income" text   NOT NULL,
    -- Supervised target
    "income_lev" int   NOT NULL,
    "education_cat_lev" int   NOT NULL,
    "education_cat" text   NOT NULL
);

CREATE TABLE "census_data_coded" (
    -- participant record number
    "p_id" int   NOT NULL,
    -- respondent's age
    "age" int   NOT NULL,
    -- sector/type of employment, coded
    "workclass" text   NOT NULL,
    -- approximate number of people represented
    "fnlwgt" int   NOT NULL,
    -- coded highest education attained
    "eduation_num" int   NOT NULL,
    -- marital status, coded
    "marital_status" int   NOT NULL,
    -- type of job held by respondent
    "occupation" text   NOT NULL,
    -- to participant
    "relationship" text   NOT NULL,
    "race" int   NOT NULL,
    "sex" int   NOT NULL,
    "capital_gain" int   NOT NULL,
    "capital_loss" int   NOT NULL,
    "hours_per_week" int   NOT NULL,
    "native_country" text   NOT NULL,
    -- Supervised target
    "income_lev" int   NOT NULL,
    "education_cat_lev" int   NOT NULL,
    CONSTRAINT "pk_census_data_coded" PRIMARY KEY (
        "p_id"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Potentially make live interactive
CREATE TABLE "currency" (
    -- OECD statistics currency coding
    "curr_code" varchar(5)   NOT NULL,
    -- curr_code description
    "name" varchar(30)   NOT NULL,
    -- description of Currency name
    "description" varchar(50)   NOT NULL,
    "rate" decimal   NOT NULL,
    "rate_date" date   NOT NULL,
    CONSTRAINT "pk_currency" PRIMARY KEY (
        "curr_code"
     ),
    CONSTRAINT "uc_currency_description" UNIQUE (
        "description"
    )
);

CREATE TABLE "education_level" (
    -- coded highest education attained
    "education_num" int   NOT NULL,
    -- description of education_num
    "education" text   NOT NULL,
    -- Count in adult_c2.data
    "rec_cnt" int   NOT NULL,
    CONSTRAINT "pk_education_level" PRIMARY KEY (
        "education_num"
     ),
    CONSTRAINT "uc_education_level_education" UNIQUE (
        "education"
    )
);

CREATE TABLE "education_category" (
    -- binned code: education level attained
    "education_cat_lev" int   NOT NULL,
    -- education_cat_lev description
    "education_cat" text   NOT NULL,
    -- Count in adult_c2.data
    "rec_cnt" int   NOT NULL,
    CONSTRAINT "pk_education_category" PRIMARY KEY (
        "education_cat_lev"
     ),
    CONSTRAINT "uc_education_category_education_cat" UNIQUE (
        "education_cat"
    )
);

CREATE TABLE "race_coded" (
    "race_num" int   NOT NULL,
    "race" text   NOT NULL,
    "rec_cnt" int   NOT NULL,
    CONSTRAINT "pk_race_coded" PRIMARY KEY (
        "race_num"
     ),
    CONSTRAINT "uc_race_coded_race" UNIQUE (
        "race"
    )
);

ALTER TABLE "country" ADD CONSTRAINT "fk_country_curr_code" FOREIGN KEY("curr_code")
REFERENCES "currency" ("curr_code");

ALTER TABLE "census_data_education" ADD CONSTRAINT "fk_census_data_education_p_id" FOREIGN KEY("p_id")
REFERENCES "census_data_coded" ("p_id");

ALTER TABLE "census_data_education" ADD CONSTRAINT "fk_census_data_education_native_country" FOREIGN KEY("native_country")
REFERENCES "country" ("country_group");

ALTER TABLE "census_data_coded" ADD CONSTRAINT "fk_census_data_coded_eduation_num" FOREIGN KEY("eduation_num")
REFERENCES "education_level" ("education_num");

ALTER TABLE "census_data_coded" ADD CONSTRAINT "fk_census_data_coded_race" FOREIGN KEY("race")
REFERENCES "race_coded" ("race_num");

ALTER TABLE "census_data_coded" ADD CONSTRAINT "fk_census_data_coded_native_country" FOREIGN KEY("native_country")
REFERENCES "country" ("country_group_corr");

ALTER TABLE "census_data_coded" ADD CONSTRAINT "fk_census_data_coded_education_cat_lev" FOREIGN KEY("education_cat_lev")
REFERENCES "education_category" ("education_cat_lev");

