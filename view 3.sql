<<<<<<< HEAD
CREATE VIEW Pengiriman_Kurir AS
SELECT 
    id_pengiriman,
    alamat_pengiriman,
    kurir,
    status_pengiriman
FROM 
    Pengiriman;
=======
CREATE VIEW total_pembayaran AS
SELECT t.id_transaksi, t.tgl_transaksi, SUM(d.Total_harga) AS total_pembayaran
FROM Transaksi t
JOIN Detail_Transaksi d ON t.id_transaksi = d.id_detailtransaksi
GROUP BY t.id_transaksi, t.tgl_transaksi;
>>>>>>> 84dcf0fab7aed522bc27ae5380c4080576f10790
