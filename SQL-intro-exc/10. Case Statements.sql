-- Case statement --
select first_name, last_name, age,
case
	when age <= 30 then "young"
    when age between  31 and 50 then "Old"
    when age >= 50 then "On Death's Door"
end as Age_Brecket
from employee_demographics;
## INSTRUCTIONS:
## Pay encrease, if they are making less than 50k, 5% increase, else, 7% increase
## If they work in finance dep. aditional 10% increase
-------------------------------------------------------
select first_name, last_name, salary,
case 
	when salary > 50000 then salary * 1.07
    when salary < 50000 then salary * 1.05
end as new_salary,
case
	when dept_id = 6 then salary * 0.1
end as bonus
from employee_salary;