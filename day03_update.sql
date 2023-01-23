use sys;
/* ====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.
-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;
========================================================================================*/
/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
Id ve isim'i beraber Primary Key yapin.
---------------------------------------------------------------------------------------*/
create table firmalar
(
id int,
isim varchar(20),
iletisim_isim varchar(20),
constraint firmalar_pk primary key (id,isim) 
);
select * from firmalar;

insert into firmalar values 
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');
drop table firmalar;

-- ID SI 3 OLAN FIRMANIN 'KRM ' olarak guncelleyelim.

update firmalar
set isim='KRM'
where id=3;
-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.
-- 1.yol
update firmalar
set id=4
where iletisim_isim='Veli Gul';
update firmalar
set isim='FDS'
where iletisim_isim='Veli Gul';
-- 2.yol
update firmalar
set id=4 ,isim ='FDS'
where iletisim_isim='Veli Gul';

-- Ismi ACB olan firmanin iletisim ismini 'Osman Can' olarak guncelleyiniz.

update firmalar
set iletisim_isim='Osman Can'
where isim ='ACB';

SELECT * FROM firmalar;
-- iletisim ismi 'Osman Can' olan firmanin iletisim ismini 'Ayse Can' olarak degistirin.

update firmalar 
set iletisim_isim='Ayse Can'
where iletisim_isim='Osman Can' ; 



