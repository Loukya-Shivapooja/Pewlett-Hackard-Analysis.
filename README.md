# Pewlett-Hackard-Analysis.
## Overview of the Analysis
### Purpose of the project
The purpose of the analysis is to prepare Pewlett-Hackward, a company with several thousand employees for the “silver tsunami” as many current employees reach retirement age. Pewlett-Hackard is looking for future in two ways, 
* It is offering retirement package to those who meet certain criteria. 
* It is starting to think about which positions need to be filled in near future. 
* The number of upcoming retirememt will leave thousands of job openings.
we need to know who will be retiring in the next few years and how many positions it has to be filled and finally generating a list of all employees who are eligible for retirment package. 
### Resources
The employee data is available in six CSV files and the analysis is performed using **Relational database**. 
In this Analysis we use:
* **QuickDBD** to create quick database design for better visualization,
* **PostreSQL** a database system to load, build and host company’s data, and
* **pgAdmin** a GUI, using SQL Language to explore, manipulate and extract the data.

The task is to build employee database with SQL by appling data modeling, engineering and analysis.
## Results
### Retiring Employees by titles
To retrieve the data, two tables were merged together - employees and titles - with the `inner join` and filtered by birth date, that indicates who is about to retire in the next few years with the command `WHERE` `(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')`.
* The table includes emp_no, first_name, last_name, title, from_date, to_date.
* The list contains all the employee who are eligible for retirement for the next few years.
* The list shows some employees appear more than once due to change of title during their career at Pewlett-Hackard.
<img width="681" alt="retirement_titles" src="https://user-images.githubusercontent.com/107584361/182313867-b405b79d-8457-451b-aae5-b3d7a4ddf649.png">

### Unique Employees by titles
Second table contains the same data with addition of `DISTINT ON` command that has only unique values. By using command `ORDER BY` `rt.emp_no, rt.to_date DESC` to sort the data by descending order on the to_date column. In this case the most recent title was listed first, and after running the query the duplicates listed after the first appearance of the same employees were removed.
* The table includes emp_no, first_name, last_name, title.
* The table contains a list of employees who are going to retire in the next few years.
* Each employee is listed only once with their recent titles.
<img width="516" alt="Unique_titles" src="https://user-images.githubusercontent.com/107584361/182316327-84d29f40-0d64-4a50-b557-79de738debc4.png">

### The number of retiring employees grouped by title
By using `GROUP BY` ut.title command, and it is responsible for grouping the rows by titles. Next, I used its corresponding command `COUNT` (ut.title) that counts how many times specific title appears in the database.
* The table contains employee title and count of employees in each title.
* This table shows how many employees are retiring in each department for the next few years.
<img width="336" alt="Retiring titles" src="https://user-images.githubusercontent.com/107584361/182318448-846e3101-19b8-41eb-a13a-8ac97b275081.png">

### The employees eligible for the mentorship program
To retrieve this data, three tables were merge together: employees, titles and dep_emp with the inner join. The query filters by birth date (that indicates who is eligible for the mentorship program) with the command `WHERE` `(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')` and to_date to include only current employees. Duplicates were removed by DISTINCT ON (e.emp_no) command. To ensure I got the most recent titles, I used ORDER BY e.emp_no, ti.from_date DESC command.
* The table contains employee number, first name, last name, birth date, from date, to date and title.
* The table displays a list of employees who is eligible for the mentorship program.
<img width="769" alt="mentorship" src="https://user-images.githubusercontent.com/107584361/182320005-e7d993d5-0d23-447e-a6be-b5e5b97f44fa.png">

## Summary





