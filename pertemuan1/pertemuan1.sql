create table mahasiswa (
	Id INT primary key identity(1, 1),
	NPM INT,
	Nama Varchar(50),
	Kelas Varchar(3),
	Jurusan Varchar(50),
	Fakultas Varchar(50)
)
INSERT INTO mahasiswa 
VALUES ('233040138','Fernanda Aminullah Salim','IFD','Teknik Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040126','Azhar Muttaqin','IFD','Teknik Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040166','Akmal Al Ghifari','IFD','Teknik Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040135','Raihan Azzani Helmawan','IFD','Teknik Informatika','Teknik')
INSERT INTO mahasiswa 
VALUES ('233040136','Anindya Gita Lestari','IFD','Teknik Informatika','Teknik')

SELECT * FROM mahasiswa
WHERE Nama LIKE '%rai%';


SELECT city, COUNT(custid) AS countcust
FROM Sales.customers
Where country = 'France' AND (city= 'Paris' OR city = 'Nantes')
GROUP BY country, city
HAVING COUNT(custid) > 1


