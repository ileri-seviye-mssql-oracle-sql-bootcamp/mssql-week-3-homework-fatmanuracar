--1.�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select urunad, urunkod, listeFiyat*(1+KDVoran) as KDV_Dahil_Satis from tblUrun