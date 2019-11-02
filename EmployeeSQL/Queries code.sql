-- task 1
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender,sal.salary
FROM employees AS emp
JOIN salaries AS sal
ON emp.emp_no = sal.emp_no;

-- task 2
SELECT * FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986';

-- task 3
SELECT dm.dept_no, dep.dept_name, dm.emp_no, emp.last_name, emp.first_name, emp.hire_date, dm.to_date
From dept_manager AS dm
JOIN departments AS dep
ON dm.dept_no = dep.dept_no
JOIN employees AS emp
ON dm.emp_no = dm.emp_no;

-- task 4
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS de
ON de.emp_no = emp.emp_no
JOIN departments AS dep
ON dep.dept_no = de.dept_no;

-- task 5
SELECT first_name, last_name FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- task 6
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees as emp
INNER JOIN dept_emp AS de ON (de.emp_no = emp.emp_no)
INNER JOIN departments as dep ON (dep.dept_no = de.dept_no)
WHERE dep.dept_name = 'Sales';

-- task 7
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees as emp
INNER JOIN dept_emp AS de ON (de.emp_no = emp.emp_no)
INNER JOIN departments as dep ON (dep.dept_no = de.dept_no)
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

-- task 8
SELECT last_name, COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

-- epilogue
SELECT last_name, first_name FROM employees
WHERE emp_no = '499942';