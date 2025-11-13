men-- second highest salary
select max(salary) from Employee 
where salary<(select max(salary)from employee);

-- Another way of doing the same question
select (select distinct salary from employee 
order by salary desc limit 1 offset 1) as SecondHigestSalary;

-- Departmet Highest Salary
select d.name as Department,
e.name as Employee,
e.salary as Salary
from Employee e
join Department d
on e.departmentId=d.id
where e.salary=
  (select max(salary)from Employee 
  where departmentId=e.departmentId);

-- Duplicate Email
 select p.email as Email 
from Person p
group by email
having count(p.email)>1;
