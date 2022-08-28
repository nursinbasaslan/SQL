/*
where => koþullu sorgulama

select ..... from tabloadi
where alanadi = aranandeðer

<  küçük
<= küçük eþit
>  büyük
>= büyük eþit
!=   <>   not   farklý
=  eþit
*/


--konyada doðan öðrencilerin bilgilerini ekrana getiriniz
select * from ogrenci_bilgileri
where dyeri='Konya'

--konyada doðan öðrencilerin adýný ve soyadýný ekrana getiriniz
select ad, soyad 
from ogrenci_bilgileri
where dyeri='Konya'

--Kredisi 3+1 olan derslerin bilgilerini ekranda gösterin
select *
from dersler
where kredi='3+1'

--Kredisi 3+1 olan derslerden aktif olanlarýn bilgilerini ekranda gösterin
select * from dersler
where kredi='3+1'and durum=1
--where kredi='3+1'and durum='true'

/*
......
where alan1=aranan1 and/or alan2=aranan2 and/or alan3=aranan3

*/

--Kredisi 3+1 olan veya aktif olan derslerin bilgilerini ekranda gösterin
select * from dersler
where kredi='3+1'or durum=1
--1,3,4,5
--1,2,3,5

--bu dönem açýlmayan dersleri ekranda gösteriniz.
select dersadi
from dersler
--where durum=0
where durum='false'

--numarasý 1002 ile 1005 arasýnda olan öðrenci bilgilerini gösteriniz
select * from ogrenci_bilgileri
where ogr_no>=1002 and ogr_no<=1005

/*
aralýk sorgulama
....
where alanadi between deger1 and deger2
*/

select * from ogrenci_bilgileri
where ogr_no between 1002 and 1005

--numarasý 1002 ile 1005 arasýnda olan veya Konyada doðan 
--öðrenci bilgilerini gösteriniz

select * from ogrenci_bilgileri
where (ogr_no>=1002 and ogr_no<=1005) or (dyeri='Konya')
--1.þart 1002,1003,1004,1005
--2.þart 1003,1004,1006
--1002,1003,1004,1005,1006

--numarasý 1002 ile 1005 arasýnda olup Konyada doðan 
--öðrenci bilgilerini gösteriniz
select * from ogrenci_bilgileri
where ogr_no>=1002 and ogr_no<=1005 and dyeri='Konya'

/*
öðrenci numarasý 1001, 1003,1005 ve 1006 olan öðrencilerin bilgilerini
ekranda gösteriniz
*/
select * from ogrenci_bilgileri
--where ogr_no=1001 or ogr_no=1003 or ogr_no=1005 or ogr_no=1006
where ogr_no in(1001,1003,1005,1006)
/*
in = or ile ayný iþlevi yapar
where alanadi in(deger1,deger2,deger3,deger4)
*/

--ismi Bayram, Ebubekir ve Habibe olan öðrencilerin isim ve soyisimlerini ekranda gösteriniz
select ad, soyad from ogrenci_bilgileri
--where ad='Bayram' or ad='Ebubekir' or ad='Habibe'
--where ad in ('bayram', 'ebubekir', 'habibe')
--where ad in ('bAYRam', 'EbUbeKÝR', 'hAbiBe')
where AD in ('bAYRam', 'EbUbeKÝR', 'hAbiBe', 'þeyda')


-- bölüm bilgisi yazýlmayan öðrencilerin bilgilerini ekranda gösteriniz
select * from ogrenci_bilgileri
where bolum is NULL or bolum=''

