write a query to print dep name and average salary of employees in that dep .----imp********
select * from employee
select * from dept

select avg(salary) as avsal,dep_name from employee e
full outer join dept d on e.dept_id=d.dep_id
group by dep_name