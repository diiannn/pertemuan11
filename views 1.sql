CREATE VIEW Transaksi_selesai AS
SELECT 
    t.id_transaksi,
    t.tgl_transaksi,
    t.metode_pembayaran,
    t.nama_produk,
    CASE 
        WHEN t.status_pembayaran = 1 THEN 'Sudah Dibayar'
        ELSE 'Belum Dibayar'
    END AS status_pembayaran,
    p.nama AS nama_pelanggan,
    p.alamat AS alamat_pelanggan
FROM 
    Transaksi t
JOIN 
    Pemesanan pm ON t.id_pemesanan = pm.id_pemesanan
JOIN 
    Pelanggan p ON pm.id_pelanggan = p.id_pelanggan;