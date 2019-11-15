-- Meditate on using subqueries with IN
select * from event
where customer_id _____ (
	select customer_id from event
	where type = 'Lost'
)
order by datetime desc

-- Meditate on WITH to create a Common Table Expression query
_____ book_losers as (
	select customer_id from event
	where type = 'Lost'
)
select e.* from book_losers bl
	join event e on bl.customer_id = e.customer_id
order by datetime desc

-- Meditate on using subqueries for deleting data
delete from _____
where _____ in (
	select book_id
	from event
	where type = 'Lost'
)