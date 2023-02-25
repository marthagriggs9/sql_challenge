--DROP tables if they exist
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

-- creating tables from data
--creating departments table
CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY (dept_no), 
	UNIQUE (dept_name)
); 

--view departments table
SELECT * 
FROM departments

--creating employees table
CREATE TABLE employees(
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

--view employees table
SELECT *
FROM employees


--creating dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

--view dept_manager table
SELECT *
FROM dept_manager


--creating salaries table
CREATE TABLE salaries(
	emp_no INT NOT NULL, 
	salary INT NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
	PRIMARY KEY (emp_no)
);

--view salaries table
SELECT *
FROM salaries


--creating titles table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL, 
	title VARCHAR NOT NULL
);

--view titles table
SELECT *
FROM titles

--creating dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
	PRIMARY KEY (emp_no, dept_no)
);

--view dept_emp table
SELECT *
FROM dept_emp

-- Add primary key to titles table
ALTER TABLE titles
ADD PRIMARY KEY (title_id);

--Add unique constraint to titles table
ALTER TABLE titles
ADD UNIQUE (title);

--Add foreigner key to emp_title_id column of employees table
ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);