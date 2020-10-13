DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;



CREATE TABLE titles (
  title_id integer PRIMARY KEY,
  title character varying(45) NOT NULL
);

CREATE TABLE salaries (
  emp_no integer PRIMARY KEY,
  salary integer NOT NULL
);

CREATE TABLE dept_manager (
  dept_no character varying(45),
  emp_no integer NOT NULL
);

CREATE TABLE dept_emp (
    emp_no integer,
    dept_no character varying(45) NOT NULL
);

CREATE TABLE departments (
    dept_no character varying(45) PRIMARY KEY,
    departments character varying(45) NOT NULL
);

CREATE TABLE employees (
  emp_no integer PRIMARY KEY,
  emp_title_id character varying(45) NOT NULL,
  birth_date date NOT NULL,                                  
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex VARCHAR(20) NOT NULL,
  hire_date date NOT NULL
);

