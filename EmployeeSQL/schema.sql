-- Create table for Employee data
CREATE TABLE "Employees" (
    "EmployeeID" int   NOT NULL,
    "TitleID" VARCHAR(5)   NOT NULL,
    "BirthDate" date   NOT NULL,
    "First_Name" VARCHAR(30)   NOT NULL,
    "Last_Name" VARCHAR(30)   NOT NULL,
    "Gender" VARCHAR(1)   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "EmployeeID"
     )
);

-- Create table for Department data
CREATE TABLE "Dept_Employees" (
    "ID" SERIAL  NOT NULL,
    "EmployeeID" int   NOT NULL,
    "DeptID" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_Dept_Employees" PRIMARY KEY (
        "ID"
     )
);

-- Create table for Department data
CREATE TABLE "Departments" (
    "DeptID" VARCHAR(4)   NOT NULL,
    "Dept_Name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "DeptID"
     )
);

-- Create table for Department data
CREATE TABLE "Dept_Manager" (
    "ID" SERIAL  NOT NULL,
    "DeptID" VARCHAR(4)   NOT NULL,
    "EmployeeID" int   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "ID"
     )
);

-- Create table for Department data
CREATE TABLE "Titles" (
    "TitleID" VARCHAR(5)   NOT NULL,
    "Title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "TitleID"
     )
);

-- Create table for Department data
CREATE TABLE "Salaries" (
    "EmployeeID" int   NOT NULL,
    "Salary" money   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "EmployeeID"
     )
);

-- add foreign key for Dept_Employees table referencing Employees table
ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

-- add foreign key for Dept_Employees table referencing Departments table
ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_DeptID" FOREIGN KEY("DeptID")
REFERENCES "Departments" ("DeptID");

-- add foreign key for Dept_Manager table referencing Departments table
ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_DeptID" FOREIGN KEY("DeptID")
REFERENCES "Departments" ("DeptID");

-- add foreign key for Dept_Manager table referencing Employees table
ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

-- add foreign key for Empoyees table referencing Titles table
ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_TitleID" FOREIGN KEY("TitleID")
REFERENCES "Titles" ("TitleID");

-- add foreign key for Salaries table referencing Employees table
ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employees" ("EmployeeID");

-- create index for Employees table
CREATE INDEX "idx_Employees_TitleID"
ON "Employees" ("TitleID");

-- create index for Salaries table
CREATE INDEX "idx_Salaries_Salary"
ON "Salaries" ("Salary");