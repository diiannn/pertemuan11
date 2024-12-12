ALTER VIEW pesanan AS
SELECT        Karyawan.nama, Pelanggan.nama AS Expr1, Pelanggan.alamat, Pemesanan.status, Pengiriman.alamat_pengiriman, Transaksi.metode_pembayaran
FROM            Pemesanan INNER JOIN
                         Pelanggan ON Pemesanan.id_pelanggan = Pelanggan.id_pelanggan INNER JOIN
                         Transaksi ON Pemesanan.id_pemesanan = Transaksi.id_pemesanan INNER JOIN
                         Pengiriman ON Transaksi.id_transaksi = Pengiriman.id_transaksi CROSS JOIN
                         Karyawan

WHERE status = 'Selesai';