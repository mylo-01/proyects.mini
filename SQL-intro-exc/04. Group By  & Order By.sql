-- Group By --

SELECT gender # si no hay "agregate function" estos deben ser iguales
FROM parks_and_recreation.employee_demographics
GROUP BY gender; # si no hay "agregate function" estos deben ser iguales

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary
;

select gender, avg(age), max(age), min(age), COUNT(age)
from parks_and_recreation.employee_demographics
group by gender
;
-- ORDER BY --
select *
from parks_and_recreation.employee_demographics
order by 5, 4 desc
;

