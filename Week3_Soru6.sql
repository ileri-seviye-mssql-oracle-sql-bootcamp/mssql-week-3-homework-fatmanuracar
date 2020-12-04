--6.En fazla sipariþ veren meslek grubunu bulunuz.

select top 1 meslek,  count(*) as Siparis_Miktari from tblSiparis s 
inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
inner join tblMeslek m on m.meslekKod=k.meslekKod
where siparisDurumKod in (0,1,2,3)
group by meslek
order by count(*) desc