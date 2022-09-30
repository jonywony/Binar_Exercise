/*
Pertanyaan 1 : Hitung jumlah total kasus covid aktif yang baru di setiap provinsi. Urutkan berdasarkan jumlah kasus yang paling besar.

Kolom : Province, New_Active_Cases
*/

-- Memilih kolom seuai soal
SELECT
  province,
  -- Menggunakan fungsi sum untuk menjumlahkan new_active_cases
  SUM(new_active_cases) AS sum_new_active_cases
  
-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`
  
-- Memberikan batasan jika kolom province null maka tidak dihitung
WHERE
  province IS NOT NULL
  
-- Mengelompokan berdasarkan setiap provinsi
GROUP BY
  province
  
-- Mengurutkan hasil query berdasarkan jumlah kasus aktif terbear ke terkecil
ORDER BY
  sum_new_active_cases DESC
