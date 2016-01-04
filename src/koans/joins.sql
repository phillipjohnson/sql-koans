-- Meditate on the "INNER JOIN" keyword to link tables
select *
from customer
	_____ _____ event on customer.id = event.customer_id

-- Meditate on the "INNER" being implicit
select *
from customer
	_____ event on customer.id = event.customer_id

-- Meditate on join conditions
select *
from customer
	join event on _____ = _____

-- Meditate on limiting columns in joins
select _____.name, _____.datetime
from customer
	join event on customer.id = event.customer_id

-- Meditate on aliasing tables
select *
from customer c
	join event e on _____.id = _____.customer_id

-- Meditate on multiple joins
select e.id, e.type, e.datetime, c.id, c.name, b.title
from event e
	join customer c on _____.customer_id = _____.id
	join book b on _____.book_id = _____.id

-- Meditate on the "LEFT JOIN" keyword
select b.*, e.datetime
from book b
	_____ join event e on b.id = e.book_id
