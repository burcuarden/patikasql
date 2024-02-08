--film tablosunda bulunan rental-rate sütunundaki değerlerin ortalaması nedir?
select AVG (rental_rate ) from film;
	
--film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
select  MAX (length) from film 
where rental_rate =0.99;

--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
	select count(*) from film f 
	where title  like  'C%';
--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
select count(distinct replacement_cost) from film 
where length > 150;
