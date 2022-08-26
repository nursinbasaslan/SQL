-- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı.
*/

SELECT * FROM calisanlar2 ;

--Calisanlar2 tablosundaki en yuksek maas degerini listeleyiniz.
SELECT max (maas) FROM calisanlar2 ;

--Calisanlar2 tablosundaki maaslarin toplamini listeleyiniz.
SELECT SUM (maas) FROM calisanlar2 ;

--Calisanlar2 tablosundaki maaslarin ortalamasini listeleyiniz.
SELECT AVG (maas) FROM calisanlar2 ;
SELECT round(avg(maas)) FROM calisanlar2 ; --kalansiz degeri verir.
SELECT round(avg(maas),2) FROM calisanlar2 ; --virgulden sonraki 2 degeride gosterir.

--Calisanlar2 tablosundaki en dusuk maasi listeleyiniz.
SELECT MIN (maas) FROM calisanlar2 ;

--Calisanlar2 tablosundaki kac kisinin maas aldigini listeleyiniz.
SELECT COUNT (maas) FROM calisanlar2 ;

SELECT * FROM markalar ;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
SELECT marka_isim, calisan_sayisi, (select sum(maas) from calisanlar2 
WHERE marka_isim= isyeri ) AS toplam_maas from markalar

-- ALIAS (AS) --> Tabloda geçici isim vermek istersek koşuldan sonra AS sutun_isim olarak kullanılır.

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.
SELECT marka_isim, calisan_sayisi, (select max(maas)  from calisanlar2 WHERE marka_isim= isyeri ) AS max_maas,
                                   (select max(maas)  from calisanlar2 WHERE marka_isim= isyeri ) AS min_maas 
from markalar ; 

--Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.
SELECT marka_id, marka_isim, (select count(sehir)  from calisanlar2 
WHERE marka_isim= isyeri ) AS sehir_sayisi from markalar ;

--Interview Question: En yüksek ikinci maas değerini çağırın.
SELECT max (maas) As enyuksek_ikinci_maas FROM calisanlar2 
WHERE maas<(SELECT max(maas) from calisanlar2);

----Interview Question: En düşük ikinci maas değerini çağırın.
SELECT min (maas) As endusuk_ikinci_maas FROM calisanlar2 
WHERE maas>(SELECT min(maas) from calisanlar2);

--En yüksek ucuncu maas değerini çağırın.
SELECT max (maas) As enyuksek_ucuncu_maas FROM calisanlar2 
WHERE maas<(SELECT max(maas) from calisanlar2
WHERE maas<(SELECT max(maas) from calisanlar2)) ;

----En düşük ucuncu maas değerini çağırın.
SELECT min (maas) As endusuk_ucuncu_maas FROM calisanlar2 
WHERE maas>(SELECT min(maas) from calisanlar2
WHERE maas>(SELECT min(maas) from calisanlar2)) ;






