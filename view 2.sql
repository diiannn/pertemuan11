create view Karyawan_pemesanan as
SELECT Karyawan_Produk.id_detailtransaksi, Karyawan.nama, Produk.nama_produk, Produk.harga_beli, Produk.harga_jual, Pemesanan.status
FROM     Karyawan_Produk INNER JOIN
                  Karyawan ON Karyawan_Produk.id_karyawan = Karyawan.id_karyawan INNER JOIN
                  Produk ON Karyawan_Produk.id_produk = Produk.id_produk CROSS JOIN
                  Pemesanan