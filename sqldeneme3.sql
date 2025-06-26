USE testdb;
create table tedarikciler(
	tedarikci_no INT AUTO_INCREMENT,
    adi varchar(255) NOT NULL,
    telefon_no varchar(15) NOT NULL UNIQUE,
    adres varchar(255) NOT NULL,
    PRIMARY KEY (tedarikci_no),
    CONSTRAINT uk_adi_adres UNIQUE (adi, adres)
    
    
);

INSERT INTO tedarikciler(adi, telefon_no, adres)
	VALUES ("ABC ŞTİ", "(222)-123-1234", "4000 Kuzey Mh. 20. Cd.")
    
SELECT * FROM tedarikciler;

INSERT INTO tedarikciler(adi, telefon_no, adres)
	VALUES ("defac ŞTİ", "(222)-123-1254", "4000 Kuzey Mh. 20. Cd.")
    
INSERT INTO tedarikciler(adi, telefon_no, adres)
	VALUES ("defac ŞTİ", "(222)-123-1224", "4000 Kuzey Mh. 20. Cd.")
    
show create table tedarikciler;

show index from tedarikciler;

drop index uk_adi_adres on tedarikciler; #tedarikçiler tablsoundaki keyi kaldırdık
show index from tedarikciler;

alter table tedarikciler add CONSTRAINT uk_adi_adres  UNIQUE (adi, adres);

