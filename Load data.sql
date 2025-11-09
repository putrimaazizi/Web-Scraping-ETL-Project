/*
=================================================
Milestones 1

Nama  : Putrima Azizi Al Fauztina
Batch : CODA-RMT-012

Pada tahapan selanjutnya yaitu, Load data yang sudah diolah disimpan ke data storage dalam database PostgreSQL.
=================================================
*/

-- Buat tabel produk didalam database milestone1_thenblank
CREATE TABLE produk (
    id SERIAL PRIMARY KEY,
    nama_produk VARCHAR(255),
    warna_keterangan VARCHAR(100),
    harga_asli INTEGER,
    harga_diskon INTEGER,
    rating_produk FLOAT
);

-- Membuat constraint unique untuk kombinasi produk + warna
-- Memastikan tidak ada duplikasi varian produk yang sama
ALTER TABLE produk 
ADD CONSTRAINT unique_product_variant 
UNIQUE (nama_produk, warna_keterangan);

-- Masukkan data dari file CSV
COPY produk (nama_produk, warna_keterangan, harga_asli, harga_diskon, rating_produk)
FROM 'C:\temp\data_produk_clean.csv' DELIMITER ',' CSV HEADER;

-- Menampilkan seluruh data pada tabel produk
SELECT * FROM produk;

/*
Notes : Berdasarkan analisis normalisasi tabel,
Tabel produk sudah memenuhi 1NF, 2NF dan 3NF, karena
1. Setiap cell berisi single value (1NF rules)
2. Setiap record/baris harus unik (1NF rules)
3. Ada atribut key yaitu kolom nama_produk & warna_keterangan untuk mengindentifikasi setiap record/baris (1NF rules)
4. Semua atribut non key yaitu kolom harga_asli, harga_diskon, & rating_produk 
bergantung pada atribut key yaitu kolom nama_produk dan warna_keterangan (2NF rules)
5. Tidak ada transitive functional dependencies (3NF rules)
*/