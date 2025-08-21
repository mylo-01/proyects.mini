-- String Functions --

select length("skyfall"); #print the length of the string

select upper("sky"); #Print in upper case

select lower("SKY"); #Print in lower case

select trim("      sky      "); #Prints the string without the spacing in front or back

select ltrim("      sky"); #only renoves left side spacing

select rtrim("      sky"); #only renoves right side spacing

select first_name, left(first_name, 4) #prints the first 4 characters of first_name
from employee_demographics; 

select first_name, left(first_name, 4) #prints the last 4 characters of first_name
from employee_demographics;

select first_name, substring(first_name, 3, 2) #Strats at the 3rth position and takes 2 characters aka 3th and 4th
from employee_demographics;

select first_name, replace(first_name, "a", "z") #Replaces the letter "a" with "z" in first_name column (it is case sensitive)
from employee_demographics;

select first_name, locate("an", first_name) #Returns position of the string in the column "first_name"
from employee_demographics;

select first_name, last_name,
concat (first_name, " ", last_name) as full_name #Returns both name and lastname in the same column separated by a space " "
from employee_demographics;