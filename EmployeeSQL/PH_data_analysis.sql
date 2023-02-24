--1. Join employees table and salary table to display employee number, last name, first name 
--sex and salary for each employee. 
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;


--2. Filter employees table to display the last name, first name and hire date for employees
-- who were hired in 1986
SELECT *
FROM employees

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 

--3. Join departments, dept_manager and employees tables to display the manager of each department
-- along with the department number, department name, employee number, last name and first name
SELECT departments.dept_no, 
		departments.dept_name,
		dept_manager.emp_no, 
		employees.last_name, 
		employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--3.2 Trying a different way to check the number of results using the employee title id of 'm0001' (which is listed as manager on the titles table)
SELECT emp_no, emp_title_id, last_name, first_name
FROM employees 
WHERE emp_title_id = 'm0001'

--4. Join departments, dept_emp and employees tables to display the department number for each employee along with 
--the employee number, last name, first name and department name
SELECT 

