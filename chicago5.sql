-- TOTAL NUMBER OF NARCOTICS CASES REPORTED
SELECT COUNT(case_number)
 FROM `bigquery-public-data.chicago_crime.crime` 
 WHERE primary_type= 'NARCOTICS'
