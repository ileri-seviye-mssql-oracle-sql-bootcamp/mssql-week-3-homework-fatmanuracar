--1.Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select urunad, urunkod, listeFiyat*(1+KDVoran) as KDV_Dahil_Satis from tblUrun