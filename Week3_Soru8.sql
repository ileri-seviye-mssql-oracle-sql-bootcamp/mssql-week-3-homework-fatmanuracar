--8.Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.

select top 1 k.isim , k.soyad , count(s.kullanicikod) as Top_sip_adet from tblSiparis s
inner join tblKullanici k on s.kullaniciKod= k.kullaniciKod
inner join tblSiparisDetay sd on sd.faturaKod = s.faturaKod
inner join tblUrun u on u.urunkod = sd.urunKod
where isim like 'A%' and soyad like '%ak%' 
group by k.isim, k.soyad, s.kullaniciKod 
order by Top_sip_adet desc