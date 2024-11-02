CREATE DATABASE pertemuan5

CREATE TABLE jurusan (
  id BIGINT PRIMARY KEY,
  nama_jurusan BIGINT
);


CREATE TABLE Mahasiswa (
  id BIGINT PRIMARY KEY,
  NPM INT,
  nama VARCHAR(255),
  tanggal_lahir DATE,
  alamat VARCHAR(255),
  no_hp INT,
  jurusan_id BIGINT,
  dosen_wali_id BIGINT,
  FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
  FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id)
);

CREATE TABLE Dosen_wali (
  id BIGINT PRIMARY KEY,
  NRP BIGINT,
  nama VARCHAR(255),
  tanggal_lahir DATE,
  alamat VARCHAR(255),
  no_hp INT
);

use pertemuan5
ALTER TABLE Mahasiswa
ADD status BIT;

SELECT * FROM Mahasiswa

ALTER TABLE jurusan
ALTER COLUMN nama_jurusan VARCHAR(255);


INSERT INTO jurusan (id, nama_jurusan)
VALUES('1', 'Informatika'), ('2', 'Mesin'), ('3', 'Lingkungan'), ('4', 'Pangan'),
('5', 'Industri')

SELECT * FROM jurusan;

INSERT INTO Dosen_wali (id, NRP, nama, tanggal_lahir, alamat, no_hp)
VALUES('1', '21231232', 'ahmad','1990-01-01', 'bandung','2889323'),
('2', '21231232', 'ahmad', '1990-01-01', 'bandung','2889323'),
('3', '21231232', 'ahmad', '1990-01-01', 'bandung','989323'),
('4', '21231232', 'ahmad', '1990-01-01', 'bandung','989223'),
('5', '21231232', 'ahmad', '1990-01-01', 'bandung','2889323'),
('6', '21231232', 'ahmad', '1990-01-01', 'bandung','99323'),
('7', '21231232', 'ahmad', '1990-01-01', 'bandung','989323'),
('8', '21231232', 'ahmad', '1990-01-01', 'bandung','9892823'),
('9', '21231232', 'ahmad', '1990-01-01', 'bandung','889323'),
('10', '21231232', 'ahmad', '1990-01-01', 'bandung','989323');

SELECT * FROM Dosen_wali


INSERT INTO Mahasiswa (id, NPM, nama, tanggal_lahir, alamat, no_hp, jurusan_id, dosen_wali_id)
VALUES
    (1, '233040135', 'Raihan', '1990-01-23', 'bandung', '2889323','2', '4'),
    (2, '233040113', 'Yafi', '1990-01-23', 'bandung', '2889323','3', '3'),
    (3, '233040122', 'Rama', '1990-01-23', 'bandung', '2889323','2', '1'),
    (4, '233040138', 'Fernanda', '1990-01-23', 'bandung', '2889323','3', '4'),
    (5, '233040126', 'Azhar', '1990-01-23', 'bandung', '2889323','2', '5'),
    (6, '233040148', 'Fadhil', '1990-01-23', 'bandung', '2889323','1', '8'),
    (7, '233040166', 'Akmal', '1990-01-23', 'bandung', '2889323','3', '10'),
    (8, '233040111', 'Jamal', '1990-01-23', 'bandung', '2889323','2', '4'),
    (9, '233040100', 'Maldini', '1990-01-23', 'bandung', '2889323','3', '7'),
    (10, '233040099', 'Sergio', '1990-01-23', 'bandung', '2889323','5', '4'),
    (11, '233040098', 'Lionel', '1990-01-23', 'bandung', '2889323','5', '9'),
    (12, '233040097', 'Marselino', '1990-01-23', 'bandung', '2889323','4', '9'),
    (13, '233040096', 'Beckenbauer', '1990-01-23', 'bandung', '2889323','1', '7'),
    (14, '233040095', 'Lewandowski', '1990-01-23', 'bandung', '2889323','1', '4'),
    (15, '233040094', 'Windah', '1990-01-23', 'bandung', '2889323','2', '4'),
    (16, '233040093', 'Costacurta', '1990-01-26', 'bandung', '2889323','2', '6'),
    (17, '233040092', 'Bojan', '1990-01-27', 'bandung', '2889323','4', '5'),
    (18, '233040091', 'Haye', '1990-01-28', 'bandung', '2889323','3', '2'),
    (19, '233040090', 'Neymar', '1990-01-23', 'bandung', '2889323','4', '2'),
    (20, '233040089', 'Oratmangoen', '1990-01-23', 'bandung', '2889323','3', '2');
use pertemuan5
	SELECT * FROM Mahasiswa

DELETE FROM Mahasiswa
WHERE id IN (1, 2, 3, 4, 5);
