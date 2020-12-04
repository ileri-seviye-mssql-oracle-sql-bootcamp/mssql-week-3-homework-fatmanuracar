--4.   01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.
select u.urunad, count(*) as urun_toplam_adet  from tblSiparisDetay sd
inner join tblUrun u on u.urunKod = sd.urunKod
inner join tblSiparis s on s.faturaKod =sd.faturaKod
where siparisTarih between '01.02.2007' and '05.03.2014'
group by urunAd 