
create view Pesanan_produk as
SELECT 
    Pemesanan.tgl_pemesanan, 
    Produk.nama_produk, 
    Produk.harga_beli, 
    Pelanggan.nama AS nama_pelanggan, 
    Pelanggan.alamat, 
    Pelanggan.no_telpon
FROM 
    Pemesanan
INNER JOIN 
    Pelanggan ON Pemesanan.id_pelanggan = Pelanggan.id_pelanggan
CROSS JOIN 
    Produk
WHERE 
    Produk.nama_produk LIKE 'O%'; 
