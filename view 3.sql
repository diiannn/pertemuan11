use jastip_skincare
SELECT 
    kp.id_karyawan,
    k.nama AS nama_karyawan,
    p.nama_produk,
    p.kategori,
    p.harga_jual
FROM 
    Karyawan_Produk kp
JOIN 
    Karyawan k ON kp.id_karyawan = k.id_karyawan
JOIN 
    Produk p ON kp.id_produk = p.id_produk;