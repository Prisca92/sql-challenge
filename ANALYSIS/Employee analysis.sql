1.List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no,employees.first_name,employees.last_name,employees.sex,salaries.salary
from employees join salaries on (employees.emp_no = salaries.emp_no);

2.List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT employees.first_name,employees.last_name,employees.hire_date 
from employees 
WHERE extract (year from hire_date) = 1986;

3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_managers.dept_no,departments.dept_name,dept_managers.emp_no,employees.first_name,employees.last_name
From departments 
Join dept_managers
on (departments.dept_no = dept_managers.dept_no)
Join employees
On (dept_managers.emp_no = employees.emp_no)

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT departments.dept_name,employees.emp_no,employees.last_name,employees.first_name
from dept_emp Join employees on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT employees.first_name,employees.last_name,employees.sex
from employees 
WHERE first_name ='Hercules' 
And last_name like 'B%';

6.List each employee in the Sales department, including their employee number, last name, and first name.

SELECT dept_emp.emp_no,employees.last_name, employees.first_name
from dept_emp join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development';

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;