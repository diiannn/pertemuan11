CREATE VIEW produk_harga_kategori AS
SELECT p.id_produk, p.nama_produk, p.harga_beli, p.harga_jual, p.kategori
FROM Produk p;

DROP VIEW v_produk_harga_kategori;

