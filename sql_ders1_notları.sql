use  ogrenciotomasyonu

--listeleme
 select *from aileBilgileri  --aile bilgileri tablosunu gösterir
 select *from iletiþim      -- iletiþim tablosunu gösterir
 select *from ogrenci_bilgileri -- ogrenci_bilgileri tablosunu gösterir

 select babaAdý from aileBilgileri  --aile bilgileri tablosundaki  babaadý  alanýný gösterir
 select anneAdý from aileBilgileri -- aile blgileri tablosundaki   anneAdý  alanýný gösterir 
 select ablaAdý from aileBilgileri  -- aile blgileri tablosundaki  ablaAdý  alanýný gösterir 
 select abiAdý  from aileBilgileri  -- aile blgileri tablosundaki  abiAdý   alanýný gösterir 

 /*
 birden fazla alan gösterilebilir
 
  select alan1,alan2,alan3...   from   tabloadý

 */

   select telno,il,ilçe from iletiþim -- iletiþim tablosundaki il ilçe ve telno alanýý ayný anda gösterir


   --ALAN AINA TAKMA ÝSÝM VERME 
     -- telno alan adýný telefon diye deðiþtirelim
	  select  telno as telefon from iletiþim   --veya
	  select  telno as "teleFON" from iletiþim  --veya
	  select telno 'telEFON' FROM iletiþim      --veya 
	  select telno [TELEFON] FROM iletiþim   --þeklinde olabilir 

	  --birden fazla alan adýný deðiþtirip takma ad vermek 
	   select telno as TELEFON,
	   il as ÝLYENÝAD,
	   ilçe as ÝLÇEYENÝAD
	   from iletiþim
	  --þeklinde kullanýlýr

	  --eðer iki kelimelik bir takMa isim vereceksek 
	      --select  telno as telefon from iletiþim  
	  --tanýmý dýþýndaki diðer tanýmlamlarý kullanmalýyýz

	  --SIRALAMA
	  select telno from iletiþim  --iletiþim tablosundaki telno alanýný
	  order by telno              -- telno alanýný küçükten büyüðe sýrala
			select telno from iletiþim  --iletiþim tablosundaki telno alanýný
			order by telno asc          -- telno alanýný küçükten büyüðe sýrala   --asc ile hiçbirþey yazmamak ayný anlama geliyor

      select telno from iletiþim  --iletiþim tablosundaki telno alanýný
	  order by telno  desc        -- telno alanýný büyükten küçüðe sýrala

	  --birden fazla alana göre sýralama 
	   select ad ,soyad,yaþ from ogrenci_bilgileri 
	  -- order by ad ,soyad              --a dan z ye gore sýrlanýr ilk dikkate ad alaný alýnýr 
      -- order by ad desc ,soyad asc     -- ad z den a ya göre sýralanýr,daha sonra soyad a dan z ye göre sýralanýr      
        order by ad asc , soyad  desc    -- ad a dan z ye göre sýralanýr soyad z den a ya gör sýralanýr  

		-- distinct == TEKRARLI OLAN KAYITLARI TEKE ÝNDÝRÝR   ve SIRALAMA YAPAR 
		 select distinct ad  from ogrenci_bilgileri
		 order by ad asc


		 select  ad  from ogrenci_bilgileri  --distinct ile ayný 
		 group by ad 


		 -- top= en üsteki kayýtlarý istenilen  adet  ekranda gösterir
		  select top 2 ad  from ogrenci_bilgileri  --en üsteki 2 kayýtý gösterir
		  order by ad                             -- ama önce sýralar sonra 





