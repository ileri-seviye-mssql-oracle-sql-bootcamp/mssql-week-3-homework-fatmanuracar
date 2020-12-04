--2.En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.
select sd.toplam, u.urunad, u.urunKod, k.isim, k.soyad  from tblUrun u 
right join tblSiparisDetay sd on sd.urunKod=u.urunKod
left join tblSiparis s on s.faturaAdresi=sd.faturaKod
left join tblKullanici k on k.kullaniciKod=s.kullaniciKod
where sd.toplam = (select max(toplam) from tblSiparisDetay)