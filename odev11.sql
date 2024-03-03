--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
select first_name from actor a 
union 
select first_name from customer;
--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
select first_name from actor a 
intersect
select first_name from customer;
--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
select first_name from actor a 
except 
select first_name from customer;
--İlk 3 sorguyu tekrar eden veriler için de yapalım.
except all
