-- Meditate on the "JOIN" keyword to link tables
select * from customer
	join event on customer.id = event.customer_id