create database fkdemo;
use fkdemo;

CREATE TABLE kategoriler(
	kategori_no INT AUTO_INCREMENT PRIMARY KEY,
    kategori_adi varchar(100) NOT NULL
    
);

CREATE TABLE urunler(
	urun_no INT AUTO_INCREMENT PRIMARY KEY,
    urun_adi varchar(100) NOT NULL,
    kategoriNumarasi INT,
    CONSTRAINT fk_kategori
		FOREIGN KEY (kategoriNumarasi)
			REFERENCES kategoriler(kategori_no)
);

INSERT INTO kategoriler(kategori_adi)
		VALUES ("Akıllı Telefon"),
			   ("Akıllı Saat")
               
               
INSERT INTO urunler(urun_adi, kategoriNumarasi)
		VALUES ("IPhone", 1 );
        
 INSERT INTO urunler(urun_adi, kategoriNumarasi)
		VALUES ("IPad", 3 );      
        
UPDATE kategoriler SET kategpri_no = 100 WHERE kategori_no = 1;
DROP TABLE urunler;


CREATE TABLE urunler(
	urun_no INT AUTO_INCREMENT PRIMARY KEY,
    urun_adi varchar(100) NOT NULL,
    kategoriNumarasi INT,
    CONSTRAINT fk_kategori
		FOREIGN KEY (kategoriNumarasi)
			REFERENCES kategoriler(kategori_no)
            ON UPDATE CASCADE 
            ON DELETE CASCADE
            
);


INSERT INTO urunler(urun_adi, kategoriNumarasi)
		VALUES ("Galaxy Note", 1 ),
               ("Apple Watch", 2 ),
               ("Samsung Galaxy Watch", 2 );
			   
UPDATE kategoriler SET kategori_no = 100 WHERE kategori_no = 1;		
DELETE FROM kategoriler WHERE kategori_no = 2;	#siliyor

drop table if exists urunler;
drop table if exists kategoriler;

CREATE TABLE kategoriler(
	kategori_no INT AUTO_INCREMENT PRIMARY KEY,
    kategori_adi varchar(100) NOT NULL
    
);

CREATE TABLE urunler(
	urun_no INT AUTO_INCREMENT PRIMARY KEY,
    urun_adi varchar(100) NOT NULL,
    kategori_no INT,
    CONSTRAINT fk_kategori
		FOREIGN KEY (kategori_no)
			REFERENCES kategoriler(kategori_no)
            ON UPDATE SET NULL
            ON DELETE SET NULL
            
);

INSERT INTO kategoriler(kategori_adi)
		VALUES ("Akıllı Telefon"),
			   ("Akıllı Saat")

INSERT INTO urunler(urun_adi, kategori_no)
		VALUES ("Galaxy Note", 1 ),
               ("Apple Watch", 2 ),
               ("Samsung Galaxy Watch", 2 ),
               ("Iphone",1)
 

UPDATE kategoriler SET kategori_no = 100 WHERE kategori_no = 1;		


DELETE FROM kategoriler WHERE kategori_no = 2;	#siliyor

show create table urunler; # bu komut bize tablo oluşturulan kısıtları görüyoruz

ALTER TABLE urunler DROP FOREIGN KEY fk_kategori;
 show create table urunler;