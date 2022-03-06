--Which month generally has the greatest number of motor vehicle thefts?
#standardSQL
SELECT
  year,
  month,
  incidents
FROM (
  SELECT
    year,
    EXTRACT(MONTH
    FROM
      date) AS month,
    COUNT(1) AS incidents,
    RANK() OVER (PARTITION BY year ORDER BY COUNT(1) DESC) AS ranking
  FROM
    `bigquery-public-data.chicago_crime.crime`
  WHERE
    primary_type = 'MOTOR VEHICLE THEFT'
    AND year <= 2016
  GROUP BY
    year,
    month )
WHERE
  ranking = 1
ORDER BY
  year DESC
  limit 5
