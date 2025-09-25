-- All books with author's name and price -- 
select b.title, a.author_name, b.price_usd 
from authors as a
join books as b
on a.author_id = b.author_id;

-- All orders with customer names and total amounts --
select c.customer_name, o.order_id, o.order_date, o.total_amount
from customers as c
join orders as o 
on c.customer_id = o.customer_id;

-- Customer who spent the most --
select c.customer_name, o.total_amount
from customers as c
join orders as o
on c.customer_id = o.customer_id
order by o.total_amount desc
limit 1;

-- All books published before 2000 -- 
select title, published_year
from books 
where published_year < 2000;

-- Total number of books sold per title --
select b.title, count(od.order_id) as total_count
from books as b
join order_details as od
on b.book_id = od.book_id
group by b.title;

-- All authors and the number of books they have written --
select a.author_name, count(b.book_id) as total_count
from authors as a
join books as b 
on a.author_id = b.author_id
group by a.author_name;

-- Customers and their number of orders--
select c.customer_name, count(o.order_id) as total_orders 
from customers as c
join orders as o on c.customer_id = o.customer_id
join order_details as od on o.order_id = od.order_id
group by c.customer_name;

-- Average book price per author -- 
select a.author_name, avg(b.price_usd) as avg_price
from authors as a
join books as b
on a.author_id = b.author_id
group by a.author_name;

-- Authors born before 1945 --
select author_name, birth_date
from authors 
where birth_date < '1945-01-01';


