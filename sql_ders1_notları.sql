use  ogrenciotomasyonu

--listeleme
 select *from aileBilgileri  --aile bilgileri tablosunu g�sterir
 select *from ileti�im      -- ileti�im tablosunu g�sterir
 select *from ogrenci_bilgileri -- ogrenci_bilgileri tablosunu g�sterir

 select babaAd� from aileBilgileri  --aile bilgileri tablosundaki  babaad�  alan�n� g�sterir
 select anneAd� from aileBilgileri -- aile blgileri tablosundaki   anneAd�  alan�n� g�sterir 
 select ablaAd� from aileBilgileri  -- aile blgileri tablosundaki  ablaAd�  alan�n� g�sterir 
 select abiAd�  from aileBilgileri  -- aile blgileri tablosundaki  abiAd�   alan�n� g�sterir 

 /*
 birden fazla alan g�sterilebilir
 
  select alan1,alan2,alan3...   from   tabload�

 */

   select telno,il,il�e from ileti�im -- ileti�im tablosundaki il il�e ve telno alan�� ayn� anda g�sterir


   --ALAN AINA TAKMA �S�M VERME 
     -- telno alan ad�n� telefon diye de�i�tirelim
	  select  telno as telefon from ileti�im   --veya
	  select  telno as "teleFON" from ileti�im  --veya
	  select telno 'telEFON' FROM ileti�im      --veya 
	  select telno [TELEFON] FROM ileti�im   --�eklinde olabilir 

	  --birden fazla alan ad�n� de�i�tirip takma ad vermek 
	   select telno as TELEFON,
	   il as �LYEN�AD,
	   il�e as �L�EYEN�AD
	   from ileti�im
	  --�eklinde kullan�l�r

	  --e�er iki kelimelik bir takMa isim vereceksek 
	      --select  telno as telefon from ileti�im  
	  --tan�m� d���ndaki di�er tan�mlamlar� kullanmal�y�z

	  --SIRALAMA
	  select telno from ileti�im  --ileti�im tablosundaki telno alan�n�
	  order by telno              -- telno alan�n� k���kten b�y��e s�rala
			select telno from ileti�im  --ileti�im tablosundaki telno alan�n�
			order by telno asc          -- telno alan�n� k���kten b�y��e s�rala   --asc ile hi�bir�ey yazmamak ayn� anlama geliyor

      select telno from ileti�im  --ileti�im tablosundaki telno alan�n�
	  order by telno  desc        -- telno alan�n� b�y�kten k����e s�rala

	  --birden fazla alana g�re s�ralama 
	   select ad ,soyad,ya� from ogrenci_bilgileri 
	  -- order by ad ,soyad              --a dan z ye gore s�rlan�r ilk dikkate ad alan� al�n�r 
      -- order by ad desc ,soyad asc     -- ad z den a ya g�re s�ralan�r,daha sonra soyad a dan z ye g�re s�ralan�r      
        order by ad asc , soyad  desc    -- ad a dan z ye g�re s�ralan�r soyad z den a ya g�r s�ralan�r  

		-- distinct == TEKRARLI OLAN KAYITLARI TEKE �ND�R�R   ve SIRALAMA YAPAR 
		 select distinct ad  from ogrenci_bilgileri
		 order by ad asc


		 select  ad  from ogrenci_bilgileri  --distinct ile ayn� 
		 group by ad 


		 -- top= en �steki kay�tlar� istenilen  adet  ekranda g�sterir
		  select top 2 ad  from ogrenci_bilgileri  --en �steki 2 kay�t� g�sterir
		  order by ad                             -- ama �nce s�ralar sonra 





