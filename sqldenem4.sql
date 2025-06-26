create table gorevler(
	gorev_no INT AUTO_INCREMENT PRIMARY KEY,
    gorev_adi varchar(255) not null,
    baslangic_tarihi date not null,
    bitis_tarihi date 
);


INSERT INTO gorevler (gorev_adi, baslangic_tarihi, bitis_tarihi)
		values ("not null kısıtını öğrenelim","2020-04-01","2020-04-23"),
			   ("not null kısıtını öğrenelim ve güncelleyelim","2020-04-01",NULL)

UPDATE gorevler
SET
	bitis_tarihi = baslangic_tarihi+ 7
WHERE 
	bitis_tarihi IS NULL;

select * from gorevler;

INSERT INTO gorevler (gorev_adi, baslangic_tarihi, bitis_tarihi)
		values ("MySQL TEST","2020-04-10","2020-04-23"),
			   ("MySQL NULL TEST","2020-04-11",NULL);
        
ALTER TABLE gorevler 
	CHANGE 
		bitis_tarihi
        bitis_tarihi DATE NOT NULL;



INSERT INTO gorevler (gorev_adi, baslangic_tarihi, bitis_tarihi)
		values ("MySQL NULL TEST","2020-04-11",NULL);
        
ALTER TABLE gorevler
	MODIFY
        bitis_tarihi DATE;
        
SELECT * FROM gorevler;