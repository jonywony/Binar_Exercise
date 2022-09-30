/*
Pertanyaan 4 : Hitung total case fatality rate dan case recovered rate dari masing-masing location iso code. Urutkan dari yang paling rendah.

Kolom : Location_ISO_Code, Case_Fatality_Rate, Case_Recovered_Rate
*/

-- Memilih kolom seuai soal
SELECT
  location_iso_code,
  -- Menggunakan fungsi ROUND untuk merapikan hasil
  ROUND(SUM(case_fatality_rate), 3) AS sum_case_fatality_rate,
  ROUND(SUM(case_recovered_rate), 3) AS sum_case_recovered_rate

-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`

-- Mengelompokan data berdasarkan location_iso_code
GROUP BY
  location_iso_code

-- Mengurutkan bedasarkan data sum_case_fatality_rate terkeicl ke terbear lalu sum_case_recovered_rate terkecil ke terbesar
ORDER BY
  sum_case_fatality_rate ASC,
  sum_case_recovered_rate ASC

/*
Hasil yang diperoleh: Dapat dilihat pada Pertanyaan_4_Hasil.png
*/
