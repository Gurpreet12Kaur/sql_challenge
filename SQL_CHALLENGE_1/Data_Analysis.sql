--Data Analysis
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
FROM employees
JOIN salary ON employees.emp_no = salary.emp_no

SELECT first_name,last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%'

SELECT dm.dept_no, dm.emp_no, e.last_name, e.first_name,d.dept_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name  = 'Hercules'
AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees, departments
WHERE departments.dept_name = 'Sales'
OR departments.dept_name='Development'

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;