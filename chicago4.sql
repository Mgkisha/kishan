--TOTAL NUMBER OF ROBBERY CASES REPORTED
SELECT COUNT(case_number)
 FROM `bigquery-public-data.chicago_crime.crime` 
 WHERE primary_type= 'ROBBERY'
