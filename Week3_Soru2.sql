--2.En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.
select sd.toplam, u.urunad, u.urunKod, k.isim, k.soyad  from tblUrun u 
right join tblSiparisDetay sd on sd.urunKod=u.urunKod
left join tblSiparis s on s.faturaAdresi=sd.faturaKod
left join tblKullanici k on k.kullaniciKod=s.kullaniciKod
where sd.toplam = (select max(toplam) from tblSiparisDetay)