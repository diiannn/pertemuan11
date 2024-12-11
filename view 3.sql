use jastip2
CREATE VIEW total_pembayaran AS
SELECT t.id_transaksi, t.tgl_transaksi, SUM(d.Total_harga) AS total_pembayaran
FROM Transaksi t
JOIN Detail_Transaksi d ON t.id_transaksi = d.id_detailtransaksi
GROUP BY t.id_transaksi, t.tgl_transaksi;