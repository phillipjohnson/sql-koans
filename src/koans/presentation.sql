-- Meditate on aliasing columns: present the year_published column as "Publication Date"
select title, year_published as '_____'
from book

-- Meditate on sorting with "ORDER BY": sort by customer name
select * from customer
order by _____

-- Meditate on multiple sorts: sort by genre, then title
select * from book
order by _____, _____

-- Meditate on "DESC" keyword
select * from event
order by datetime _____

-- Meditate on the + operator to concatenate data
select last_name _____ ', ' _____ first_name as 'Full Name'
from author