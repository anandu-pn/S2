insert into customer(cust_id,name) values(1,"ABC"),(2,"DEF"),(3,"GHI");
insert into product(product_id,product) values(101,"pencil"),(102,"pen"),(103,"eraser");
insert into sales(cust_id,product_id) values(1,101),(1,102),(2,101);

#to join customer and product 
select customer.name,product.product
from customer join sales on customer.cust_id=sales.cust_id
join product on sales.product_id=product.product_id;

#to count number of product
select product.product,count(customer.cust_id)
from customer join sales on customer.cust_id=sales.cust_id
join product on sales.product_id=product.product_id
group by product.product_id
having count(customer.cust_id)>=2;



