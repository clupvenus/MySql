/*========================================
               VERI GIRISI
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.
/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/
/*
-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.*/
use sys;

CREATE TABLE fen_lisesi(
okul_no INT UNIQUE,
isim varchar(25) NOT NULL,
derece double,
adres varchar(50),
son_degisiklik_tarihi date
);
SELECT * FROM fen_lisesi;

INSERT INto fen_lisesi values(101,'Humeyra Uysal',4.5,'Ankara','2023-01-20');
INSERT into fen_lisesi values(102,'Azra Uysal',4.3,'Ankara','2023-01-19');
INSERT into fen_lisesi values(103,'Mehmet Erden',4.2,'istanbul','2023-01-18');
INSERT into fen_lisesi values(104,'fatih Uysal',4.7,'istanbul','2023-01-19');
INSERT into fen_lisesi values(105,'Esra Uysal',4.8,'IZMIR','2023-01-20');
INSERT into fen_lisesi values(106,'Azra Uysal',null,null,null);
INSERT into fen_lisesi values(null,'Azra Uysal',null,null,null);
INSERT into fen_lisesi values(null,'Esra Uysal',null,null,null);
INSERT into fen_lisesi(isim,adres) values('Abdullah Ak','istanbul');
INSERT into fen_lisesi(okul_no,isim,adres) values(109,'Abdullah Ak','istanbul');
INSERT into fen_lisesi(isim,adres,okul_no) values('Abdullah Ak','istanbul',110);
/* ----------------------------------------------
Q1 : okul_no int, isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */
use sys;

create table anadolu_lisesi(
okul_no char(15) unique ,
 isim varchar(25) not null ,
 adres varchar(25),
 derece double);
 
 drop table anadolu_lisesi;
 
 select*from anadolu_lisesi;
 
insert into anadolu_lisesi values ('1001','Ayse Nuriye','istanbul',4.7);
insert into anadolu_lisestedarikcilertedarikcileri values ('1002','Zafer bey','Ankara',4.7);
insert into anadolu_lisesi values ('1003','Furkan Veli Inal','istanbul',3.9);
insert into anadolu_lisesi values ('1004','Humeyra Uysal','izmir',4.8);
insert into anadolu_lisesi values ('1005','Mehmet Harun','istanbul',3.7);
insert into anadolu_lisesi values ('','Mehmet Harun','istanbul',3.7);


insert into anadolu_lisesi(isim, adres) values ('Berrin','Ankara');
insert into anadolu_lisesi(isim, adres,okul_no) values ('Berrin','Ankara','1009');
insert into anadolu_lisesi(isim, adres,okul_no,derece) values ('Berrin','Ankara','1010',4.5);































