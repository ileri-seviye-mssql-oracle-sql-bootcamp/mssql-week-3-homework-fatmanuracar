-- 5.�ptal edilen sipari�lerde bulunan �r�nleri listeyiniz.

select sdu.siparisdurumkod as iptal_edilen_siparis, u.urunAd  from  tblSiparisDurum sdu
inner join tblSiparis s on s.siparisDurumKod = sdu.siparisDurumKod
inner join tblSiparisDetay sd on sd.faturaKod= s.faturaKod
inner join tblUrun u on u.urunKod = sd.urunKod
where sdu.siparisDurumKod = '10'