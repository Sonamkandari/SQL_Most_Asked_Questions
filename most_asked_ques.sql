-- second highest salary
select max(salary) from Employee 
where salary<(select max(salary)from employee);

-- Another way of doing the same question
select (select distinct salary from employee 
order by salary desc limit 1 offset 1) as SecondHigestSalary;

-- 
