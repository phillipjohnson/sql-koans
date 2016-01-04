-- Meditate on counting rows with COUNT
select _____(*) from book

-- Meditate on counting within groups with GROUP BY
select genre, count(*)
from book
_____ _____ genre

-- Meditate on MAX
select _____(datetime) from event

-- Meditate on MIN
select _____(datetime) from event

-- Meditate on getting the maximum within groups
select genre, _____(year_published)
from book
_____ _____ _____

-- Meditate on joining data with aggregates
select name, count(*)
from customer
	join event on _____ = _____
group by _____
