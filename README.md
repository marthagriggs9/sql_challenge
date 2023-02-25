# sql_challenge

## Background

IT's been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about 
people whom the company employed during the 1980s and 1990s. All the remains of the employee database from that period are in six CSV files. 

For this prject, you'll design the tables to hold the data from the CSV files, import the CSV files into a SQL database and then answer questions about the data. That is, 
you'll perform data modeling, data engineering and data analysis, respectively. 

## Data Modeling
* After inspecting the CSV files, I noted which tables had columns that held the same information. These tables would need to be connected using the Primary Key and Foreign Key
Constraints. 
*I used the 'ERD for tables' option available on SQL to create a diagram that show's the connection of columns for the six tables shown below: [^1]

![Pewlett_Hackard_ERD](https://user-images.githubusercontent.com/115905663/221370266-cdb4dade-b02a-4d4e-a9a0-a2de0258eb47.png)

[^1]: Note that I included a [.png](https://github.com/marthagriggs9/sql_challenge/blob/main/EmployeeSQL/Entity_Relationship_Diagram/Pewlett_Hackard_ERD.png) of the diagram, as the [.pgerd](https://github.com/marthagriggs9/sql_challenge/blob/main/EmployeeSQL/Entity_Relationship_Diagram/Pewlett_Hackard_ERD.pgerd) file did not create a visual for easy viewing (both files are located in the [Entity_Relationship_Diagram](https://github.com/marthagriggs9/sql_challenge/tree/main/EmployeeSQL/Entity_Relationship_Diagram) folder).
