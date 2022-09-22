/* 
Question 3 : What is maximum pasengers across route corridor? Show it in every route KORIDOR 1-13.
Columns need : trayek, jumlah_penumpang
*/

-- Selecting columns need from transjakarta_passenger table
SELECT
  trayek,
  MAX(SAFE_CAST(REPLACE(REPLACE(jumlah_penumpang, '.', ''), ',', '') AS INT64)) AS max_jumlah_penumpang_by_trayek
FROM
  `data-scientist-academy.exercise2.transjakarta-passenger`
-- Add constraint that only trayek with 'KORIDOR' prefix is shown
WHERE
  trayek LIKE 'KORIDOR%'
-- Grouping the result by the trayek's name
GROUP BY
  trayek
-- Sort the value by trayek ascending
ORDER BY
  trayek ASC
