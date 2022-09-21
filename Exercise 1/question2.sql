/* 
Question 2 : When Transjakarta transport receive the highest number of passengers? From
the top 5 data are there any in the same month?
Columns needed : bulan, tahun, jumlah_penumpang
*/

-- Selecting columns needed from transjakarta_passenger table
SELECT
  bulan,
  tahun,
  SAFE_CAST(REPLACE(REPLACE(jumlah_penumpang, '.', ''), ',', '') AS INT64) AS jumlah_penumpang_clr
FROM
  `data-scientist-academy.exercise1.transjakarta_passenger`
-- Sort by column 'jumlah_penumpang_clr' descending
ORDER BY
  jumlah_penumpang_clr DESC
-- Limit only 5 data are shown
LIMIT 5
