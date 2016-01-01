-- Meditate on counting rows with COUNT
select count(*) from book

-- Meditate on counting within groups with GROUP BY
select genre, count(*)
from book
group by genre

-- Meditate on MAX
select max(datetime) from event

-- Meditate on MIN
select min(datetime) from event

-- Meditate on getting the maximum within groups
select genre, max(year_published)
from book
group by genre

-- Meditate on joining data with aggregates
select name, count(*)
from customer
	join event on customer.id = event.customer_id
group by name
