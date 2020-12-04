--7.x numaralý ürünü en fazla sipariþ veren þehri bulunuz.

select top 1 sehir, count(sehir) from tblUrun u
inner join tblSiparisDetay sd on sd.urunKod=u.urunKod
inner join tblSiparis s on s.faturaKod= sd.faturaKod
inner join tblKullanici k on k.kullaniciKod =s.kullaniciKod
where u.urunAd='Seri 2 Tus, 1 Scroll Mouse'
group by sehir
order by count(sehir) desc