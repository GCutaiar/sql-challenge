CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(255)
	);
SELECT * FROM departments;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_Date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender VARCHAR(1),
	hire_date DATE
	);
SELECT * FROM employees;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no INT,	
	dept_no VARCHAR(4),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
SELECT * FROM dept_emp;

CREATE TABLE titles (
	emp_no INT,	
	title VARCHAR(255),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
SELECT * FROM titles;

CREATE TABLE salaries (
	emp_no INT,	
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
SELECT * FROM salaries;