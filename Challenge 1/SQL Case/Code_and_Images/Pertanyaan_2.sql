/*
Pertanyaan 2 : Ambil 2 location iso code yang memiliki jumlah total kematian karena covid paling sedikit.

Kolom : Location_ISO_Code, Total_deaths
*/

-- Memilih kolom seuai soal
SELECT
  location_iso_code,
  SUM(total_deaths) AS sum_total_deaths

-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`

-- Mengelompokan data berdasarkan kolom location_iso_code
GROUP BY
  location_iso_code

-- mengurutkan data jumlah kau kematian berdasarkan yang terkecil ke terbesar
ORDER BY
  sum_total_deaths ASC

-- Membatasi keluaran hanya 2 hasil saja
LIMIT 2

/*
Hasil yang diperoleh, location_iso_code dengan jumlah kasus total kematian paling sedikit adalah:
1. ID-MA : 141796 kasus
2. ID-MU : 167511 kasus
*/
