--film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
select rating, count(*) from film f 
group by rating ;
--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini 
--ve karşılık gelen film sayısını sıralayınız.

select replacement_cost, count(*) from film f
group by replacement_cost 
having count(*)>50; 

--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
select store_id, count(*)from customer 
group by store_id ;
--city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran 
--country_id bilgisini ve şehir sayısını paylaşınız.
select x.country_id, max(x.adet)
from 
(select c.country_id ,count(*) adet from city c
group by c.country_id) x
group by x.country_id;
