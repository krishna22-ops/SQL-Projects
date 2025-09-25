insert into authors 
values (1, 'Jane Austen','1775-12-16','United Kingdom'),
       (2, 'George Orwell', '1903-06-25','United Kingdom'),
       (3, 'Haruki Murakami', '1949-01-12','Japan'),
       (4, 'J.K Rowling', '1965-07-31', 'United Kingdom'),
       (5, 'Gabriel Garcia Marquez', '1927-03-06', 'Colombia');
       

insert into books 
values (1,'Pride and Prejudice',1,10,1813),
       (2, '1984', 2, 12, 1949),
       (3, 'Kafka on the Shore',3,15,2003),
       (4, 'Harry Potter and The Philosophers Stone',4,20,1997),
       (5, 'One Hundred Years Of Solitude', 5,18,1967);
					
 insert into customers 
 values (1, 'Alice', 'alice@gmail.com',1234567890),
        (2, 'Bob', 'bob@gmail.com',2564896512),
        (3, 'Carol', 'carol@gmail.com', 1254689632),
        (4, 'David', 'david@gmail.com', 2356897415),
        (5, 'Emily', 'emily@gmail.com', 5689748959);
        
insert into orders
values (1,1,'2025-06-01',29),
	   (2,2,'2025-06-05',15),
       (3,3,'2025-06-07',38),
       (4,4,'2025-06-20',20),
       (5,5,'2025-06-17',18);
update orders
set total_amount = 30 where order_id = 3;
       
insert into order_details
values (1, 1, 1, 9),
	   (2, 1, 4, 20),
       (3, 2, 3, 15),
       (4, 3, 2, 12),
       (5, 3, 5, 18),
       (6, 4, 4, 20),
       (7, 5, 5, 18);
       
update order_details
set price = 10 where order_details_id = 1;















       