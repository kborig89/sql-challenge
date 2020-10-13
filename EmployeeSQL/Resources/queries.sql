

--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name,employees.first_name,employees.sex,salary.salary
FROM employees
JOIN salaries AS salary
ON salary.emp_no = employees.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no,last_name,first_name,hire_date
FROM employees
WHERE hire_date BETWEEN '1-1-1986' AND  '12-31-1986';

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT departments.dept_no, departments.departments, employees.emp_no, 
	employees.last_name, employees.first_name
FROM employees
JOIN dept_manager AS dm ON dm.emp_no=employees.emp_no
JOIN departments ON departments.dept_no=dm.dept_no;



--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name,dept_emp.dept_no, departments.departments
FROM employees
JOIN dept_emp ON dept_emp.emp_no=employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT last_name,first_name,sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name,employees.first_name,dept_emp.dept_no, departments.departments
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name,employees.first_name,dept_emp.dept_no, departments.departments
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
JOIN departments 
ON departments.dept_no = dept_emp.dept_no
WHERE departments.departments IN ('Sales', 'Development');


--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
