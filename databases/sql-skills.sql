--Question artist table 1
insert into artist (name)
Values
	('MonsterCat'),
    ('Trap Nation'),
    ('Dynatron');

--Question artist table 2
select * from artist
order by name asc limit 5 ;

--Question employee table 1
select first_name, last_name from employee
where city = 'Calgary';

--Question employee table 2
select * from employee 
where reports_to = 
    (select employee_id from employee 
    where first_name = 'Nancy' and last_name ='Edwards');

--Question employee table 3
select count(*) from employee
where city = 'Lethbridge';

--Question invoice table 1
select count(*) from invoice
where billing_country = 'USA';

--Question invoice table 2
select total from invoice
order by total desc limit 1;

--Question invoice table 3
select total from invoice
order by total asc limit 1;

--Question invoice table 4
select * from invoice
where total > 5;

--Question invoice table 5
select count(*) from invoice
where total < 5;

--Question invoice table 6
select sum(total) from invoice;


--Question JOIN Queries 1
select i --Does the question want the invoice object or * with invoice_line stuff too?
from invoice i
join invoice_line il
on i.invoice_id = il.invoice_id
where il.unit_price > 0.99;

--Question JOIN Queries 2
select i.invoice_date, c.first_name as customer_first_name, c.last_name as customer_last_name, i.total
from invoice i
join customer c
on i.customer_id = c.customer_id;

--Question JOIN Queries 3
select c.first_name as customer_first_name, c.last_name as customer_last_name,
e.first_name as support_rep_first_name, e.last_name as support_rep_last_name
from customer c
join employee e
on c.support_rep_id = e.employee_id;

--Question JOIN Queries 4
select al.title as album_title, ar.name as artist
from album al
join artist ar
on al.artist_id = ar.artist_id

--Extra Credit
--Question Artist Table 1
select * from artist
order by name desc limit 10;

--Question Artist Table 2
select * from artist
where name like 'Black%';

--Question Artist Table 3
select * from artist
where name like '%Black%';

--Question Employee Table 1
select birth_date from employee
order by birth_date desc limit 1;

--Question Employee Table 2
select birth_date from employee
order by birth_date asc limit 1;

--Question More Join Queries 1
select pt.track_id
from playlist_track pt
join playlist pl
on pt.playlist_id = pl.playlist_id
where pl.name = 'Music';

--Question More Join Queries 2
select t.name
from track t
join playlist_track p
on t.track_id = p.track_id
where p.playlist_id = 5;

--Question More Join Queries 3
select t.name as track_name, pl.name as playlist_name
from track t
join playlist_track pt
on t.track_id = pt.track_id
join playlist pl
on pt.playlist_id = pl.playlist_id;


--Question More Join Queries 4
select t.name as track_name, a.title as album_title
from track t
join genre g
on t.genre_id = g.genre_id
join album a
on t.album_id = a.album_id
where g.name = 'Alternative & Punk';