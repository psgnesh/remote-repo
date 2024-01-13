create table t1(id1 int)
create table t2(id2 int)
insert into t1(id1) values(6)
insert into t2(id2) values(6)
select * from t1
select * from t2

==================================inner join=================
select * from t1
inner join t2 on t1.id1=t2.id2 ----it gives common values in both the table for caliculation if we need to multiply the count of values in both the tables  like t1 having the count  of "number 2" twicw and in t2 if "number 2 having count thrice  then 3*2=6 so we get 6 rows for number 2"
===================================left join===================
select * from t1
left join t2 on t1.id1=t2.id2---- here in left join it will retrives the common data along with uncommon data which i spresnt in left table and it gives null values in right table

===================================right  join================
select *  from  t1
right join t2 on t1.id1=t2.id2----here in left join it will retrives the common data along with uncommon data which i spresnt in left table and it gives null values in right table

================================outter join==================
select * from t1
full outer join t2 on t1.id1=t2.id2



write a query to get region wise count of return orders
select * from orders
select * from returns

select region,count(distinct o.order_id) as ret
from orders o
inner join returns r on o.order_id=r.order_id
group by  region

select region,count(distinct o.order_id) as no_of_return_orders
from orders o
inner join returns r on o.order_id=r.order_id
group by region

write a query to get category wise sales of orders that were not returned

select category,count(sales) as cas from orders o
left join returns r on o.order_id=r.order_id
where cas>0
group by o.category



select d.dep_name,avg(e.salary) as avg_sal
from employee e
inner join dept d on e.dept_id=d.dep_id
group by d.dep_name



rite a query to print dep names where none of the emplyees have same salary.
select dep_name,count(distincit salary) as ctsal from  employee e
inner join dept d on e.dept_id =d.dep_id
where ctsal>0

select d.dep_name
from employee e
inner join dept d on e.dept_id=d.dep_id
group by d.dep_name
having count(e.emp_id)=count(distinct e.salary)



write a query to print employees name for dep id is not avaiable in dept table
select e.emp_name,dept_id from employee e
full outer  join dept d on e.dept_id=d.dep_id

where emp_name is null

write a query to print dep name for which there is no employee
select d.dep_name from dept d
left join employee e on d.dep_id=e.dept_id
where e.emp_id is null

select d.dep_id,d.dep_name
from dept d 
left join employee e on e.dept_id=d.dep_id
group by d.dep_id,d.dep_name
having count(e.emp_id)=0;


select * from orders
select * from returns

write a query to find top 3 subcategories by sales of returned orders in east region

select top 3 sub_category,sum(o.sales) as return_sales
from orders o
inner join returns r on o.order_id=r.order_id
where o.region='East'
group by sub_category
order by return_sales  desc


write a query to find cities where not even a single order was returned.

select o.city,count(o.order_id) 
from orders o
left join returns r on o.order_id=r.order_id
where count(o.order_id)=0
group by o.order_id

select * from orders
select* from returns
write a query to print sub categories where we have all 3 kinds of returns 

select o.sub_category from orders o
right join returns r on o.order_id=r.order_id
group by o.sub_category
having count(distinct return_reason)=3

select o.sub_category
from orders o
inner join returns r on o.order_id=r.order_id
group by o.sub_category
having count(distinct r.return_reason)=3

write a query to print dep name and average salary of employees in that dep 

select* from dept
select * from employee


select d.dep_name,avg(e.salary) as avsal
from employee e
left join dept d on e.dept_id=d.dep_id
group by dep_name


select d.dep_name,avg(e.salary) as avg_sal
from employee e
inner join dept d on e.dept_id=d.dep_id
group by d.dep_name






