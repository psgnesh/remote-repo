1- write a query to find sub-categories where average profit is more than the half of the max profit in that sub-category



select sub_category from orders o  where (select avg(profit) as avp from orders o 
) > (select (max(profit)/2) from orders)
group by sub_category


select sub_category
from orders
group by sub_category
having avg(profit) > max(profit)/2

-------having is similar to where but it is used on multiple rows ,and we use after groupby clause,where clause is applied only on 1 column
2- create the exams table with below script;
create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

write a query to find students who have got same marks in Physics and Chemistry.
select* from exams
select q.student_id from  exams q
group by q.subject ='Physics' ,q.subject='Chemistry'

select student_id , marks
from exams
where subject in ('Physics','Chemistry')
group by student_id , marks
having count(1)=2

3- write a query to find total number of unique products in each category.

select count(distinct o.product_name ) as cntpro,category from orders o
group by o.category
select category,count(distinct product_id) from orders group by category

4- write a query to find region with maximum no of unique cities

select top 1 count(distinct city) as cntcity,region from orders o
group by o.region


5- write a query to find sub categories for which there are more than 100 unique orders placed in the year 2021

select sub_category from orders o
where o.order_date between '2021-01-01' and '2021-12-31'
group by sub_category
having count(distinct o.order_id) >100


select sub_category , count(distinct order_id) as cnt
from orders
where order_date between '2021-01-01' and '2021-12-31'
group by sub_category
having count(distinct order_id)>100