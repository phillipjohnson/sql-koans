-- Meditate on ONE-TO-MANY relationships
select *
from customer c
	join event e on _____ = _____
where c.id = 20001

-- Meditate on MANY-TO-ONE relationships
select e.*, b.id, b.title
from event e
	join book b on _____ = _____
where b.id = 1

-- Meditate on MANY-TO-MANY relationships
select a.first_name, a.last_name, b.title
from book b
	join book_to_author_map btam on _____.id = _____.book_id
	join author a on _____.author_id = _____.id
where author_id in (1, 5, 6)