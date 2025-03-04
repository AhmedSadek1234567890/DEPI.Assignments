/*Task 1: Using Comparison and Logical Operators*/
/*Question:
Write a SQL query to retrieve the emp_id , last_name , and salary of employees whose salary is
between 2,000 and 5,000 and do not have a manager ID of 101 or 200.*/
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
  AND manager_id NOT IN (101, 200);


/*Task 2: Using JOINs and Aliases*/
/*Write a SQL query to display the employee names along with their respective department names.
Use aliases for table names for better readability*/
-- Select the employee's first name and the name of their department
   SELECT employees.first_name AS employee_name,  
        department_name  
FROM employees  
INNER JOIN departments  
  ON employees.department_id = departments.department_id  
ORDER BY ; 
             
             
       



/*Task 3: Aggregate Functions and GROUP BY
Question:
Write a SQL query to find the number of employees and the average salary for each department.
Ensure that the results are grouped by department ID.*/
SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;
