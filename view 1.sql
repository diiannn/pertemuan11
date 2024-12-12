create view nama_pemesan as
SELECT        Detail_Transaksi.id_pemesanan, Pelanggan.nama
FROM            Pelanggan INNER JOIN
                         Pemesanan ON Pelanggan.id_pelanggan = Pemesanan.id_pelanggan INNER JOIN
                         Detail_Transaksi ON Pemesanan.id_pemesanan = Detail_Transaksi.id_pemesanan
				