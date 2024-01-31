-- Meditate on aliasing columns: present the year_published column as "Publication Date"
select title, year_published as "Publication Date"
from book

-- Meditate on sorting with "ORDER BY": sort by customer name
select * from customer
order by name

-- Meditate on multiple sorts: sort by genre, then title
select * from book
order by genre, title

-- Meditate on "DESC" keyword
select * from event
order by datetime DESC
