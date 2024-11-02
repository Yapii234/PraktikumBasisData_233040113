
SELECT *
FROM jadwal_mata_kuliah;

SELECT * FROM Mahasiswa WHERE tahun_masuk BETWEEN '2019' AND '2020';

SELECT * FROM mahasiswa 
WHERE jurusan IN ('Teknik Informatika') AND alamat LIKE 'Jl. Merdeka%';

SELECT COUNT(*)
AS jumlah_total_mahasiswa_informatika from Mahasiswa where jurusan = 'Teknik Informatika';


SELECT  jumlah_pembayaran
FROM dpp_mahasiswa
ORDER BY jumlah_pembayaran DESC;

select DISTINCT dosen_pengajar
from jadwal_mata_kuliah;

SELECT COUNT(*)
AS matkul_hari_senin from jadwal_mata_kuliah WHERE  hari = 'senin';

SELECT nama_mata_kuliah FROM jadwal_mata_kuliah
WHERE kode_mata_kuliah IN ('TI101', 'SI201', 'TS301');

SELECT * FROM mahasiswa
WHERE tahun_masuk BETWEEN 2018 AND 2020 
AND jurusan IN ('Teknik Informatika') AND alamat LIKE 'Jl. Sudirman%';


SELECT nama_mata_kuliah, dosen_pengajar FROM jadwal_mata_kuliah
WHERE dosen_pengajar LIKE 'ang%'
ORDER BY nama_mata_kuliah ASC;

SELECT * FROM dpp_mahasiswa
WHERE mahasiswa_id IN (

	SELECT mahasiswa_id
	FROM mahasiswa
	WHERE status_pembayaran IN('Lunas')
	);

