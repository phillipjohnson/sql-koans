-- Meditate on upper-case queries
SELECT 1

-- Meditate on lower-case queries
_____ 1

-- Meditate on selecting all columns from a table
select * from book

-- Meditate on selecting one column (title) from a table
select _____ from book

-- Meditate on selecting some columns (title, available) from a table
select _____, _____ from book

-- Mediate on aliasing the year_published column as "Publication Date"
select year_published as '_____' from book

-- Meditate on adding a new book
insert into book(title, genre, year_published, available)
values('_____', '_____', _____, 1)

-- Meditate on adding two new books
insert into book(title, genre, year_published, available)
values('_____', '_____', _____, 1)
,('_____', '_____', _____, 1)

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

-- Meditate on the "not" operator: select all books that are not novels or satires
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
