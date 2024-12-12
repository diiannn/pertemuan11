ALTER VIEW pembayaran AS
SELECT        Karyawan.nama, Pelanggan.nama AS Expr1, Pelanggan.alamat, Pelanggan.no_telpon, Pemesanan.tgl_pemesanan, Transaksi.tgl_transaksi, Transaksi.metode_pembayaran, Detail_Transaksi.qty_produk
FROM            Pemesanan INNER JOIN
                         Pelanggan ON Pemesanan.id_pelanggan = Pelanggan.id_pelanggan INNER JOIN
                         Detail_Transaksi ON Pemesanan.id_pemesanan = Detail_Transaksi.id_pemesanan INNER JOIN
                         Transaksi ON Pemesanan.id_pemesanan = Transaksi.id_pemesanan CROSS JOIN
                         Karyawan

WHERE metode_pembayaran = 'Kartu Kredit';