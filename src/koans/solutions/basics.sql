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
