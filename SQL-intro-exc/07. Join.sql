select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_salary;

-- Joins --

select *
from parks_and_recreation.employee_demographics  as dem #table n1
right join parks_and_recreation.employee_salary as sal #table n2
	on dem.employee_id = sal.employee_id
;

select dem.employee_id, age, occupation # Hay que aclarar que dónde salen las variables si la columna existe en ambas
from parks_and_recreation.employee_demographics  as dem #table n1
left join parks_and_recreation.employee_salary as sal #table n2
	on dem.employee_id = sal.employee_id
;


select emp01.first_name, emp01.last_name, emp01.employee_id, 
		emp02.first_name, emp02.last_name, emp02.employee_id
from employee_salary as emp01
join employee_salary as emp02
	on emp01.employee_id + 1 = emp02.employee_id 
    ;
    
select dem.employee_id, dem.first_name, sal.dept_id, pd.department_name
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
join parks_departments as pd
	on sal.dept_id = pd.department_id
;
