select * from orders
1- write a update statement to update city as null for order ids :  CA-2020-161389 , US-2021-156909
update orders  set city='Null' where order_id in ('CA-2020-161389 ' ,' US-2021-156909')

2- write a query to find orders where city is null (2 rows)
select * from orders o where city is null

3- write a query to get total profit, first order date and latest order date for each category

select sum(o.profit) as profi,min(o.order_date) as firt,max(o.order_date) as latest from orders o group by o.category

 
4- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)

select * from orders o where o.customer_name like '_a_d%'

5- write a query to find top 5 sub categories in west region by total quantity sold
select top 5 o.sub_category,sum (o.quantity) as cnt  from orders o where o.region='West' group by o.sub_category order by cnt desc

6- write a query to find total sales for each region and ship mode combination for orders in year 2020

select sum(o.sales) as sal from orders o
where (o.order_date >'2019-12-31' and o.order_date <='2021-01-01')
group by o.region , ship_mode


7- write a query to find orders where customer name niether start with A nor with D and third letter is s  (401 rows)


select * from orders o
where o.customer_name  like [^AD_s%]

8- write a query to find orders placed in january 2020 or january 2021
select * from orders o 
where (order_date   between '2020-01-01' and'2020-01-31') or (order_date   between '2021-01-01' and'2021-01-31')

