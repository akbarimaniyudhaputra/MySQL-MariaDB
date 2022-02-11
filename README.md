# MySQL | #MariaDB

------------------------------------------------
DATABASE
Tempat penyimpan banyak table
------------------------------------------------
Perintah untuk melihat semua database di MySQL
show databases;
------------------------------------------------
Perintah untuk membuat database
NB:tidak boleh ada spasi
Create database nama_database;
------------------------------------------------
Perintah untuk menghapus database
NB:hati-hati lebih baik di backup dulu
Drop database nama_database;
------------------------------------------------
Perintah untuk masuk/memilih database
Use nama_database;
------------------------------------------------

-------------------------------------------------------------------------------------------------------
TABLE
Tempat penyimpan banyak data (tetapi satu jenis umunya)
-------------------------------------------------------------------------------------------------------
Pengolahan data dengan fitur storage engines 
NB:InnoDB storage engines paling popular saat ini
Perintah untuk melihat storage engines apa saja yg ada di MySQL 
SHOW ENGINES;
-------------------------------------------------------------------------------------------------------
Perintah untuk melihat table
Show tables;
-------------------------------------------------------------------------------------------------------
Perintah untuk membuat table
CREATE TABLE nama_table
(
	Nama_Variabel1	type_data,
	Nama_Variabel2	type_data,
	Nama_Variabel3	type_data
)ENGINE = InnoDB;
-------------------------------------------------------------------------------------------------------
Perintah untuk melihat struktur table
DESC nama_tabel;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(menambah kolom & tipe datanya)
ALTER TABLE nama_table 
	ADD COLUMN	nama_column type_data;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(menghapus kolom)
ALTER TABLE nama_table 
	DROP COLUMN	nama_column;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(merubah nama kolom)
ALTER TABLE nama_table  
	RENAME COLUMN	nama_column TO nama_column_baru;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(merubah tipe datanya & posisi kolom diubah menjadi setelah kolom jumlah)
ALTER TABLE nama_table  
	MODIFY	nama_column type_data AFTER jumlah;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(merubah tipe datanya & posisi kolom diubah menjadi paling depan)
ALTER TABLE nama_table 
	MODIFY	nama_column type_data FIRST;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(NULL Value)
NB:Jika tidak ingin menerima nilai NULL, tambahkan NOT NULL setelah tipe data ketika membuat kolom
atau jika terlanjur sudah terbuat gunakan perintah berikut
ALTER TABLE nama_table  
	MODIFY	nama_column type_data not null;
-------------------------------------------------------------------------------------------------------
Perintah untuk mengubah/modifikasi table 
(Default Value)
NB:kolom yang tidak diberi nilai secara otomatis nilanya NULL, 
jika tidak ingin NULL kita tambahkan perintah DEFAULT beserta nilainya
ALTER TABLE nama_table  
	MODIFY	nama_column type_data not null default 0;
-------------------------------------------------------------------------------------------------------
Perintah untuk menghapus/membuat ulang table
NB:Menghapus semua datanya kemudian tablenya dibuat ulang, jadi tabelnya masih ada
TRUNCATE nama_tabel;
-------------------------------------------------------------------------------------------------------
Perintah untuk menghapus permanen table
DROP TABLE nama_tabel;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
INSERT
Memasukkan data ke dalam table
Menyebutkan kolom mana yang akan diisi, jika tidak maka NULL kecuali ada DEFAULT VALUE
Gunakan perintah UNSIGNED jika ingin angka tidak boleh negatif
-------------------------------------------------------------------------------------------------------
Perintah untuk memasukkan data
INSERT INTO nama_tabel(nama_column1, nama_column2, nama_column3)
VALUES(NilaiUntukColumn1, NilaiUntukColumn2, NilaiUntukColumn3);
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
SELECT
Untuk mengambil data di semua kolom atau sebagian saja
-------------------------------------------------------------------------------------------------------
SELECT 	#perintah untuk mengambil data
* 	    #artinya * mengambil data di semua kolom
FROM 	  #dari table mana
-------------------------------------------------------------------------------------------------------
perintah untuk mengambil data di semua kolom
SELECT * FROM nama_table;
-------------------------------------------------------------------------------------------------------
perintah untuk mengambil data di sebagian kolom
SELECT nama_column1, nama_column2, nama_column3 FROM nama_table;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
PRIMARY KEY
Kalau tidak ada primary key menyulitkan saat ingin mengetahui informasi ID UNIK dari tiap recordnya
Manfaatnya mencegah kita agar tidak bisa memasukkan data duplikat 
-------------------------------------------------------------------------------------------------------
Perintah untuk membuat primary key saat sekalian membuat table baru
tambahkan perintah berikut di dalam kurung saat sekalian membuat table baru  
PRIMARY KEY (nama_column); #menunjuk kolom X sebagai primary key 
-------------------------------------------------------------------------------------------------------
Jika tabelnya sudah terlanjur ada gunakan perintah ALTER TABLE
ALTER TABLE products
    ADD PRIMARY KEY (nama_column);
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
WHERE CLAUSE
Untuk mencari lebih detail data mana yang ingin kita ambil/tampilkan
Digabung menggunakan perintah SELECT
-------------------------------------------------------------------------------------------------------
SELECT 	#perintah untuk mengambil data
* 	#artinya * mengambil data di semua kolom
FROM 	#dari table mana
WHERE 	#nama_column/kolom apa = dengan value apa yang kita cari;
-------------------------------------------------------------------------------------------------------
Perintah untuk menampilkan data semua kolom dengan value apa yang dicari
SELECT *
FROM nama_table
WHERE nama_column = 'valuenya string';
-------------------------------------------------------------------------------------------------------
Perintah untuk menampilkan data sebagian kolom dengan value apa yang dicari
SELECT nama_column1, nama_column2, nama_column3
FROM  nama_table
WHERE nama_column = valuenya angka;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
UPDATE
Digabung dengan perintah WHERE
Hati-hati jika WHERE clausenya salah bisa malah mengupdate semua data di table
-------------------------------------------------------------------------------------------------------
Perintah untuk meng-update/ubah value kolom di beberapa kolom sesuai dengan where clausenya
UPDATE nama_table
SET nama_column1 = 'valuenya string',
    nama_column2 = valuenya angka
WHERE nama_column = 'valuenya string';
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
DELETE
Digabung dengan perintah WHERE
Hati-hati jika WHERE clausenya salah bisa malah kehapus semua data di table
-------------------------------------------------------------------------------------------------------
Perintah untuk menghapus data sesuai dengan where clausenya
DELETE
FROM nama_table
WHERE nama_column = valuenya;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
ALIAS
Berguna untuk ubah nama kolom/nama table ketika melakukan SELECT data
Juga mempermudah kita saat menggunakan perintah JOIN
-------------------------------------------------------------------------------------------------------
Perintah ALIAS untuk kolom
SELECT p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya
FROM nama_table;
-------------------------------------------------------------------------------------------------------
Perintah ALIAS untuk table
SELECT p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya
FROM nama_table AS p;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
WHERE OPERATOR
operator perbandingan, operator AND, operator OR, prioritas menggunakan tanda kurung, 
LIKE operator, NULL operator, BETWEEN operator, IN operator.
-------------------------------------------------------------------------------------------------------
Cari data dengan operator perbandingan
= 	(sama dengan)  
!= 	(tidak sama dengan)  
<  	(kurang dari)
<=  	(kurang dari sama dengan)
>  	(lebih dari)
>=	(lebih dari sama dengan)
-------------------------------------------------------------------------------------------------------
Perintah menggunakan operator perbandingan untuk mencari data
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya;
-------------------------------------------------------------------------------------------------------
Perintah menggunakan operator AND untuk mencari data
Harus benar dua-duanya yang akan muncul/ditampilkan
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya
  AND nama_column operator_perbandingannya valuenya;
-------------------------------------------------------------------------------------------------------
Perintah menggunakan operator OR untuk mencari data
Salah satu benar maka akan muncul/ditampilkan
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya
  OR nama_column operator_perbandingannya valuenya;
-------------------------------------------------------------------------------------------------------
Perintah prioritas menggunakan tanda kurung untuk mencari data
AND & OR didahulukan AND, jika ingin didahulukan OR kasih tanda kurung ()
Jadi jika kondisi OR terpenuhi maka hasilnya di proseskan ke AND
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE (nama_column operator_perbandingannya valuenya OR nama_column operator_perbandingannya valuenya)
  AND nama_column operator_perbandingannya valuenya;
-------------------------------------------------------------------------------------------------------
LIKE operator
Mencari Sebagian data dalam String
LIKE 'abc%' (menampilkan data yang mempunyai awalan abc)
LIKE '%abc' (menampilkan data yang mempunyai akhiran abc)
LIKE '%abc%' (menampilkan data yang mempunyai kata abc)
NOT LIKE 
-------------------------------------------------------------------------------------------------------
Perintah penggunaan LIKE operator
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column LIKE '%KataYangDicari%';
-------------------------------------------------------------------------------------------------------
NULL operator
Untuk mencari data NULL kita tidak bisa dengan operator perbandingan = NULL, tetapi dengan perintah
IS NULL		#cari yang NULL
IS NOT NULL 	#cari yang tdk NULL
-------------------------------------------------------------------------------------------------------
Perintah penggunaan NULL operator
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column IS NULL;
-------------------------------------------------------------------------------------------------------
BETWEEN operator
Sama dengan >= AND <= secara sekaligus
-------------------------------------------------------------------------------------------------------
Perintah penggunaan BETWEEN operator
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column BETWEEN valuenya1 AND valuenya2;
-------------------------------------------------------------------------------------------------------
IN operator
Pengganti OR lebih cepat
bisa juga NOT IN
-------------------------------------------------------------------------------------------------------
Perintah penggunaan IN operator
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column IN ('valuenya1', 'valuenya2');
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
ORDER BY
Mengurutkan data
ASC	: kecil ke besar
DESC	: besar ke kecil
Defaultnya ASC
-------------------------------------------------------------------------------------------------------
Perintah penggunaan ORDER BY
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
ORDER BY nama_column ASC;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
LIMIT
Membatasi jumlah data yang diambil 
Ambil seluruh data di table tidak bijak, apalagi datanya sudah banyak
-------------------------------------------------------------------------------------------------------
Perintah penggunaan LIMIT untuk membatasi hasil kueri
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
ORDER BY nama_column
LIMIT JumlahDataYangInginDitampilkan;
-------------------------------------------------------------------------------------------------------
Perintah penggunaan LIMIT untuk membatasi & menskip/offside hasil query
SELECT * #artinya * mengambil data di semua kolom
FROM nama_column
ORDER BY nama_column
LIMIT bil1, bil2; 
#bilangan pertama untuk skip berapa data dari data pertama 
#bilangan kedua untuk limit/JumlahDataYangInginDitampilkan 
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
DISTINCT
Untuk menghilangkan data duplicat
-------------------------------------------------------------------------------------------------------
Perintah penggunaan DISTINCT
SELECT DISTINCT nama_column
FROM nama_table;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
FUNGSI CONTROL FLOW
mirip/seperti perintah IF ELSE
CASE, IF, IFNULL
-------------------------------------------------------------------------------------------------------
Perintah menggunakan Control Flow CASE
mirip/seperti switch case
SELECT * #artinya * mengambil data di semua kolom
       CASE nama_column
           WHEN 'value' THEN 'value_baru'
           WHEN 'value' THEN 'value_baru'
           ELSE 'value'
           END AS 'nama_column' #tutup case & AS untuk menamai kolom baru untuk hasil Control Flow CASE
FROM nama_table;
---------------------------------------------------------------------------------------------------------------------
Perintah menggunakan Control Flow IF
SELECT * #artinya * mengambil data di semua kolom
       IF(nama_column <= parameter, 'valuenya', IF(nama_column <= parameter, 'valuenya', 'valuenya untuk else')) as 'nama_column untuk hasil Control Flow IF' 
FROM nama_table;
---------------------------------------------------------------------------------------------------------------------
Perintah menggunakan Control IFNULL
Mengecek apakah sebuah kolom itu nilainya NULL?, maka jika iya maka kita ganti valuenya
SELECT * #artinya * mengambil data di semua kolom
       IFNULL(nama_column, 'valuenya')
FROM nama_table;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
FUNGSI AGREGASI
Melihat/cari termahal, termurah, rata-rata, total, dll
Kolom harus 1 spesifik tidak bisa digabungkan karena hasilnya dapat kacau 
-------------------------------------------------------------------------------------------------------
Perintah untuk menghitung jumlah cell
SELECT COUNT(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
-------------------------------------------------------------------------------------------------------
Perintah untuk mencari nilai maksimal
SELECT MAX(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
-------------------------------------------------------------------------------------------------------
Perintah untuk mencari nilai minimal
SELECT MIN(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
-------------------------------------------------------------------------------------------------------
Perintah untuk mencari nilai rata-rata
SELECT AVG(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
-------------------------------------------------------------------------------------------------------
Perintah untuk mencari total nilai 
SELECT SUM(nama_column) AS 'nama_column untuk hasilnya'
FROM nama_table;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
GROUP BY
Kolom apapun tidak bisa digabung dengan fungsi agregasi, 
jadi solusinya bisa digabung dengan menambahkan GROUP BY nama_kolom yang ingin digabungkan, 
-------------------------------------------------------------------------------------------------------
Perintah penggunaan GROUP BY
SELECT COUNT(nama_table) as 'nama_column untuk hasilnya', nama_columnX
FROM nama_table
GROUP BY nama_columnX;
-------------------------------------------------------------------------------------------------------
HAVING
Filter data yang sudah di grouping
Jika menggunakan WHERE di SELECT tidak bisa karena merupakan FUNGSI AGREGASI
-------------------------------------------------------------------------------------------------------
Perintah penggunaan GROUP BY & HAVING
SELECT COUNT(nama_table) as 'nama_column untuk hasilnya', nama_columnX
FROM nama_table
GROUP BY nama_columnX
HAVING nama_column operator_perbandingannya valuenya;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
Jenis JOIN
INNER, LEFT, RIGHT, CROSS
Melakukan penggabungan 2 Table
-------------------------------------------------------------------------------------------------------
INNER JOIN
Default JOIN
Tabel A tidak memiliki relasi di table B atau sebaliknya, 
Jika tidak ber-relasi hasil tidak ditampilkan
-------------------------------------------------------------------------------------------------------
Perintah penggunaan INNER JOIN
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         INNER JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
-------------------------------------------------------------------------------------------------------
LEFT JOIN
Seperti inner join tetapi semua data di table A akan diambil juga,
Jika tidak punya relasi di table B maka hasilnya NULL
-------------------------------------------------------------------------------------------------------
Perintah penggunaan LEFT JOIN
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         LEFT JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
-------------------------------------------------------------------------------------------------------
RIGHT JOIN
Kebalikan left join 
-------------------------------------------------------------------------------------------------------
Perintah penggunaan RIGHT JOIN
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         RIGHT JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
-------------------------------------------------------------------------------------------------------
CROSS JOIN
Jarang sekali digunakan
Jika ada 5 data di table A & ada 6 data di table B akan dikali jadi menghasilkan 30 data kombinasi
-------------------------------------------------------------------------------------------------------
Perintah penggunaan CROSS JOIN
SELECT *
FROM nama_tableA
         CROSS JOIN nama_tableB;
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
Backup Database
MySQL menyediakan aplikasi khusus untuk backup database bernama mysqldump 
-------------------------------------------------------------------------------------------------------
mysqldump nama_database --user root --password xxxxx --result-file=/lokasi file/file.sql
