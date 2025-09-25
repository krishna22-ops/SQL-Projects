-- Test 1: Ensure all tables exist -- 
select table_name
from information_schema.tables
where table_name in ('authors', 'books', 'customers', 'orders', 'order_details');

-- Test 2: Books must have valid author_id --
select b.book_id, b.author_id
from books b
left join authors a on b.author_id = a.author_id
where a.author_id is null;

-- Test 3: Orders must have valid customer_id --
select o.order_id, o.customer_id
from orders o
left join customers c on o.customer_id = c.customer_id
where c.customer_id is null;

-- Test 4: Authors have unique author_id --
select author_id, count(*)
from authors
group by author_id
having count(*) > 1;

-- Test 5: Books have unique book_id --
select book_id, count(*)
from books
group by book_id
having count(*) > 1;