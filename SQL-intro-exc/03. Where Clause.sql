SELECT *
FROM parks_and_recreation.employee_demographics
# WHERE first_name = "Leslie"
# WHERE salary >= 5000;
# WHERE gender != "female";
# WHERE birth_date > "1985-01-01"
-- AND, OR, NOT -- LOGICAL OPERATORS
#AND gender = "male"
#AND NOT first_name = "Tom";
# WHERE (first_name = "Leslie" AND age = 44) OR age > 55;
-- LIKE STATEMENT
#WHERE first_name LIKE "%er%";
WHERE birth_date LIKE "1989%";