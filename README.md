# MySQL | MariaDB
![mariadb-and-mysql](https://user-images.githubusercontent.com/86678205/153581777-0616926e-8e3f-479b-8a81-d12a686bd142.png)

## DATABASE
 - Tempat penyimpan banyak table


#### Perintah untuk melihat semua database di MySQL

```http
  show databases;
```

#### Perintah untuk membuat database
 - NB : tidak boleh ada spasi
```http
Create database nama_database;
```

#### Perintah untuk menghapus database
 - NB : hati-hati lebih baik di backup dulu
```http
Drop database nama_database;
```

#### Perintah untuk masuk/memilih database
```http
Use nama_database;
```

## TABLE
 - Tempat penyimpan banyak data (tetapi satu jenis umunya)

 #### Perintah untuk melihat storage engines apa saja yg ada di MySQL 
 - Pengolahan data dengan fitur storage engines
 - NB : InnoDB storage engines paling popular saat ini
```http
SHOW ENGINES;
```
###
![baris 1](https://user-images.githubusercontent.com/86678205/154797720-f6c8c947-9afc-4e71-a751-47e227704d77.PNG)

#### Perintah untuk melihat table
```http
Show tables;
```
###
![baris 3-11](https://user-images.githubusercontent.com/86678205/154797722-55fbe0f1-fb4f-47c9-b80e-40dd70d4fa51.PNG)

#### Perintah untuk membuat table
```http
CREATE TABLE nama_tabel
(
	Nama_Variabel1	type_data,
	Nama_Variabel2	type_data,
	Nama_Variabel3	type_data
)ENGINE = InnoDB;
```

#### Perintah untuk melihat struktur table
```http
DESC nama_tabel;
```
atau
```http
DESCIBE nama_tabel;
```
###
![baris 13](https://user-images.githubusercontent.com/86678205/154797723-48bca3d1-91db-4c62-8d6a-2144bdac0de5.PNG)

#### Perintah untuk melihat struktur table bentuk lain
```http
SHOW CREATE TABLE nama_tabel;
```
###
![baris 15](https://user-images.githubusercontent.com/86678205/154797724-cb10227d-50b5-4d1e-aed7-834b1e7d0af7.PNG)

#### Perintah untuk mengubah/modifikasi table (menambah kolom & tipe datanya)
```http
ALTER TABLE nama_table 
	ADD COLUMN nama_column type_data;
```
###
![baris 17-18](https://user-images.githubusercontent.com/86678205/154797725-a016b78b-92f8-48f7-8988-05f8c5bfcd2e.PNG)

#### Perintah untuk mengubah/modifikasi table (menghapus kolom)
```http
ALTER TABLE nama_table 
	DROP COLUMN nama_column;
```
###
![baris 22-26](https://user-images.githubusercontent.com/86678205/154797726-b06ac6b9-9582-47e8-9bd8-6e168500b443.PNG)

#### Perintah untuk mengubah/modifikasi table (merubah nama kolom)
```http
ALTER TABLE nama_table  
	RENAME COLUMN nama_column TO nama_column_baru;
```

#### Perintah untuk mengubah/modifikasi table (merubah tipe datanya & posisi kolom diubah menjadi setelah kolom deskripsi)
```http
ALTER TABLE nama_table  
	MODIFY	nama_column type_data AFTER deskripsi;
```
###
![baris 28-29](https://user-images.githubusercontent.com/86678205/154797727-27dd20ae-23da-48f5-80ee-0488c89d1799.PNG)

#### Perintah untuk mengubah/modifikasi table (merubah tipe datanya & posisi kolom diubah menjadi paling depan)
```http
ALTER TABLE nama_table 
	MODIFY	nama_column type_data FIRST;
```
###
![baris 33-34](https://user-images.githubusercontent.com/86678205/154797728-4a66c9e4-7800-433a-be04-0d00ee60f8cd.PNG)

#### Perintah untuk mengubah/modifikasi table (NULL Value)
- NB : Jika tidak ingin menerima nilai NULL, tambahkan NOT NULL setelah tipe data ketika membuat kolom atau jika terlanjur sudah terbuat gunakan perintah berikut
```http
ALTER TABLE nama_table  
	MODIFY	nama_column type_data not null;
```
###
![baris 40-41](https://user-images.githubusercontent.com/86678205/154797729-547a162b-5dfc-4a3f-9ead-e51dd1c4a748.PNG)
###
![baris 45-46](https://user-images.githubusercontent.com/86678205/154797730-1b859963-7c1e-420d-90d5-19a23c3d8c94.PNG)

#### Perintah untuk mengubah/modifikasi table (Default Value)
- NB : kolom yang tidak diberi nilai secara otomatis nilanya NULL, jika tidak ingin NULL kita tambahkan perintah DEFAULT beserta nilainya
```http
ALTER TABLE nama_table  
	MODIFY	nama_column type_data not null default 0;
```
###
![baris 50-51](https://user-images.githubusercontent.com/86678205/154797731-c23f380f-98c3-4275-8611-440597fa0cd2.PNG)
###
![baris 55-56](https://user-images.githubusercontent.com/86678205/154797732-f578db9f-ccc4-4117-b31c-ca08c83c3b6a.PNG)

#### Perintah untuk menghapus/membuat ulang table
- NB : Menghapus semua datanya kemudian tablenya dibuat ulang, jadi tabelnya masih ada
```http
TRUNCATE nama_tabel;
```

#### Perintah untuk menghapus permanen table
```http
DROP TABLE nama_tabel;
```

## INSERT
 - Memasukkan data ke dalam table
 - Menyebutkan kolom mana yang akan diisi, jika tidak maka NULL kecuali ada DEFAULT VALUE
 - Gunakan perintah UNSIGNED jika ingin angka tidak boleh negatif

Terlebih dahulu kita membuat table baru/tambahan
###
![baris 1-9](https://user-images.githubusercontent.com/86678205/154797786-e5db601d-d0b1-471f-87c5-732a4ecd5d81.PNG)
###
![baris 3-11](https://user-images.githubusercontent.com/86678205/154797722-55fbe0f1-fb4f-47c9-b80e-40dd70d4fa51.PNG)

 #### Perintah untuk memasukkan data
```http
INSERT INTO nama_tabel(nama_column1, nama_column2, nama_column3)
VALUES(NilaiUntukColumn1, NilaiUntukColumn2, NilaiUntukColumn3);
```

## SELECT
 - Untuk mengambil data di semua kolom atau sebagian saja
 - SELECT 	#perintah untuk mengambil data
 - '*' #artinya * mengambil data di semua kolom
 - FROM 	#dari table mana

 #### perintah untuk mengambil data di semua kolom
```http
SELECT * FROM nama_table;
```
###
![baris 13](https://user-images.githubusercontent.com/86678205/154797723-48bca3d1-91db-4c62-8d6a-2144bdac0de5.PNG)
###
![baris 15-19](https://user-images.githubusercontent.com/86678205/154797790-84b09953-5eb1-4dc8-a7f5-af3809e10db0.PNG)

 #### perintah untuk mengambil data di sebagian kolom
```http
SELECT DISTINCT nama_column1, nama_column2 FROM nama_table;
```
dan
```http
SELECT nama_column1, nama_column2, nama_column3 FROM nama_table;
```
###
![baris 21-23](https://user-images.githubusercontent.com/86678205/154797791-d97388ed-5248-4e44-bd1f-bf73e65e290a.PNG)
###
![baris 38-39](https://user-images.githubusercontent.com/86678205/154797792-6eab80ac-cad7-46d4-a79f-2a78d5851466.PNG)
###
![baris 41-42](https://user-images.githubusercontent.com/86678205/154797794-15be359d-31a4-4718-a6bf-4c13ee6744ce.PNG)

## PRIMARY KEY
 - Kalau tidak ada primary key menyulitkan saat ingin mengetahui informasi ID UNIK dari tiap recordnya
 - Manfaatnya mencegah kita agar tidak bisa memasukkan data duplikat

 #### Perintah untuk membuat primary key saat sekalian membuat table baru
 - tambahkan perintah berikut di dalam kurung saat sekalian membuat table baru
```http
PRIMARY KEY (nama_column); #menunjuk kolom X sebagai primary key 
```
- Jika tabelnya sudah terlanjur ada gunakan perintah ALTER TABLE
```http
ALTER TABLE products
    ADD PRIMARY KEY (nama_column);
```
###
![baris 44-45](https://user-images.githubusercontent.com/86678205/154797796-d141371e-dc24-42c5-86bd-58631c6f32d7.PNG)

## WHERE CLAUSE
 - Untuk mencari lebih detail data mana yang ingin kita ambil/tampilkan
 - Digabung menggunakan perintah SELECT
 - SELECT 	#perintah untuk mengambil data
 - '*' 	#artinya * mengambil data di semua kolom
 - FROM #dari table mana
 - WHERE #nama_column/kolom apa = dengan value apa yang kita cari;

Terlebih dahulu kita menambah data baru/tambahan
###
![baris 47-48](https://user-images.githubusercontent.com/86678205/154797797-7ea17474-6d8e-49e3-81dd-6399cc808c9b.PNG)

#### Perintah untuk menampilkan data semua kolom dengan value apa yang dicari
```http
SELECT *
FROM nama_table
WHERE nama_column = 'valuenya string';
```
###
![baris 61-63](https://user-images.githubusercontent.com/86678205/154797801-d65a2287-715b-414b-8743-0cb9f427ccf2.PNG)
###
![baris 65-67](https://user-images.githubusercontent.com/86678205/154797803-a48fbb73-3767-446a-a1de-b36341d85ce6.PNG)

#### Perintah untuk menampilkan data sebagian kolom dengan value apa yang dicari
```http
SELECT nama_column1, nama_column2, nama_column3
FROM  nama_table
WHERE nama_column = valuenya angka;
```
###
![baris 54-55](https://user-images.githubusercontent.com/86678205/154797798-c615b766-13fb-4a23-8ec5-7bebdafea68a.PNG)
###
![baris 57-59](https://user-images.githubusercontent.com/86678205/154797799-8870b994-0283-4bf6-b1b6-37873fb0d129.PNG)

## UPDATE
 - Digabung dengan perintah WHERE
 - Hati-hati jika WHERE clausenya salah bisa malah mengupdate semua data di table

#### Perintah untuk meng-update/ubah value kolom di beberapa kolom sesuai dengan where clausenya
```http
UPDATE nama_table
SET nama_column1 = 'valuenya string',
    nama_column2 = valuenya angka
WHERE nama_column = 'valuenya string';
```

## DELETE
 - Digabung dengan perintah WHERE
 - Hati-hati jika WHERE clausenya salah bisa malah kehapus semua data di table

#### Perintah untuk menghapus data sesuai dengan where clausenya
```http
DELETE
FROM nama_table
WHERE nama_column = valuenya;
```

## ALIAS
 - Berguna untuk ubah nama kolom/nama table ketika melakukan SELECT data
 - Juga mempermudah kita saat menggunakan perintah JOIN

#### Perintah ALIAS untuk kolom
```http
SELECT nama_column AS nama_aliasnya,
       nama_column AS nama_aliasnya,
       nama_column AS nama_aliasnya
FROM nama_table;
```

#### Perintah ALIAS untuk table
```http
SELECT p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya,
       p.nama_column AS nama_aliasnya
FROM nama_table AS p;
```

## WHERE OPERATOR
 - operator perbandingan, operator AND, operator OR, prioritas menggunakan tanda kurung, LIKE operator, NULL operator, BETWEEN operator, IN operator.
 - Cari data dengan operator perbandingan (=, !=, <, <=, >, >=)

#### Perintah menggunakan operator perbandingan untuk mencari data
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya;
```

#### Perintah menggunakan operator AND untuk mencari data
- Harus benar dua-duanya yang akan muncul/ditampilkan
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya
  AND nama_column operator_perbandingannya valuenya;
```

#### Perintah menggunakan operator OR untuk mencari data
- Salah satu benar maka akan muncul/ditampilkan
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column operator_perbandingannya valuenya
  OR nama_column operator_perbandingannya valuenya;
```

#### Perintah prioritas menggunakan tanda kurung untuk mencari data
- AND & OR didahulukan AND, jika ingin didahulukan OR kasih tanda kurung ()
- Jadi jika kondisi OR terpenuhi maka hasilnya di proseskan ke AND
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE (nama_column operator_perbandingannya valuenya OR nama_column operator_perbandingannya valuenya)
  AND nama_column operator_perbandingannya valuenya;
```

## LIKE operator
 - Mencari Sebagian data dalam String
 - LIKE 'abc%' (menampilkan data yang mempunyai awalan abc)
 - LIKE '%abc' (menampilkan data yang mempunyai akhiran abc)
 - LIKE '%abc%' (menampilkan data yang mempunyai kata abc)
 - NOT LIKE 

#### Perintah penggunaan LIKE operator
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column LIKE '%KataYangDicari%';
```

## NULL operator
 - Untuk mencari data NULL kita tidak bisa dengan operator perbandingan = NULL, tetapi dengan perintah :
 - IS NULL #cari yang NULL
 - IS NOT NULL #cari yang tdk NULL

#### Perintah penggunaan NULL operator
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column IS NULL;
```

## BETWEEN operator
 - Sama dengan >= AND <= secara sekaligus

#### Perintah penggunaan BETWEEN operator
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column BETWEEN valuenya1 AND valuenya2;
```

## IN operator
 - Pengganti OR lebih cepat
 - bisa juga NOT IN

#### Perintah penggunaan IN operator
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
WHERE nama_column IN ('valuenya1', 'valuenya2');
```

## ORDER BY
 - Mengurutkan data
 - ASC	: kecil ke besar (default-nya)
 - DESC	: besar ke kecil

#### Perintah penggunaan ORDER BY
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
ORDER BY nama_column ASC;
```

## LIMIT
 - Membatasi jumlah data yang diambil
 - Ambil seluruh data di table tidak bijak, apalagi datanya sudah banyak

#### Perintah penggunaan LIMIT untuk membatasi hasil kueri
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_table
ORDER BY nama_column
LIMIT JumlahDataYangInginDitampilkan;
```

#### Perintah penggunaan LIMIT untuk membatasi & menskip/offside hasil query
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_column
ORDER BY nama_column
LIMIT bil1, bil2; 
#bilangan pertama untuk skip berapa data dari data pertama 
#bilangan kedua untuk limit/JumlahDataYangInginDitampilkan 
```

## DISTINCT
 - Untuk menghilangkan data duplicat

#### Perintah penggunaan DISTINCT
```http
SELECT DISTINCT nama_column
FROM nama_table;
```

## FUNGSI CONTROL FLOW
 - mirip/seperti perintah IF ELSE
 - jenis control flow : CASE, IF, IFNULL

#### Perintah menggunakan Control Flow CASE
 - mirip/seperti switch case
```http
SELECT * #artinya * mengambil data di semua kolom
       CASE nama_column
           WHEN 'value' THEN 'value_baru'
           WHEN 'value' THEN 'value_baru'
           ELSE 'value'
           END AS 'nama_column' #tutup case & AS untuk menamai kolom baru untuk hasil Control Flow CASE
FROM nama_table;
```

#### Perintah menggunakan Control Flow IF
```http
SELECT * #artinya * mengambil data di semua kolom
       IF(nama_column <= parameter, 'valuenya', IF(nama_column <= parameter, 'valuenya', 'valuenya untuk else')) as 'nama_column untuk hasil Control Flow IF' 
FROM nama_table;
```

#### Perintah menggunakan Control IFNULL
 - Mengecek apakah sebuah kolom itu nilainya NULL?, maka jika iya maka kita ganti valuenya
```http
SELECT * #artinya * mengambil data di semua kolom
       IFNULL(nama_column, 'valuenya')
FROM nama_table;
```

## FUNGSI AGREGASI
 - Melihat/cari termahal, termurah, rata-rata, total, dll
 - Kolom harus 1 spesifik tidak bisa digabungkan karena hasilnya dapat kacau

#### Perintah untuk menghitung jumlah cell
```http
SELECT COUNT(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
```

#### Perintah untuk mencari nilai maksimal
```http
SELECT MAX(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
```

#### Perintah untuk mencari nilai minimal
```http
SELECT MIN(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
```

#### Perintah untuk mencari nilai rata-rata
```http
SELECT AVG(nama_column) as 'nama_column untuk hasilnya'
FROM nama_table;
```

#### Perintah untuk mencari total nilai 
```http
SELECT SUM(nama_column) AS 'nama_column untuk hasilnya'
FROM nama_table;
```

## GROUP BY
 - Kolom apapun tidak bisa digabung dengan fungsi agregasi, jadi solusinya bisa digabung dengan menambahkan GROUP BY nama_kolom yang ingin digabungkan

#### Perintah penggunaan GROUP BY
```http
SELECT COUNT(nama_table) as 'nama_column untuk hasilnya', nama_columnX
FROM nama_table
GROUP BY nama_columnX;
```

## HAVING
 - Filter data yang sudah di grouping
 - Jika menggunakan WHERE di SELECT tidak bisa karena merupakan FUNGSI AGREGASI

#### Perintah penggunaan GROUP BY & HAVING
```http
SELECT COUNT(nama_table) as 'nama_column untuk hasilnya', nama_columnX
FROM nama_table
GROUP BY nama_columnX
HAVING nama_column operator_perbandingannya valuenya;
```

## JOIN
 - Jenis JOIN : INNER, LEFT, RIGHT, CROSS
 - Melakukan penggabungan 2 Table

## INNER JOIN
 - Default-nya JOIN
 - Tabel A tidak memiliki relasi di table B atau sebaliknya, 
 - Jika tidak ber-relasi hasil tidak ditampilkan

#### Perintah penggunaan INNER JOIN
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         INNER JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
```

## LEFT JOIN
 - Seperti inner join tetapi semua data di table A akan diambil juga,
 - Jika tidak punya relasi di table B maka hasilnya NULL

#### Perintah penggunaan LEFT JOIN
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         LEFT JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
```

## RIGHT JOIN
 - Kebalikan left join 

#### Perintah penggunaan RIGHT JOIN
```http
SELECT * #artinya * mengambil data di semua kolom
FROM nama_tableA
         RIGHT JOIN nama_tableB ON (nama_tableA.nama_column = nama_tableB.nama_column);
```

## CROSS JOIN
 - Jarang sekali digunakan
 - Jika ada 5 data di table A & ada 6 data di table B akan dikali jadi menghasilkan 30 data kombinasi

#### Perintah penggunaan CROSS JOIN
```http
SELECT *
FROM nama_tableA
         CROSS JOIN nama_tableB;
```

## Backup Database
 - MySQL menyediakan aplikasi khusus untuk backup database bernama mysqldump

#### Perintah untuk mem-backup database
```http
mysqldump nama_database --user root --password xxxxx --result-file=/lokasi file/file.sql
```

## Screenshot 
![baris 1](https://user-images.githubusercontent.com/86678205/154797720-f6c8c947-9afc-4e71-a751-47e227704d77.PNG)
##
![baris 3-11](https://user-images.githubusercontent.com/86678205/154797722-55fbe0f1-fb4f-47c9-b80e-40dd70d4fa51.PNG)
##
![baris 13](https://user-images.githubusercontent.com/86678205/154797723-48bca3d1-91db-4c62-8d6a-2144bdac0de5.PNG)
##
![baris 15](https://user-images.githubusercontent.com/86678205/154797724-cb10227d-50b5-4d1e-aed7-834b1e7d0af7.PNG)
##
![baris 17-18](https://user-images.githubusercontent.com/86678205/154797725-a016b78b-92f8-48f7-8988-05f8c5bfcd2e.PNG)
##
![baris 22-26](https://user-images.githubusercontent.com/86678205/154797726-b06ac6b9-9582-47e8-9bd8-6e168500b443.PNG)
##
![baris 28-29](https://user-images.githubusercontent.com/86678205/154797727-27dd20ae-23da-48f5-80ee-0488c89d1799.PNG)
##
![baris 33-34](https://user-images.githubusercontent.com/86678205/154797728-4a66c9e4-7800-433a-be04-0d00ee60f8cd.PNG)
##
![baris 40-41](https://user-images.githubusercontent.com/86678205/154797729-547a162b-5dfc-4a3f-9ead-e51dd1c4a748.PNG)
##
![baris 45-46](https://user-images.githubusercontent.com/86678205/154797730-1b859963-7c1e-420d-90d5-19a23c3d8c94.PNG)
##
![baris 50-51](https://user-images.githubusercontent.com/86678205/154797731-c23f380f-98c3-4275-8611-440597fa0cd2.PNG)
##
![baris 55-56](https://user-images.githubusercontent.com/86678205/154797732-f578db9f-ccc4-4117-b31c-ca08c83c3b6a.PNG)
##
![baris 60-61](https://user-images.githubusercontent.com/86678205/154797734-f3475f8b-260c-400f-927e-bbc4298669c2.PNG)
##
![baris 63-64](https://user-images.githubusercontent.com/86678205/154797735-ed1245d1-b97b-455b-91f7-27ffa1d4b8a7.PNG)

## Screenshot 
![baris 1-9](https://user-images.githubusercontent.com/86678205/154797786-e5db601d-d0b1-471f-87c5-732a4ecd5d81.PNG)
##
![baris 13](https://user-images.githubusercontent.com/86678205/154797789-8b03d44e-8ba8-4c67-a835-cb428d229b08.PNG)
##
![baris 15-19](https://user-images.githubusercontent.com/86678205/154797790-84b09953-5eb1-4dc8-a7f5-af3809e10db0.PNG)
##
![baris 21-23](https://user-images.githubusercontent.com/86678205/154797791-d97388ed-5248-4e44-bd1f-bf73e65e290a.PNG)
##
![baris 38-39](https://user-images.githubusercontent.com/86678205/154797792-6eab80ac-cad7-46d4-a79f-2a78d5851466.PNG)
##
![baris 41-42](https://user-images.githubusercontent.com/86678205/154797794-15be359d-31a4-4718-a6bf-4c13ee6744ce.PNG)
##
![baris 44-45](https://user-images.githubusercontent.com/86678205/154797796-d141371e-dc24-42c5-86bd-58631c6f32d7.PNG)
##
![baris 47-48](https://user-images.githubusercontent.com/86678205/154797797-7ea17474-6d8e-49e3-81dd-6399cc808c9b.PNG)
##
![baris 54-55](https://user-images.githubusercontent.com/86678205/154797798-c615b766-13fb-4a23-8ec5-7bebdafea68a.PNG)
##
![baris 57-59](https://user-images.githubusercontent.com/86678205/154797799-8870b994-0283-4bf6-b1b6-37873fb0d129.PNG)
##
![baris 61-63](https://user-images.githubusercontent.com/86678205/154797801-d65a2287-715b-414b-8743-0cb9f427ccf2.PNG)
##
![baris 65-67](https://user-images.githubusercontent.com/86678205/154797803-a48fbb73-3767-446a-a1de-b36341d85ce6.PNG)
##
![baris 69-71](https://user-images.githubusercontent.com/86678205/154797805-9b2bb3c0-b14e-4389-88cb-808d015535e1.PNG)
##
![baris 73](https://user-images.githubusercontent.com/86678205/154797806-c251d024-145d-4403-bf59-1bc0f56e35fa.PNG)
##
![baris 75-77](https://user-images.githubusercontent.com/86678205/154797808-1e040c41-c108-49d6-aae5-52006f029c04.PNG)
##
![baris 79-80](https://user-images.githubusercontent.com/86678205/154797809-5fc41cd3-0e25-4dc7-ae0a-953a12df2770.PNG)
##
![baris 82-84](https://user-images.githubusercontent.com/86678205/154797810-2091a730-edee-45eb-aa9c-31289202e00f.PNG)
##
![baris 86-88](https://user-images.githubusercontent.com/86678205/154797811-442c108f-7c4f-447a-a529-164f66958eb9.PNG)
##
![baris 90-93](https://user-images.githubusercontent.com/86678205/154797812-ddfc2773-286b-4e15-aa71-d5315a4ec6e8.PNG)
##
![baris 99-101](https://user-images.githubusercontent.com/86678205/154797813-53442ac0-5383-4139-868b-ef3ea28eb95a.PNG)
##
![baris 106-111](https://user-images.githubusercontent.com/86678205/154797816-3cff6f13-4cd9-4737-a28f-2a5c8e89845d.PNG)
##
![baris 114-119](https://user-images.githubusercontent.com/86678205/154797818-c4146bb6-37b8-48ef-834f-766a605815c1.PNG)
##
![baris 128-135](https://user-images.githubusercontent.com/86678205/154797819-ed7933cb-cb3a-4afb-9f81-e96de2160614.PNG)
##
![baris 140-142](https://user-images.githubusercontent.com/86678205/154797821-0c4830cc-bb2a-43d4-ae15-853ec71b6f59.PNG)
##
![baris 144-146](https://user-images.githubusercontent.com/86678205/154797823-0cb10255-d600-4d94-b925-bcd5f6c7e0df.PNG)
##
![baris 148-150](https://user-images.githubusercontent.com/86678205/154797825-bd070bb1-e6a6-4a2e-981f-4ac2a2c31e83.PNG)
##
![baris 152-154](https://user-images.githubusercontent.com/86678205/154797826-821985ba-7c69-4fd1-9388-248e5caf18b8.PNG)
##
![baris 156-159](https://user-images.githubusercontent.com/86678205/154797827-5b609e88-51b2-4fbf-bcc7-4e6e257cb567.PNG)
##
![baris 161-164](https://user-images.githubusercontent.com/86678205/154797828-24b021ef-3b89-4dee-975a-5864100b3203.PNG)
##
![baris 166-169](https://user-images.githubusercontent.com/86678205/154797829-fa081654-5b7b-45ad-a4ab-0e1a53f8f3ad.PNG)
##
![baris 171-174](https://user-images.githubusercontent.com/86678205/154797830-afe09024-a893-4c8a-bbed-5a7de282505e.PNG)
##
![baris 176-178](https://user-images.githubusercontent.com/86678205/154797831-39e2386f-55ae-45b0-8067-c0c354db6cfb.PNG)
##
![baris 180-182](https://user-images.githubusercontent.com/86678205/154797834-ea8d4b14-c415-4a0d-a607-bf432c24b865.PNG)
##
![baris 184-186](https://user-images.githubusercontent.com/86678205/154797835-9d60a3d5-46f2-4724-a2a1-f44cdb6d12f9.PNG)
##
![baris 188-190](https://user-images.githubusercontent.com/86678205/154797837-32390cea-13ce-4491-8a61-cd4253a91e9e.PNG)
##
![baris 192-194](https://user-images.githubusercontent.com/86678205/154797839-4cd5a44d-9e49-4e47-8c82-bfd0b2c86826.PNG)
##
![baris 196-198](https://user-images.githubusercontent.com/86678205/154797842-61f5cd4f-f8e6-48dd-9b28-ed89f67965c6.PNG)
##
![baris 200-202](https://user-images.githubusercontent.com/86678205/154797844-ba5127b4-ab7e-4f88-a7bf-01ae9204cd64.PNG)
##
![baris 204-206](https://user-images.githubusercontent.com/86678205/154797846-2188d930-7adf-46f8-8fa3-45039707fbd0.PNG)
##
![baris 208-210](https://user-images.githubusercontent.com/86678205/154797847-e232576d-f1b2-4add-9bc2-eb21902e7525.PNG)
##
![baris 212-214](https://user-images.githubusercontent.com/86678205/154797848-55873851-60ce-4f12-af1b-7b41f87f645b.PNG)
##
![baris 216-218](https://user-images.githubusercontent.com/86678205/154797849-c1e9df0e-f45b-432a-a339-1e6fb648f68a.PNG)
##
![baris 220-223](https://user-images.githubusercontent.com/86678205/154797851-05ecf7c7-d23c-45ac-a652-33428bb4fd4a.PNG)
##
![baris 225-228](https://user-images.githubusercontent.com/86678205/154797852-4ccca77c-88c7-46df-9a6d-3577c55908c1.PNG)
##
![baris 230-233](https://user-images.githubusercontent.com/86678205/154797853-6990a3d6-5698-4ebd-8a0c-1e5c171174ee.PNG)
##
![baris 235-238](https://user-images.githubusercontent.com/86678205/154797854-230a74ec-60cd-4e00-8ec3-51fe5af42fef.PNG)
##
![baris 240-243](https://user-images.githubusercontent.com/86678205/154797855-fada7a7a-d503-4b13-b6ea-48059e8acdd2.PNG)
##
![baris 245-248](https://user-images.githubusercontent.com/86678205/154797856-494d1b32-ea71-4666-9daa-ce6defaafcb8.PNG)
##
![baris 250-251](https://user-images.githubusercontent.com/86678205/154797857-e8b6259a-5a8c-4717-84d5-0311350d6b46.PNG)
##
![baris 253](https://user-images.githubusercontent.com/86678205/154797858-d5d29b49-6825-43df-897b-a7b5ed88b65e.PNG)
##
![baris 255-256](https://user-images.githubusercontent.com/86678205/154797860-995657c6-c9ab-4ae3-a824-5b4791d17d3b.PNG)
##
![baris 258-259](https://user-images.githubusercontent.com/86678205/154797861-a4ea88d6-6e1c-4104-971b-b613a329e4c3.PNG)
##
![baris 261-263](https://user-images.githubusercontent.com/86678205/154797862-d0cecfb4-f902-42fe-966a-fdbe50628c13.PNG)
##
![baris 265-269](https://user-images.githubusercontent.com/86678205/154797865-52a13daf-51f3-429a-acad-3e28d2408198.PNG)
##
![baris 271-275](https://user-images.githubusercontent.com/86678205/154797866-6e52eaba-82ca-4fe2-beb0-e1c61bdcf07b.PNG)
##
![baris 277-278](https://user-images.githubusercontent.com/86678205/154797868-75e77038-a504-41d1-befd-b4a8ef672124.PNG)
##
![baris 280-288](https://user-images.githubusercontent.com/86678205/154797869-3d94945e-c5a8-4939-b2a5-d552446cbdaf.PNG)
##
![baris 290-294](https://user-images.githubusercontent.com/86678205/154797870-6c0b66d3-9923-4fa8-af2a-5c954668b4fc.PNG)
##
![baris 296-297](https://user-images.githubusercontent.com/86678205/154797872-a400a848-0ca9-4069-845e-75b76be09995.PNG)
##
![baris 299-300](https://user-images.githubusercontent.com/86678205/154797875-d204803c-129a-4f69-90c8-00c8adce17ff.PNG)
##
![baris 302-303](https://user-images.githubusercontent.com/86678205/154797876-2c591b60-7a88-40f2-8432-1013abb3589c.PNG)
##
![baris 305-306](https://user-images.githubusercontent.com/86678205/154797877-25926191-98b1-4179-892b-127bb4ce0862.PNG)
##
![baris 308-309](https://user-images.githubusercontent.com/86678205/154797878-defa7e81-0a14-4734-96fc-9ebd0dc2e4de.PNG)
##
![baris 311-312](https://user-images.githubusercontent.com/86678205/154797879-7a1f8ad4-e443-4e3a-8c60-3241d7ee81f7.PNG)
##
![baris 314-316](https://user-images.githubusercontent.com/86678205/154797881-cec35335-31f8-4e6c-8679-6a3ef92b56ac.PNG)
##
![baris 318-320](https://user-images.githubusercontent.com/86678205/154797883-19d16190-03d3-447e-bdb7-81271e914edf.PNG)
##
![baris 322-324](https://user-images.githubusercontent.com/86678205/154797885-70eb330a-96c9-4d40-a6d0-4b4943df6c52.PNG)
##
![baris 326-328](https://user-images.githubusercontent.com/86678205/154797887-7beb18c8-a8a8-4e78-a6f3-9ef233975961.PNG)
##
![baris 330-332](https://user-images.githubusercontent.com/86678205/154797888-ffba2059-0612-4d41-9b0e-2dee477493d2.PNG)
##
![baris 334-338](https://user-images.githubusercontent.com/86678205/154797889-d5a96230-530d-4444-9d47-0426e5001fbf.PNG)
##
![baris 340-341](https://user-images.githubusercontent.com/86678205/154797891-5c9f2301-66f6-415e-9116-27f1bfb32337.PNG)
##
![baris 373-376](https://user-images.githubusercontent.com/86678205/154797892-b0571255-9d96-4e55-ad6a-e04b93007f30.PNG)
##
![baris 378-381](https://user-images.githubusercontent.com/86678205/154797893-d3fecd92-eb08-4249-ad74-ef9d8ee503d7.PNG)
##
![baris 383-386](https://user-images.githubusercontent.com/86678205/154797895-560bdb0a-bf37-4ce9-8472-5a1dc43bbf99.PNG)
##
![baris 388-391](https://user-images.githubusercontent.com/86678205/154797897-2a2a92c4-2bd2-4927-9264-3842798c2365.PNG)
##
![baris 398-405](https://user-images.githubusercontent.com/86678205/154797899-58c88198-e4e6-4363-ba98-cd7033c3338e.PNG)
##
![baris 410-412](https://user-images.githubusercontent.com/86678205/154797900-a3781225-5b62-4d54-b61d-20fa5ef87810.PNG)
##
![baris 414-415](https://user-images.githubusercontent.com/86678205/154797901-8a8bc9fd-1b4d-4b31-9917-ef1c57487f62.PNG)
