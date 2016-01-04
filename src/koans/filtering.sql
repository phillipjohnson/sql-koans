-- Meditate on filtering results with WHERE: select all novels
select * from book
where genre = '_____'

-- Meditate on the != operator: select all books that are not novels
select * from book
where _____ != '_____'

-- Meditate on the <> operator: select all books that are not novels
select * from book
where _____ _____ '_____'

-- Meditate on the "in" operator: select all novels and satires
select * from book
where _____ in ('_____', '_____')

-- Meditate on the "not in" operator: select all books that are not novels or satires
select * from book
where _____ not in ('_____', '_____')

-- Meditate on the > operator: select all books published after 1900
select * from book
where _____ > _____

-- Meditate on the "like" and % operators: select all books that start with 'The'
select * from _____
_____ title like '_____%'

-- Meditate on the "like" and % operators: select all books that contain 'of'
select * from _____
where _____ _____ '%_____%'

-- Meditate on the "and" operator: select all books published before 1900 that are available
select * from book
where _____ _____ _____
and _____ _____ _____

-- Meditate on the "or" operator: select all books that start with 'The' OR are available
select * from book
where _____ _____ _____
or _____ _____ _____
