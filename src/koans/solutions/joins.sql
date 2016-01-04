-- Meditate on the "INNER JOIN" keyword to link tables
select *
from customer
	inner join event on customer.id = event.customer_id

-- Meditate on the "INNER" being implicit
select *
from customer
	join event on customer.id = event.customer_id

-- Meditate on join conditions
select *
from customer
	join event on customer.id = event.customer_id

-- Meditate on limiting columns in joins
select customer.name, event.datetime
from customer
	join event on customer.id = event.customer_id

-- Meditate on aliasing tables
select *
from customer c
	join event e on c.id = e.customer_id

-- Meditate on multiple joins
select e.id, e.type, e.datetime, c.id, c.name, b.title
from event e
	join customer c on e.customer_id = c.id
	join book b on e.book_id = b.id

-- Meditate on the "LEFT JOIN" keyword
select b.*, e.datetime
from book b
	left join event e on b.id = e.book_id
