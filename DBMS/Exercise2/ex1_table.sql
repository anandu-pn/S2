create database testnew;
use testnew;
CREATE TABLE regions (
    region_id INT ,
    region_name VARCHAR(50) NOT NULL,
    primary key(region_id)
);
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    region_id INT NOT NULL,
    FOREIGN KEY(region_id) REFERENCES regions(region_id)
);
CREATE TABLE jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(50) NOT NULL,
    min_salary INT NOT NULL,
    max_salary INT NOT NULL
);
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    street_address VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    city VARCHAR(30) NOT NULL,
    state_province VARCHAR(30) NOT NULL,
    country_id INT NOT NULL,
	FOREIGN KEY(country_id) REFERENCES countries(country_id)
);
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location_id INT NOT NULL,
	FOREIGN KEY(location_id) REFERENCES locations(location_id)
);
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number INT NOT NULL,
    hire_date DATE NOT NULL,
    job_id INT NOT NULL,
    salary INT NOT NULL,
    manager_id INT NOT NULL,
    department_id INT NOT NULL,    
	FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
);
CREATE TABLE dependents (
    dependent_id INT AUTO_INCREMENT PRIMARY KEY,
    fist_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    employee_id INT NOT NULL,
	FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);



