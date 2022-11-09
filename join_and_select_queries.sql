SELECT * FROM race_coded AS race
ORDER BY race.race_num;

SELECT * FROM education_level AS e_lev
ORDER BY e_lev.education_num;

SELECT * FROM education_category AS e_cat
ORDER BY e_cat.education_cat_lev;

SELECT * FROM currency AS curr;

SELECT * FROM country AS ctry
ORDER BY ctry.country_code;

SELECT * FROM census_data_education AS cde
ORDER BY cde.p_id
LIMIT 100;

SELECT * FROM census_data_coded AS cdc
ORDER BY cdc.fnlwgt DESC
LIMIT 100;

SELECT DISTINCT cdc.workclass
FROM census_data_coded AS cdc
ORDER BY cdc.workclass;

SELECT DISTINCT cde.workclass
FROM census_data_education AS cde
ORDER BY cde.workclass;

SELECT cdc.*, ctry.country_group FROM country AS ctry
INNER JOIN census_data_coded AS cdc
ON (ctry.country_group_corr = cdc.native_country)
ORDER BY ctry.country_code, cdc.fnlwgt DESC;
