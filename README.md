## Instructions for using the EmployeeSQL database schema, loading the data, and running the queries. (located in the EmployeeSQL folder)

### Step 1 - Create the database 

1. Create a new database in pgAdmin called `EmployeeSQL`
2. Run the `schema.sql` file in pgAdmin to create the tables

### Step 2 - Load the data

1. Import the 'titles.csv' file into the `Titles` table
2. Import the 'employees.csv' file into the `Employees` table
3. Import the 'departments.csv' file into the `Departments` table
4. Import the 'dept_emp.csv' file into the `Dept_Employees` table (Don't include the SERIAL column "ID")
5. Import the 'dept_manager.csv' file into the `Dept_Manager` table (Don't include the SERIAL column "ID")
6. Import the 'salaries.csv' file into the `Salaries` table 

## Run the queries in the `queries.sql` file to return the following information:

1. A list of the EmployeeID, Last_Name, First_Name, Gender, and Salary of each employee.
2. A list of the First_Name, Last_Name, and Hire_Date for employees who were hired in 1986.
3. A list of the manager of each department with the following information: Department Number, Department Name, the Manager's EmployeeID, Last Name, First Name.
4. A list of the department of each employee with the following information: EmployeeID, Last Name, First Name, and Department Name.
5. A list of the First_Name, Last_Name, and Salary for employees whose first name is "Hercules" and last names begin with "B."
6. A list of all employees in the Sales department, including their EmployeeID, Last Name, First Name.
7. A list of all employees in the Sales and Development departments, including their EmployeeID, Last Name, First Name, and department name.
8. In descending order, a list of the frequency count of employee last names, i.e., how many employees share each last name.

## output_data folder contains the ERD of the database schema:

*EmployeeSQL_ERD.png

## output_data folder contains the output of the queries in CSV format as follows:

*data_analysis_01.csv
*data_analysis_02.csv
*data_analysis_03.csv
*data_analysis_04.csv
*data_analysis_05.csv
*data_analysis_06.csv
*data_analysis_07.csv
*data_analysis_08.csv

## output_data folder also contains ipynb file with the queries and the output of the queries in the notebook.

*data_analysis.ipynb  (included because it seems easier to grade)