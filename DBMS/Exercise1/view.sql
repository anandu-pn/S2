use testnew;
select * from countries;
select country_name from countries;
select email, phone_number from employees;
select * from employees where last_name='Fay';
-- Write a query to find the hire date for employees whose last name is “Grant” or “Whalen”. 
select hire_date from employees where last_name='Grant' or last_name='Whalen';
-- Write a query to get all the employees who work for department 8
select * from employees where department_id=8;
-- Write a query to display the departments in the descending order. 
SELECT * FROM departments ORDER BY department_name DESC;
-- Write a query to display all the employees whose last name starts with “K”. 
select * from employees where last_name LIKE 'K%';
--  Display name of the employees whose hire dates are between 1995 and 1997.
SELECT first_name,last_name FROM employees  WHERE hire_date BETWEEN '1995-01-01' AND '1997-12-31';
-- Write a query to display jobs where the maximum salary is less than 5000.
SELECT job_title FROM jobs  WHERE max_salary BETWEEN '0' AND '5000';
-- Write a query to display email address in lower case. 
SELECT LOWER(email) AS email FROM employees;
--  Write a query to display name of the employees who were hired in 1995. 
SELECT first_name,last_name FROM employees  WHERE hire_date BETWEEN '1995-01-01' AND '1995-12-31';
--  Write a query to insert an employee “Paul Newton” in department 11. 
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES (999, 'Paul', 'Newton', 'paul.newton@sqltutorial.org', '123.456.7890', '2025-02-18', 1, 6000.00, NULL, 11);
-- Write a query to delete the shipping department. 
SET SQL_SAFE_UPDATES = 1; -- change value to 1 as soon deletion query executed
DELETE FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Shipping');
DELETE FROM departments WHERE department_name = 'Shipping';
-- Write a query to display employes who were hired on a Thursday.
SELECT * FROM employees WHERE DAYOFWEEK(hire_date) = 5;