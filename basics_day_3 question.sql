Note: please do not use any functions which are not taught in the class. 
you need to solve the questions only with the concepts that have been discussed so far.
select *from orders
1- write a sql to get all the rows with more than 1 quantity and ship mode First Class  (1398 rows)


select * from orders o
where o.quantity> 1 and o.ship_mode='First Class'

2- write a sql to get all the orders placed in the month of dec 2020 (352 rows) 

select * from orders o where o.order_date >'2020-11-31' and o.order_date< '2021-01-01'

3- write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 (944 rows)

select * from orders o where ship_mode not in  ('First Class','Standard Class') and order_date>'2020-11-31'

4- write a query to get all the orders rows where profit is negative (1871 rows)

select * from orders o where o.profit <0
5- write a query to get all the orders rows where either quantity is less than 3 or profit is 0 (3348)

select * from orders o 
where o.quantity<3 or o.profit= 0

6- your manager handles the sales for South region and he wants you to create a report of 
all the orders in his region where some discount is provided to the customers (815 rows)

select * from orders o
where o.discount!=0 and  o.region='South'

7- write a query to find top 5 orders with highest sales in furniture category 

select top 5 o.sales  from orders o
where o.category='Furniture'
order by sales desc

8- write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only (1021 rows)
 
select * from orders o 
where o.category in('Furniture','Technology') and o.order_date>'2019-12-31' and o.order_date <'2021-01-01'




9- write a query to find all the orders where order date is in year 2020 but ship date is in 2021 (33 rows)-25

select * from orders o 
where (o.order_date >'2019-12-31' and o.order_date <='2020-12-31') and (o.ship_date>'2020-12-31' and o.ship_date <='2022-01-01')
10-write a query to find order detail of order which was placed for the first time with "First class" ship mode (order_id CA-2018-106054)



Select count(o.customer_id) as cnt,* from  orders o
where o.ship_mode='First class' 



select order_id(min) from ordders  where  ship_mode='FirstClass' group by order_id asc