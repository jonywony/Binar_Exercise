/*
Pertanyaan 5 : Pada tanggal berapa total kasus covid mulai menyentuh angka 30.000-an? Hitung ada berapa data yang tercatat ketika kasus covid lebih dari atau sama dengan 30.000?
Untuk menjawab pertanyaan ini, diperlukan 2 query karen aitu saya membaginya menjadi 5.1 dan 5.2
*/

/* 
Pertanyaan 5.1 : Pada tanggal berapa total kasus covid mulai menyentuh angka 30.000-an?
Disini saya berasumsi bahwa pertanyaan mengacu pada seluruh lokasi
Kolom : Date
*/

-- Memilih kolom seuai soal
SELECT
  date

-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`

-- Hanya tanggal yang memiliki total_cases lebih dari 30000 yang ditampilkan
WHERE
  total_cases >= 30000

-- Mengurutkan tanggal dari yang terkecil ke terbesar
ORDER BY
  date ASC

-- Tanggal pertama kali total kasus mencapai 30000 atau lebih adalah dengan mengambil nilai pertama dari sorting yang dilakukan
LIMIT 1

/*
Hasil yang diperoleh: 
Tanggal pertama saat kasus covid mencapai 30000 adalah tanggal 2020-06-06
*/

/* 
Pertanyaan 5.2 : Hitung ada berapa data yang tercatat ketika kasus covid lebih dari atau sama dengan 30.000?
Disini saya berasumsi bahwa pertanyaan mengacu pada seluruh lokasi
Kolom : Total_Cases
*/

-- Memilih kolom seuai soal
SELECT
  COUNT(total_cases) AS count_total_cases_more_than_equal_30000

-- Mengambil data dari tabel covid19_indonesia
FROM
  `data-scientist-academy.challenge_1.covid19_indonesia`

-- Hanya tanggal yang memiliki total_cases lebih dari 30000 yang ditampilkan
WHERE
  total_cases >= 30000

/*
Hasil yang diperoleh: 
data yang tercatat ketika kasus covid lebih dari atau sama dengan 30.000 adalah 14399
*/
