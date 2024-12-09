-- Task 1: Creating a Simple View
CREATE VIEW vw_employee_details AS
SELECT e.fname, e.lname, d.dname
FROM employees e
INNER JOIN departments d
  ON e.department_id = d.department_id;

-- Task 2: Modifying a View
CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT e.fname, e.lname, p.pname, w.hours
FROM employees e
INNER JOIN work_hours w
  ON e.employee_id = w.employee_id
INNER JOIN projects p
  ON w.project_id = p.project_id
WHERE e.department_id = 5;

-- Task 3: Creating Views with Check Option
CREATE VIEW vw_high_status_suppliers AS
SELECT * 
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;
