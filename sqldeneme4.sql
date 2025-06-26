create table parcalar(
	parca_no VARCHAR(18) PRIMARY KEY,
    tanim varchar(40),
    maliyet DECIMAL(10,2) NOT null CHECK(maliyet>=0),
    fiyat DECIMAL(10,2) NOT NULL CHECK(fiyat >=0)
			
);

SHOW CREATE TABLE parcalar;

INSERT INTO parcalar (parca_no, tanim, maliyet, fiyat)
		VALUES ("a-001","Soğutucu",0,-100);

INSERT INTO parcalar (parca_no, tanim, maliyet, fiyat)
		VALUES ("a-001","Soğutucu",0,100);
        
select * from parcalar;
drop table parcalar;
create table parcalar(
	parca_no VARCHAR(18) PRIMARY KEY,
    tanim varchar(40),
    maliyet DECIMAL(10,2) NOT null CHECK(maliyet>=0),
    fiyat DECIMAL(10,2) NOT NULL CHECK(fiyat >=0),
    CONSTRAINT chk_fiyat_buyuk_maliyet CHECK(fiyat>maliyet)
			
);

INSERT INTO parcalar (parca_no, tanim, maliyet, fiyat)
		VALUES ("a-001","Soğutucu",0, 100)
        
INSERT INTO parcalar (parca_no, tanim, maliyet, fiyat)
		VALUES ("b-003","Radyatör",50,10);
INSERT INTO parcalar (parca_no, tanim, maliyet, fiyat)
		VALUES ("b-003","Radyatör",50,80);
        
select * from parcalar;
drop table kontrol_listesi;
drop table gorevler;