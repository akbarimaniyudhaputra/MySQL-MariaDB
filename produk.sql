CREATE TABLE produk
(
    kode          	VARCHAR(10)  NOT NULL,
    nama_produk    	VARCHAR(100) NOT NULL,
    description TEXT,
    harga       	INT UNSIGNED NOT NULL,
    stok    		INT UNSIGNED NOT NULL DEFAULT 0,
    tanggal_dibuat  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

SHOW TABLES;

DESCRIBE produk;

INSERT INTO produk(kode, nama_produk, harga, stok)
VALUES ('K01', 'Xiaomi-POCO-X3-Pro', 3599000, 1132);

SELECT *
FROM produk;

INSERT INTO produk(kode, nama_produk, description, harga, stok)
VALUES ('K02', 'Xiaomi-POCO-X3-GT-ExtraMemori', 'ExtraMemori', 4699000, 676);

INSERT INTO produk(kode, nama_produk, harga, stok)
VALUES ('K03', 'Samsung-Galaxy-A22-LTE-Black', 2999000, 229),
       ('K04', 'Samsung-Galaxy-A12-Blue', 2299000, 172),
       ('K05', 'Oppo-Reno-5', 4499000, 263),
	   ('K06', 'Realme-C21Y', 1799000, 65),
       ('K07', 'Realme-GT-MasterEdition', 4999000, 106),
       ('K08', 'Vivo-Y-12s', 1899000, 66),
       ('K09', 'Vivo-Y-53s-Blue', 3699000, 67),
       ('K10', 'Huawei-Nova-9', 7599000, 44),
       ('K11', 'Huawei-Mate-Xs-5G', 42999000, 1);

SELECT *
FROM produk;

SELECT DISTINCT nama_produk, kode
FROM produk;

SELECT kode, nama_produk, harga, stok
FROM produk;

SELECT nama_produk, stok, kode
FROM produk;

ALTER TABLE produk
    ADD PRIMARY KEY (kode);

DESCRIBE produk;

SHOW CREATE TABLE produk;

INSERT INTO produk(kode, nama_produk, harga, stok)
VALUES ('K01', 'Xiaomi-POCO-X3-Pro', 3599000, 1132);

SELECT *
FROM produk
WHERE stok = 1;

SELECT *
FROM produk
WHERE harga = 2299000;

SELECT *
FROM produk
WHERE kode = 'K10';

SELECT *
FROM produk
WHERE nama_produk = 'Xiaomi-POCO-X3-Pro';

DESCRIBE produk;

ALTER TABLE produk
    ADD COLUMN Kategori ENUM ('Xiaomi', 'Samsung', 'Oppo', 'Realme', 'Vivo', 'Huawei')
        AFTER nama_produk;

SELECT *
FROM produk;

SELECT *
FROM produk
WHERE kode = 'K01';

UPDATE produk
SET Kategori = 'Xiaomi'
WHERE kode = 'K01';

UPDATE produk
SET Kategori    = 'Samsung',
    description = 'LTE'
WHERE kode = 'K03';

SELECT *
FROM produk
WHERE kode = 'K03';

UPDATE produk
SET harga = harga + 500000
WHERE kode = 'K05';

SELECT *
FROM produk
WHERE kode = 'K05';

INSERT INTO produk(kode, nama_produk, harga, stok)
VALUES ('K09', 'Vivo-Y-53s-Blue', 3699000, 67);

DELETE					#jika ingin menghapus
FROM produk
WHERE kode = 'P0009';

SELECT kode       	AS ID,
       nama_produk  AS NP,
       Kategori 	AS KTG,
       harga    	AS HRG,
       stok 		AS STK
FROM produk;

SELECT p.kode       	AS ID,
       p.nama_produk    AS NP,
       p.Kategori 		AS KTG,
       p.harga    		AS HRG,
       p.stok 			AS STK
FROM produk AS p;

INSERT INTO produk(kode, Kategori, nama_produk, harga, stok)
VALUES ('K12', 'Xiaomi', 'Xiaomi-Mi-11-Lite', 3599000, 1149),
       ('K13', 'Xioami', 'Xiaomi-Redmi-Note10-pro-ExtraRam', 3999000, 304),
       ('K14', 'Samsung', 'Samsung-GalaxyZ-Flip3-5G-Black', 14999000, 8),
       ('K15', 'Samsung', 'Samsung-GalaxyZ-Flip3-5G-ExtraMemori-Cream', 15999000, 23),
       ('K16', 'Oppo', 'Oppo-Reno-2-Disney8', 8999000, 1),
       ('K17', 'Oppo', 'Oppo-A74', 3399000, 23),
       ('K18', 'Vivo', 'Vivo-Y-53s-Rainbow', 3699000, 28);
       
SELECT *
FROM produk;

SELECT *
FROM produk
WHERE stok > 100;

SELECT *
FROM produk
WHERE stok >= 100;

SELECT *
FROM produk
WHERE Kategori != 'Huawei';

SELECT *
FROM produk
WHERE Kategori <> 'Vivo';

SELECT *
FROM produk
WHERE stok > 100
  AND harga > 1000000;

SELECT *
FROM produk
WHERE Kategori = 'Samsung'
  AND harga < 5000000;

SELECT *
FROM produk
WHERE stok > 100
   OR harga > 1000000;

SELECT *
FROM produk
WHERE (Kategori = 'Xiaomi' OR stok > 1000)
  AND harga > 1500000;

SELECT *
FROM produk
WHERE nama_produk LIKE '%Redmi%';

SELECT *
FROM produk
WHERE nama_produk LIKE '%GalaxyZ%';

SELECT *
FROM produk
WHERE nama_produk LIKE '%Reno%';

SELECT *
FROM produk
WHERE description IS NULL;

SELECT *
FROM produk
WHERE description IS NOT NULL;

SELECT *
FROM produk
WHERE harga BETWEEN 1000000 AND 2000000;

SELECT *
FROM produk
WHERE harga NOT BETWEEN 1000000 AND 2000000;

SELECT *
FROM produk
WHERE Kategori IN ('Xiaomi', 'Realme');

SELECT *
FROM produk
WHERE Kategori NOT IN ('Samsung', 'Vivo');

SELECT kode, Kategori, nama_produk
FROM produk
ORDER BY Kategori;

SELECT kode, Kategori, harga, nama_produk
FROM produk
ORDER BY Kategori ASC, harga DESC;

SELECT *
FROM produk
ORDER BY kode
LIMIT 5;

SELECT *
FROM produk
ORDER BY kode
LIMIT 3;

SELECT *
FROM produk
ORDER BY kode
LIMIT 0, 5;

SELECT *
FROM produk
ORDER BY kode
LIMIT 5, 5;

SELECT *
FROM produk
ORDER BY kode
LIMIT 10, 5;

SELECT *
FROM produk
ORDER BY kode
LIMIT 15, 5;

SELECT DISTINCT Kategori
FROM produk;

SELECT 10, 10, 10 * 10 as Hasil;

SELECT kode, nama_produk, harga, harga DIV 1000000 AS 'harga in K'
FROM produk;

SELECT kode, COS(harga), SIN(harga), TAN(harga)
FROM produk;

SELECT kode, nama_produk, harga
FROM produk
WHERE harga DIV 1000000 > 15;

SELECT kode,
       LOWER(nama_produk)  as 'nama_produk Lower',
       UPPER(nama_produk)  as 'nama_produk Upper',
       LENGTH(nama_produk) as 'nama_produk Length'
FROM produk;

SELECT kode,
       tanggal_dibuat,
       EXTRACT(YEAR FROM tanggal_dibuat)  as Year,
       EXTRACT(MONTH FROM tanggal_dibuat) as Month
FROM produk;

SELECT kode, tanggal_dibuat, YEAR(tanggal_dibuat), MONTH(tanggal_dibuat)
FROM produk;

SELECT kode,
	   nama_produk,
       Kategori,
       CASE Kategori
           WHEN 'Xiaomi' 	THEN 'Laris 1'
           WHEN 'Samsung' 	THEN 'Laris 2'
           ELSE 'Tingkatkan Penjualan?'
           END AS 'Kategori'
FROM produk;

SELECT kode,
	   nama_produk,
       harga,
       IF(harga <= 2500000, 'Murah', IF(harga <= 3500000, 'Mahal', 'Mahal Banget')) as 'Mahal?'
FROM produk;

SELECT kode, nama_produk, IFNULL(description, 'Kosong')
FROM produk;

SELECT COUNT(kode) as 'Total Product'
FROM produk;

SELECT MAX(harga) as 'Product Termahal'
FROM produk;

SELECT MIN(harga) as 'Product Termurah'
FROM produk;

SELECT AVG(harga) as 'Rata-Rata Harga'
FROM produk;

SELECT SUM(stok) AS 'Total Stock'
FROM produk;

SELECT COUNT(kode) as 'Total Product', Kategori
FROM produk
GROUP BY Kategori;

SELECT MAX(harga) as 'Product Termahal', Kategori
FROM produk
GROUP BY Kategori;

SELECT MIN(harga) as 'Product Termurah', Kategori
FROM produk
GROUP BY Kategori;

SELECT AVG(harga) as 'Rata-Rata Harga', Kategori
FROM produk
GROUP BY Kategori;

SELECT SUM(stok) AS 'Total Stok', Kategori
FROM produk
GROUP BY Kategori;

SELECT COUNT(kode) as total,
       Kategori
FROM produk
GROUP BY Kategori
HAVING total > 5;

SELECT *
FROM produk;

INSERT INTO produk(kode, nama_produk, Kategori, harga, stok)
VALUES ('K19', 'Xiaomi-Redmi-9C', 'Xiaomi', 1549000, 0);

UPDATE produk
SET harga = 800000
WHERE kode = 'K19';

SELECT *
FROM produk;

ALTER TABLE produk
    ADD CONSTRAINT harga_check CHECK ( harga >= 1000000 );

SHOW CREATE TABLE produk;

INSERT INTO produk(kode, nama_produk, Kategori, harga, stok)
VALUES ('K20', 'Xiaomi-Redmi-Note7-GOIB', 'Xiaomi', 2500000, 1000);

UPDATE produk
SET harga = 2800000
WHERE kode = 'K20';

SELECT *
FROM produk;

ALTER TABLE produk
    ADD FULLTEXT product_fulltext (nama_produk, description);

SHOW CREATE TABLE produk;

SELECT *
FROM produk
WHERE nama_produk LIKE '%Redmi%'
   OR description LIKE '%Redmi%';

SELECT *
FROM produk
WHERE MATCH(nama_produk, description)
            AGAINST('Redmi' IN NATURAL LANGUAGE MODE);

SELECT *
FROM produk
WHERE MATCH(nama_produk, description)
            AGAINST('+MasterEdition -GT' IN BOOLEAN MODE);

SELECT *
FROM produk
WHERE MATCH(nama_produk, description)
            AGAINST('Galaxy' WITH QUERY EXPANSION);

DESC produk;

SELECT *
FROM produk;

INSERT INTO produk(kode, nama_produk, Kategori, harga, stok)
VALUES ('C01', 'ContohX', 'Lain-Lain', 1000000, 10);


INSERT INTO produk(kode, nama_produk, harga, stok)
VALUES ('X01', 'smartphone-Xone', 2500000, 20),
       ('X02', 'smartphone-Xtwo', 1000000, 30),
       ('X03', 'smartphone-Xthree', 1500000, 50);

SELECT *
FROM produk;

SELECT *
FROM produk
WHERE harga > (SELECT AVG(harga) FROM produk);

SELECT MAX(harga)
FROM produk;

UPDATE produk
SET harga = 1800000
WHERE kode = 'X03';

SELECT *
FROM produk
WHERE kode = 'X03';