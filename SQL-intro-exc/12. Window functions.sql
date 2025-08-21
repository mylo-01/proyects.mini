-- Window functions --
select dem.first_name, dem.last_name, avg(salary) over(partition by gender) #avg salary of the entire table but 2 diferent avarages, one for male and another for female 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id  = sal.employee_id
;# Over() solito suelta el avg para todos

select dem.first_name, dem.last_name, gender, salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total #Esta si métela al gpt mi loco, ta complicao
from employee_demographics dem
join employee_salary sal
	on dem.employee_id  = sal.employee_id
order by gender, salary
;# Over solito suelta el avg para todos

select dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) no_dups, #1, 2, 3, 4, 5, 6, 7
rank() over(partition by gender order by salary desc) jumps, #1, 2, 3, 4, 5, 5, 7
dense_rank () over( partition by gender order by salary desc) no_jumps #1, 2, 3, 4, 5, 5, 6
from employee_demographics dem
join employee_salary sal
	on dem.employee_id  = sal.employee_id
;