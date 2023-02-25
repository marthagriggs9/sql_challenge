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
SELECT  titles.title,
		departments.dept_no, 
		dept_manager.emp_no, 
		employees.last_name, 
		employees.first_name,
		departments.dept_name,
		titles.title_id 
		
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no
INNER JOIN titles ON
employees.emp_title_id = titles.title_id;

--3.2 Trying a different way to check the number of results using the employee title id of 'm0001' (which is listed as manager on the titles table)
SELECT emp_no, emp_title_id, last_name, first_name
FROM employees 
WHERE emp_title_id = 'm0001'

--4. Join departments, dept_emp and employees tables to display the department number for each employee along with 
--the employee number, last name, first name and department name
SELECT  departments.dept_no, 
		dept_emp.emp_no, 
		employees.last_name, 
		employees.first_name, 
		departments.dept_name 
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

--5. Filter employees table to list first name, last and sex of each employees whose first name is Hercules
--and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6. Join departments, dept_emp and employees to list each employee in the sales department, including their employee number
--last name and first name
SELECT  departments.dept_name, 	 
		dept_emp.emp_no, 
		employees.last_name, 
		employees.first_name,
		departments.dept_no
		
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

--7. Join departments, dept_emp and employees tables to list each employee in the Sales and Development departments, including their
--employee number, last name, first name and department name
SELECT  employees.last_name, 
		employees.first_name, 
		dept_emp.emp_no,
		departments.dept_name, 
		departments.dept_no
FROM dept_emp
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';


--8. List frequency counts, descending order, of all the employee last names (how many employees share each last name)
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;
