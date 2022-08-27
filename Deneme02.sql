CREATE TABLE Ogrenciler
(
Ogrenci_numarasi serial,
Isim varchar(50),
Soyisim Varchar(50),
Vize_Notu real,
Final_notu real
) ;

Insert Into ogrenciler VALUES ('101', 'Ayse', 'Kilic' , '30', '87') ;
Insert Into ogrenciler Values ('102', 'Zehra' , 'Ok', '98', '76') ;
Insert Into ogrenciler Values ('103','Ahmet', 'Ay' , '63', '88') ; 
Insert into ogrenciler values ('104','Fatma', 'Seven' , '90','87') ;
Insert into ogrenciler values ('105','Burak', 'Sayın' , '80','87') ;


SELECT * FROM Ogrenciler ;


