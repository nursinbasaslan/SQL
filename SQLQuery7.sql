/*
where => ko�ullu sorgulama

select ..... from tabloadi
where alanadi = aranande�er

<  k���k
<= k���k e�it
>  b�y�k
>= b�y�k e�it
!=   <>   not   farkl�
=  e�it
*/


--konyada do�an ��rencilerin bilgilerini ekrana getiriniz
select * from ogrenci_bilgileri
where dyeri='Konya'

--konyada do�an ��rencilerin ad�n� ve soyad�n� ekrana getiriniz
select ad, soyad 
from ogrenci_bilgileri
where dyeri='Konya'

--Kredisi 3+1 olan derslerin bilgilerini ekranda g�sterin
select *
from dersler
where kredi='3+1'

--Kredisi 3+1 olan derslerden aktif olanlar�n bilgilerini ekranda g�sterin
select * from dersler
where kredi='3+1'and durum=1
--where kredi='3+1'and durum='true'

/*
......
where alan1=aranan1 and/or alan2=aranan2 and/or alan3=aranan3

*/

--Kredisi 3+1 olan veya aktif olan derslerin bilgilerini ekranda g�sterin
select * from dersler
where kredi='3+1'or durum=1
--1,3,4,5
--1,2,3,5

--bu d�nem a��lmayan dersleri ekranda g�steriniz.
select dersadi
from dersler
--where durum=0
where durum='false'

--numaras� 1002 ile 1005 aras�nda olan ��renci bilgilerini g�steriniz
select * from ogrenci_bilgileri
where ogr_no>=1002 and ogr_no<=1005

/*
aral�k sorgulama
....
where alanadi between deger1 and deger2
*/

select * from ogrenci_bilgileri
where ogr_no between 1002 and 1005

--numaras� 1002 ile 1005 aras�nda olan veya Konyada do�an 
--��renci bilgilerini g�steriniz

select * from ogrenci_bilgileri
where (ogr_no>=1002 and ogr_no<=1005) or (dyeri='Konya')
--1.�art 1002,1003,1004,1005
--2.�art 1003,1004,1006
--1002,1003,1004,1005,1006

--numaras� 1002 ile 1005 aras�nda olup Konyada do�an 
--��renci bilgilerini g�steriniz
select * from ogrenci_bilgileri
where ogr_no>=1002 and ogr_no<=1005 and dyeri='Konya'

/*
��renci numaras� 1001, 1003,1005 ve 1006 olan ��rencilerin bilgilerini
ekranda g�steriniz
*/
select * from ogrenci_bilgileri
--where ogr_no=1001 or ogr_no=1003 or ogr_no=1005 or ogr_no=1006
where ogr_no in(1001,1003,1005,1006)
/*
in = or ile ayn� i�levi yapar
where alanadi in(deger1,deger2,deger3,deger4)
*/

--ismi Bayram, Ebubekir ve Habibe olan ��rencilerin isim ve soyisimlerini ekranda g�steriniz
select ad, soyad from ogrenci_bilgileri
--where ad='Bayram' or ad='Ebubekir' or ad='Habibe'
--where ad in ('bayram', 'ebubekir', 'habibe')
--where ad in ('bAYRam', 'EbUbeK�R', 'hAbiBe')
where AD in ('bAYRam', 'EbUbeK�R', 'hAbiBe', '�eyda')


-- b�l�m bilgisi yaz�lmayan ��rencilerin bilgilerini ekranda g�steriniz
select * from ogrenci_bilgileri
where bolum is NULL or bolum=''

