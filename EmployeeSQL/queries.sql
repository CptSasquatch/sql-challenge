--List the EmployeeID, Last_Name, First_Name, Gender, and Salary of each employee
SELECT e."EmployeeID", "Last_Name", "First_Name", "Gender", "Salary" 
FROM public."Employees" e
JOIN public."Salaries" s ON e."EmployeeID" = s."EmployeeID";

--List the First_Name, Last_Name, and Hire_Date for the employees who were hired in 1986
SELECT "First_Name", "Last_Name", "Hire_Date" 
FROM public."Employees" 
WHERE "Hire_Date" BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT d."DeptID", d."Dept_Name", m."EmployeeID", e."Last_Name", e."First_Name" 
FROM public."Departments" d
JOIN public."Dept_Manager" m ON d."DeptID" = m."DeptID"
JOIN public."Employees" e ON m."EmployeeID" = e."EmployeeID";

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT d."DeptID", e."EmployeeID", e."Last_Name", e."First_Name", d."Dept_Name" 
FROM public."Employees" e
JOIN public."Dept_Employees" de ON e."EmployeeID" = de."EmployeeID"
JOIN public."Departments" d ON de."DeptID" = d."DeptID";

--List First_Name, Last_Name, and Gender of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT "First_Name", "Last_Name", "Gender" 
FROM public."Employees" 
WHERE "First_Name" = 'Hercules' AND "Last_Name" LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT e."EmployeeID", e."Last_Name", e."First_Name" 
FROM public."Employees" e
JOIN public."Dept_Employees" de ON e."EmployeeID" = de."EmployeeID"
JOIN public."Departments" d ON de."DeptID" = d."DeptID" 
WHERE d."Dept_Name" = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT e."EmployeeID", e."Last_Name", e."First_Name", d."Dept_Name" 
FROM public."Employees" e
JOIN public."Dept_Employees" de ON e."EmployeeID" = de."EmployeeID"
JOIN public."Departments" d ON de."DeptID" = d."DeptID" 
WHERE d."Dept_Name" = 'Sales' OR d."Dept_Name" = 'Development';

--List the frequency count of employee last names, i.e., how many employees share each last name in descending order
SELECT "Last_Name", COUNT("Last_Name") 
FROM public."Employees" 
GROUP BY "Last_Name" 
ORDER BY COUNT("Last_Name") DESC;