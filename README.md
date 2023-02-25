# sql_challenge

## Background

It's been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about 
people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are in six CSV files. 

For this project, you'll design the tables to hold the data from the CSV files, import the CSV files into a SQL database and then answer questions about the data. That is, 
you'll perform data modeling, data engineering and data analysis, respectively. 

## Data Modeling
* After inspecting the CSV files, I noted which tables had columns that held the same information. These tables would need to be connected using the Primary Key and Foreign Key Constraints. 

* I used the 'ERD For Table' option available on pgAdmin to create a diagram that shows the connection of columns for the six tables. The diagram is shown below: [^1]

![Pewlett_Hackard_ERD](https://user-images.githubusercontent.com/115905663/221370266-cdb4dade-b02a-4d4e-a9a0-a2de0258eb47.png)

[^1]: Note that I included a [.png](https://github.com/marthagriggs9/sql_challenge/blob/main/EmployeeSQL/Entity_Relationship_Diagram/Pewlett_Hackard_ERD.png) of the diagram, as the [.pgerd](https://github.com/marthagriggs9/sql_challenge/blob/main/EmployeeSQL/Entity_Relationship_Diagram/Pewlett_Hackard_ERD.pgerd) file did not create a visual for easy viewing (both files are located in the [Entity_Relationship_Diagram](https://github.com/marthagriggs9/sql_challenge/tree/main/EmployeeSQL/Entity_Relationship_Diagram) folder, which is located within the [EmployeeSQL](https://github.com/marthagriggs9/sql_challenge/tree/main/EmployeeSQL) folder).
* The diagram shows that the departments table, dept_manager table and dept_emp table all contain a column 'dept_no'. 

* The diagram shows that the dept_manager table, salaries table, dept_emp table and employees table all contain a column 'emp_no'.

* The diagram shows that the employees table and titles table both contain columns that refer to 'title_id', though they are named differently, they both contain information related to title id's given to various title positions within the company. 

## Data Engineering
* I created tables for each of the six CSV files to be imported into. One example of table creating is shown below:

![image](https://user-images.githubusercontent.com/115905663/221371043-e1c2185f-e830-4639-aefc-d419059cf82f.png)

* I did need to alter two of the tables after I realized that I did not include a Primary Key in the titles table. 

![image](https://user-images.githubusercontent.com/115905663/221371105-3a0419ab-145c-4eb8-af2e-cdb70ba5841f.png)

* I imported the CSV files into the tables and could begin the data analysis portion. 
* The folder [EmployeeSQL](https://github.com/marthagriggs9/sql_challenge/tree/main/EmployeeSQL) folder includes a [Queries](https://github.com/marthagriggs9/sql_challenge/tree/main/EmployeeSQL/Queries) folder which contains the [schema.sql](https://github.com/marthagriggs9/sql_challenge/blob/main/EmployeeSQL/Queries/schema.sql) file that has the code for all table creations. 

## Data Analysis
* I was tasked with using the various tables to display certain information about employees, departments, salaries etc. 

* Below is the first 10 rows from each analysis task.

1. List the employee number, last name, first name, sex and salary for each employee. 
![image](https://user-images.githubusercontent.com/115905663/221372420-0856ff29-0f50-4b94-9e94-03aa30f7f79b.png)

2. List the first name, last name and hire date for the employees who were hired in 1986. 
![image](https://user-images.githubusercontent.com/115905663/221372468-a321e410-499b-4115-8ccf-9fab3d5dbae0.png)

3. List the manager of each department along with their department number, department name, employee number, last name and first name.
![image](https://user-images.githubusercontent.com/115905663/221372590-fd4d2933-d37c-488f-b6d7-ff639d16f567.png)

4. List the department number for each employee along with the employee number, last name, first name and department name. 
![image](https://user-images.githubusercontent.com/115905663/221372627-4fdae39d-2067-4b0c-81b8-0dbb9eb157d4.png)

5. List first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B. 
![image](https://user-images.githubusercontent.com/115905663/221372651-7b119f69-db66-4927-a1fb-65b60a0c5d31.png)

6. List each employee in the Sales department, including their employee number, last name and first name. 
![image](https://user-images.githubusercontent.com/115905663/221372695-d82c96c2-d438-4382-a2a4-a10dd4269391.png)

7. List each employee in the Sales and Development departments, including their employee number, last name, first name and department name. 
![image](https://user-images.githubusercontent.com/115905663/221372748-a8057e19-290e-43d6-a186-a0806dfc5c10.png)

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). 
![image](https://user-images.githubusercontent.com/115905663/221372784-dcd35fd9-3e8f-4f87-a3cb-7f710ee2b6f2.png)
