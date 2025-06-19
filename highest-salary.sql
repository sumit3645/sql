1 select max(salary)
	from employee
	where salary < (select max(salary) from employee)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
  2 select  distinct(salary)
    from employee
    order by salary desc
    limit 1 offset 2
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
3   select  distinct(salary)
    from employee
    order by salary asc
    limit 1 offset 2         ...{second last salary}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
4 select * from (
  select empfname,salary
  ,dense_rank() over(order by salary desc) as third_highest_salary
  from employee)
  where third_highest_salary =3
