SHOW ENGINES;

SHOW TABLES;

CREATE TABLE barang
(
    kode     		INT          NOT NULL,
    nama_produk   	VARCHAR(100) NOT NULL,
    harga  			INT          NOT NULL DEFAULT 0,
    stok 			INT          NOT NULL DEFAULT 0
) ENGINE = InnoDB;

DESCRIBE barang;

SHOW CREATE TABLE barang;

ALTER TABLE barang
    ADD COLUMN deskripsi TEXT;

DESCRIBE barang;

ALTER TABLE barang
    ADD COLUMN salah TEXT;

ALTER TABLE barang
    DROP COLUMN salah;
    
DESCRIBE barang;

ALTER TABLE barang
    MODIFY nama_produk VARCHAR(200) AFTER deskripsi;

DESCRIBE barang;

ALTER TABLE barang
    MODIFY nama_produk VARCHAR(200) FIRST;

DESCRIBE barang;

ALTER TABLE barang
    MODIFY kode INT NOT NULL;

DESCRIBE barang;

ALTER TABLE barang
    MODIFY nama_produk VARCHAR(200) NOT NULL;

SHOW CREATE TABLE barang;

ALTER TABLE barang
    MODIFY stok INT NOT NULL DEFAULT 0;

DESCRIBE barang;

ALTER TABLE barang
    MODIFY harga INT NOT NULL DEFAULT 0;

DESCRIBE barang;

ALTER TABLE barang
    ADD tanggal_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

INSERT INTO barang (kode, nama_produk)
VALUES (1, 'Xiaomi-POCO-X3-Pro');

SELECT *
FROM barang;

TRUNCATE barang;

SHOW tables;

DROP TABLE barang;