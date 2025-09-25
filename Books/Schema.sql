create table authors(author_id int primary key,
                     author_name varchar(250),
                     birth_date date,
                     country text);
                     
create table books(book_id int primary key,
                   title text,
                   author_id int,
                   price int,
                   published_year int,
                   foreign key (author_id) references authors(author_id));
alter table books
rename column price to price_usd;
                   
create table customers (customer_id int primary key,
						customer_name text,
                        customer_email text,
                        phone varchar(20));
                        
create table orders (order_id int primary key,
                     customer_id int,
                     order_date date,
                     total_amount int,
                     foreign key (customer_id) references customers(customer_id));
                     
create table order_details (order_details_id int primary key,
                            order_id int,
                            book_id int,
                            price int,
                            foreign key (order_id) references orders(order_id),
                            foreign key (book_id) references books(book_id));
                   
                   