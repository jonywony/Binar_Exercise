/* 
Question 3 : Count how many trayek with prefix 'ST'
Columns need : trayek
*/

-- Selecting columns need from transjakarta_passenger table
SELECT
  --Count only
  COUNT(DISTINCT trayek)
  -- Show the trayek's name
  -- DISTINCT trayek
FROM
  `data-scientist-academy.exercise1.transjakarta_passenger`
-- Add constraint that only trayek with prefix 'ST' is count
WHERE 
  trayek LIKE 'ST%'
-- ORDER by trayek's name (only used when showing trayek's name)
-- ORDER BY
  -- trayek 
