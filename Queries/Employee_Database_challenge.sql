
SELECT * FROM employees;
SELECT * FROM titles;

-- Creating the retirement_titles table
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as ti
ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp.emp_no;

SELECT * FROM retirement_titles;

-- Use Distinct with Order By to remove duplicate rows from retirement_titles
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;


-- New table with count of titles
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

-- Creating mentorship_eligibility table from employees, dept_emp, titles
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
demp.from_date,
demp.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as emp
INNER JOIN dept_emp as demp
ON (emp.emp_no = demp.emp_no)
INNER JOIN titles as ti
ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (demp.to_date = '9999-01-01')
ORDER BY emp.emp_no;

SELECT * FROM mentorship_eligibility;