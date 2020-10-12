DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;



CREATE TABLE titles (
  title_id integer NOT NULL,
  title character varying(45) NOT NULL
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL
);

CREATE TABLE dept_manager (
  dept_no integer NOT NULL,
  emp_no integer NOT NULL
);

CREATE TABLE dept_emp (
    emp_no integer NOT NULL,
    dept_no integer NOT NULL
);

CREATE TABLE departments (
    dept_no integer NOT NULL,
    departments character varying(45) NOT NULL
);

CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title_id character varying(45) NOT NULL,
  birth_date timestamp without time zone NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex VARCHAR(20) NOT NULL,
  hire_date timestamp without time zone NOT NULL
);


SELECT employees.emp_no, employees.last_name,employees.first_name,employees.sex,salary.salary
FROM employees
LEFT JOIN salaries AS salary
ON salary.emp_no = employees.emp_no

SELECT emp_no,last_name,first_name,hire_date
FROM employees
WHERE hire_date LIKE "1986%"



SELECT last_name,first_name,sex
FROM employees
WHERE first_name = "Hercules"
	AND last_name LIKE "B%"




SELECT COUNT(*)
FROM city
UNION
SELECT COUNT(*)
FROM country;


-- Question 2

SELECT customer_id
FROM customer
WHERE address_id IN
(
  SELECT address_id
  FROM address
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city = 'London'
  )
)
UNION ALL
SELECT id
FROM customer_list
WHERE city = 'London';


