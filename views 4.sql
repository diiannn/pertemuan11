CREATE VIEW pelanggan_pemesanan AS
SELECT p.id_pelanggan, p.nama AS nama_pelanggan, pe.id_pemesanan, pe.status AS status_pemesanan
FROM Pelanggan p
JOIN Pemesanan pe ON p.id_pelanggan = pe.id_pelanggan;
