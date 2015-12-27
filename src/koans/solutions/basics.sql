-- Meditate on upper-case queries
SELECT 1

-- Meditate on lower-case queries
select 1

-- Meditate on selecting all columns from a table
select * from book

-- Meditate on selecting one column (title) from a table
select title from book

-- Meditate on selecting some columns (title, available) from a table
select title, available from book

-- Mediate on aliasing the year_published column as Publication Date
select year_published as 'Publication Date' from book

-- Meditate on adding a new book
insert into book(title, genre, year_published, available)
values('Some New Book', 'Fantasy', 2015, 1)

-- Meditate on adding two new books
insert into book(title, genre, year_published, available)
values('Some New Book', 'Fantasy', 2015, 1)
,('Another New Book', 'Fantasy', 1999, 1)

-- Meditate on filtering results with WHERE: select all novels
select * from book
where genre = 'Novel'

-- Meditate on the != operator: select all books that are not novels
select * from book
where genre != 'Novel'

-- Meditate on the <> operator: select all books that are not novels
select * from book
where genre <> 'Novel'

-- Meditate on the "in" operator: select all novels and satires
select * from book
where genre in ('Novel', 'Satire')

-- Meditate on the "not in" operator: select all books that are not novels or satires
select * from book
where genre not in ('Novel', 'Satire')

-- Meditate on the > operator: select all books published after 1900
select * from book
where year_published > 1900

-- Meditate on the "like" and % operators: select all books that start with 'The'
select * from book
where title like 'The%'

-- Meditate on the "like" and % operators: select all books that contain 'of'
select * from book
where title like '%of%'

-- Meditate on the "and" operator: select all books that start with 'The' OR are available
select * from book
where year_published < 1900
and available = 1

-- Meditate on the "or" operator: select all books that start with 'The' OR are available
select * from book
where title like 'The%'
or available = 1
