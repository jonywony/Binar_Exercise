/*
Pertanyaan 3 : Kapan (tanggal) Indonesia memiliki rate kasus recovered paling tinggi? Berapa ratenya?

Kolom : Date, Case_Recovered_Rate
*/

-- Memilih kolom seuai soal
SELECT
  date,
  MAX(case_recovered_rate) AS max_case_recovered_rate_IDN

-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`

-- Membatasi hasil dengan hanya menampilkan kasus dimana location_iso_code adalah "IDN" atau hanya kasus di Indonesia saja(Negara bukan Provinsi)
WHERE
  location_iso_code = 'IDN'

-- Mengelompokan data berdasarkan tanggal
GROUP BY
  date

-- Mengurutkan bedasarkan data terbear ke terkecil
ORDER BY
  max_case_recovered_rate_IDN DESC

-- Membatasi hasil hanya 5 karena ada 5 tanggal yang meiliki nilai tertinggi
LIMIT 5

/*
Hasil yang diperoleh, tanggal dan rate kasus recovered paling tinggi adalah:
1. 2022-05-30 dengan rate	0.9737
2. 2022-05-29	dengan rate 0.9737
3. 2022-05-27	dengan rate 0.9737
4. 2022-05-24	dengan rate 0.9737
5. 2022-05-23	dengan rate 0.9737
*/
