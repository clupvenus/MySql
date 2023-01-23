/*==================================SELECT-REGEXP_LIKE=============================================
 Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
  -- 'c' => case-sensitive demektir
  -- 'i' => case-insensitive demektir ve default case-insensitive aktiftir.
  
-----Syntax-----
 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]','c'[])
=========================================================================================*/
use sys;
CREATE TABLE kelimeler
    (
        id int UNIQUE,
        kelime VARCHAR(50) NOT NULL,
        harf_sayisi int
    );
    
    INSERT INTO kelimeler VALUES 
    (1001, 'hot', 3),
    (1002, 'hat', 3),
    (1003, 'hit', 3),
    (1004, 'hbt', 3),
    (1005, 'hct', 3),
    (1006, 'adem', 4),
    (1007, 'selim', 5),
    (1008, 'yusuf', 5),
    (1009, 'hip', 3),
    (1010, 'HOT', 3),
    (1011, 'hOt', 3),
    (1012, 'h9t', 3),
    (1013, 'hoot', 4),
    (1014, 'haaat', 5),
    (1015, 'hooooot', 7),
      (1016, 'h_t', 4),
    (1017, 'h?t', 5),
    (1018, 'hOOOt', 7),
     (1019, 'O', 5);
   
    
SELECT * FROM kelimeler;
 drop table kelimeler;
-- Q1 : Icerisinde 'ot' veya 'at' bulunan kelimeleri case-sensitive'e dikkat ederek listele
	-- NOT: VEYA islemi icin | karakteri kullanilir.
select kelime
from kelimeler
where regexp_like(kelime,'ot|at','c');

-- Q2 : Icerisinde 'ot' veya 'at' bulunan kelimeleri case-sensitive'e dikkat etmeksizin listele

select kelime
from kelimeler
where regexp_like(kelime,'ot|at','i');

-- hic birsey yazmadan da incase olurdu.
select kelime
from kelimeler
where regexp_like(kelime,'ot|at');
-- Q3 : 'ho' veya 'hi' ile baslayan kelimeleri case-sensitive'e dikkat etmeksizin listele
    -- NOT: Baslangici gostermek icin ^ karakteri kullanilir.
    
    select kelime
    from kelimeler
    where regexp_like (kelime, '^ho|^hi');
    
    -- Q4 : Sonu 't' veya 'm' ile bitenleri case-sensitive'e dikkat etmeksizin listele
    -- NOT: Bitisi gostermek icin $ karakteri kullanilir.
    
    select kelime
    from kelimeler
    where regexp_like (kelime,'t$|m$');

-- Q5 : h ile baslayip t ile biten 3 harfli kelimeleri (h ile t kucuk harfli olanlari) listeleyiniz
	-- NOT : [!-~] = [a-zA-Z0-9]
    select kelime
    from kelimeler
    where regexp_like (kelime,'h[!-~]t','i');
    
    select kelime
    from kelimeler
    where regexp_like (kelime,'h[a-z]t','i');
    -- bu aradaki harfin kucuk harf olmasini saglar
    
    select kelime
    from kelimeler
    where regexp_like (kelime,'h[a-zA-Z0-9]t','i');
    
    
    
    select kelime
    from kelminer
    where kelime like 'h_t';
    -- arasindaki fark usttekinde case sensitive olmasini istiyorsak regexplike yazmaliyiz.
    
    -- Q6 : 2. harfi O olan 3 harfli kelimeleri (o harfi buyuk olanlari) listeleyiniz
    
    select kelime
    from kelimeler
    where regexp_like (kelime,'[!-~]O[!-~]','c');
    
    
    select kelime
    from kelimeler
    where regexp_like (kelime,'[!-~]O[!-~]');
    -- SADECE 3 harflileri su anda bulamadik hoca bakip 
    SELECT kelime
FROM kelimeler
WHERE REGEXP_LIKE (kelime, '^.[O][a-zA-Z]$','c');
   -- bunu siniftan biri gonderdi.  
   
    
    
	select kelime
    from kelimeler
    where regexp_like (kelime,'h[!-~]t','i');
    
    
  
    
    -- Q7 : 2. ve 3. harfi o olan tum kelimeleri (case sensitive olmaksizin) listeleyiniz
      select kelime
    from kelimeler
    where regexp_like (kelime, '[a-zA-Z0-9]oo[a-zA-Z0-9]')
    
    
    
    
    
    


