# Non Graded Challenge 1

_Non-Graded Assignment ini dibuat guna mengevaluasi pembelajaran pada Hacktiv8 Data Science Fulltime Program khususnya pada konsep SQL._

---
## Assignment Instructions

Akses data dari [BigQuery Sandbox](https://console.cloud.google.com/bigquery) dengan ketentuan: 
- Project_id: `bigquery-public-data`
- Dataset: `san_francisco`
- Table: `bikeshare_trips` & `bikeshare_stations`

Untuk mempermudah pengerjaan, berikut kolom-kolom yang bisa difokuskan dari masing-masing tabel:
- Table `bikeshare_trips` : `trip_id`, `start_date`, `subscriber_type`, `start_station_name`, dan `start_station_id`
- Table `bikeshare_stations` : `station_id`, `name`, dan `landmark` 

Pada kasus ini, kamu diminta untuk membandingkan tingkat peminjaman sepeda dari `subcriber_type`: `Subscriber` di kota `Redwood City` untuk periode Q1 dan Q2 tahun 2016.

Hints:
- Lakukan join pada kedua tabel.
- Terapkan kondisional pada `start_date`, `subcriber_type`, dan `landmark`.
- Hitung banyak kemunculan entry data untuk masing-masing periode (1 Query untuk 1 periode).

---
## Assignment Submission

* Simpan assignment pada sesi ini dengan nama `h8dsft_SQL_Basic`.
* Push Assigment yang telah dibuat ke akun Github pribadi masing-masing student.

---
## Assignment Objectives

Non-Graded Assignment ini dibuat guna mengevaluasi konsep SQL sebagai berikut:

* Mampu membuat query untuk select data
* Mampu membuat query dengan Join
