drop table if exists book;
drop table if exists author;
drop table if exists book_to_author_map;
drop table if exists customer;
drop table if exists event;

create table book (
	id int primary key asc
	,title varchar(100) not null
	,genre varchar(100)
	,year_published int
	,available boolean not null
);

create table author (
	id int primary key asc
	,first_name varchar(100)
	,last_name varchar(100)
);

create table book_to_author_map (
	book_id int not null
	,author_id int not null
);

create table customer (
	id int primary key asc
	,name varchar(100) not null
);

create table event (
	id integer primary key asc autoincrement
	,type varchar(50) not null
	,customer_id int not null
	,book_id int not null
	,datetime text not null
);

insert into book(id, title, genre, year_published, available) values (1, 'A Tale of Two Cities', 'Historical drama', 1859, 1);
insert into book(id, title, genre, year_published, available) values (2, 'Oliver Twist', 'Novel', 1837, 0);
insert into book(id, title, genre, year_published, available) values (3, 'Moby Dick', 'Novel', 1851, 0);
insert into book(id, title, genre, year_published, available) values (4, 'Never Let Me Go', 'Speculative fiction', 2005, 1);
insert into book(id, title, genre, year_published, available) values (5, 'The Left Hand of Darkness', 'Speculative fiction', 1969, 1);
insert into book(id, title, genre, year_published, available) values (6, 'The Gilded Age', 'Novel', 1873, 1);
insert into book(id, title, genre, year_published, available) values (7, 'The Adventures of Tom Sawyer', 'Satire', 1876, 1);
insert into book(id, title, genre, year_published, available) values (8, 'Beowulf', 'Epic', 1000, 1);

insert into author(id, first_name, last_name) values (1, 'Charles', 'Dickens');
insert into author(id, first_name, last_name) values (2, 'Herman', 'Melville');
insert into author(id, first_name, last_name) values (3, 'Kazuo', 'Ishiguro');
insert into author(id, first_name, last_name) values (4, 'Ursula', 'Le Guin');
insert into author(id, first_name, last_name) values (5, 'Mark', 'Twain');
insert into author(id, first_name, last_name) values (6, 'Charles Dudley', 'Warner');
insert into author(id, first_name, last_name) values (7, 'Aldous', 'Huxley');

insert into book_to_author_map(book_id, author_id) values (1, 1);
insert into book_to_author_map(book_id, author_id) values (2, 1);
insert into book_to_author_map(book_id, author_id) values (3, 2);
insert into book_to_author_map(book_id, author_id) values (4, 3);
insert into book_to_author_map(book_id, author_id) values (5, 4);
insert into book_to_author_map(book_id, author_id) values (6, 5);
insert into book_to_author_map(book_id, author_id) values (6, 6);
insert into book_to_author_map(book_id, author_id) values (7, 5);

insert into customer(id, name) values (20000, "Aaron Meyers");
insert into customer(id, name) values (20001, "Paula Vasquez");
insert into customer(id, name) values (20002, "Debra Olson");
insert into customer(id, name) values (20003, "Matt Nguyen");

insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20001, 4, '2015-10-18 17:32');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20001, 4, '2015-11-27 18:11');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20000, 3, '2015-10-22 14:56');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20000, 3, '2015-10-29 8:22');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20003, 3, '2015-10-29 10:03');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20003, 3, '2015-11-04 11:15');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20001, 1, '2015-11-15 12:00');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20001, 1, '2015-12-08 19:34');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20002, 5, '2015-11-15 08:44');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20002, 6, '2015-11-15 08:44');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20002, 5, '2015-12-01 09:20');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20002, 6, '2015-11-20 10:13');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20002, 2, '2015-12-30 11:08');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20000, 3, '2015-12-15 15:57');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20000, 6, '2015-12-15 15:57');
insert into event(type, customer_id, book_id, datetime) values ('Checkout', 20001, 1, '2015-12-15 13:05');
insert into event(type, customer_id, book_id, datetime) values ('Checkin', 20001, 1, '2015-12-30 14:59');
insert into event(type, customer_id, book_id, datetime) values ('Lost', 20000, 3, '2015-12-30 16:46');
