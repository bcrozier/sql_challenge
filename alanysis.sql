--List the employee number, last name, first name, sex, and salary of each employee (2 points)
select e.emp_no, last_name, first_name, sex, salary 
from employees as e 
inner join salaries as s on e.emp_no = s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees as e 
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, dept_name, dm.emp_no, first_name, last_name
from dept_manager as dm
inner join departments as d on dm.dept_no = d.dept_no
inner join employees as e on dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select e.emp_no, last_name, first_name, dept_no
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees AS e
Where first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name

Select d.dept_name, x.emp_no, e.last_name, e.first_name
From departments as d
Join dept_emp as x on d.dept_no = x.dept_no
Join employees as e on x.emp_no = e.emp_no
Where d.dept_name = 'sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select d.dept_name, x.emp_no, e.last_name, e.first_name
From departments as d
Join dept_emp as x on d.dept_no = x.dept_no
Join employees as e on x.emp_no = e.emp_no
Where d.dept_name in ('Sales', 'Development');


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Select last_name, Count(*) as last_name_count
From employees
Group by last_name
order by last_name_count desc, last_name;
