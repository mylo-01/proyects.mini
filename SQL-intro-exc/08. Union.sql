-- Unions --

select first_name, last_name
from employee_demographics
union distinct #funciona como set, solo toma valores unicos
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all #deja de funcionar como set, ahora toma absolutamente todos
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all #deja de funcionar como set, ahora toma absolutamente todos
select first_name, last_name
from employee_salary
;

select first_name, last_name, "Old Man" as Lable
from employee_demographics
where gender = "male" and age > 40 
union
select first_name, last_name, "Old Lady" as Lable
from employee_demographics
where gender = "female" and age > 40
union 
select first_name, last_name, "Highly Paid Employee" as Lable
from employee_salary
where salary > 70000
order by first_name
;

select *
from employee_demographics;