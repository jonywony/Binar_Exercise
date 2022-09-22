/* 
Question 2 : Replace the data 'BRT' in jenis column to 'Bus Rapid Transit'
Columns need : jenis
*/

-- Selecting columns need from transjakarta_passenger table
SELECT
  jenis,
  -- To change the value of data, I use REPLACE() function
  REPLACE(jenis, 'BRT', 'Bus Rapid Transit') AS jenis_transform
FROM
  `data-scientist-academy.exercise2.transjakarta-passenger`
