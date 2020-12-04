-- 3.Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.

select k.kullaniciKod,isim,soyad, meslek,s.siparisDurumKod from tblSiparis s 
right join tblKullanici k on k.kullaniciKod = s.kullaniciKod
inner join tblMeslek m on m.meslekKod = k.meslekKod
where s.siparisdurumkod = '10'