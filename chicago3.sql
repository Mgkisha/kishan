--what is the total number of arrest that are reported in Chicago
SELECT count(case_number) as no_of_arrest
FROM `bigquery-public-data.chicago_crime.crime`
WHERE arrest = true
