create table kullanicilar(
	kullanici_no INT AUTO_INCREMENT PRIMARY KEY,
    kullanici_adi VARCHAR(40),
    parola varchar(20),
    eposta varchar(255)
    
);


create table roller(
	rol_no INT AUTO_INCREMENT ,
    rol_adi varchar(50),
    PRIMARY KEY(rol_no)
);

create table kullanici_rolleri(
	rol_no INT,
    kullanici_no INT,
    PRIMARY KEY(rol_no, kullanici_no),
    FOREIGN KEY(rol_no)
		references roller(rol_no),
	FOREIGN KEY (kullanici_no)
		references kullanicilar(kullanici_no)
);