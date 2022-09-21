/* 
Question 1 : What types of transjakarta transportation and routes are used by the public in 2019?
Columns need : jenis, trayek, tahun
*/

-- Selecting columns need from transjakarta_passenger table
SELECT
  DISTINCT TRIM(jenis) AS jenis_clr,
  trayek,
  tahun
FROM
  `data-scientist-academy.exercise1.transjakarta_passenger`
-- Add constraint that only 2019 data is shown
WHERE 
  tahun = 2019
-- Sort by column 'jenis' ascending
ORDER BY
  jenis_clr ASC
