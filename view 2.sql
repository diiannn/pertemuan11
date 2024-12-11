SELECT        Transaksi.id_transaksi, Transaksi.metode_pembayaran, Pengiriman.id_pengiriman
FROM            Karyawan INNER JOIN
                         Karyawan_Produk ON Karyawan.id_karyawan = Karyawan_Produk.id_karyawan INNER JOIN
                         Produk ON Karyawan_Produk.id_produk = Produk.id_produk CROSS JOIN
                         Transaksi INNER JOIN
                         Pengiriman ON Transaksi.id_transaksi = Pengiriman.id_transaksi CROSS JOIN
                         Pelanggan