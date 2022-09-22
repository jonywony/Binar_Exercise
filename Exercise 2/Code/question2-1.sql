/* 
Question 1 : How many Transjakarta pasenger recorded in 2019?
Columns need : jumlah_penumpang
*/

-- Selecting columns need from transjakarta_passenger table
SELECT
  -- To sum how many passengers recorded, I use SUM() function
  SUM(SAFE_CAST(REPLACE(REPLACE(jumlah_penumpang, '.', ''), ',', '') AS INT64)) AS sum_jumlah_penumpang
FROM
  `data-scientist-academy.exercise2.transjakarta-passenger`
