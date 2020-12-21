# SELECT - FROM
SELECT
	dept_no
FROM
	departments
;

# WHERE
SELECT
	first_name
FROM
	employees
WHERE
	first_name = "Elvis"
;

# AND
SELECT
	*
FROM
	employees
WHERE
	first_name = "Kellie" AND gender = "F"
;

# OR
SELECT
	*
FROM
	employees
WHERE
	first_name = "Kellie" OR "Aruna"
;

# OPERATOR PRECEDENCE
SELECT
	*
FROM 
	employees
WHERE
	gender = "F" AND (first_name = "Kellie" OR first_name = "Aruna")
;

# IN - NOT IN
SELECT
	*
FROM
	employees
WHERE
	first_name IN ("Denis", "Elvis")
;

SELECT
	*
FROM
	employees
WHERE
	first_name NOT IN ("John", "Mark", "Jacob")
;

# LIKE - NOT LIKE
SELECT
	*
FROM
	employees
WHERE
	first_name LIKE ("Mark%")
;

SELECT
	*
FROM
	employees
WHERE
	hire_date LIKE ("2000%")
;

SELECT
	*
FROM
	employees
WHERE
	emp_no LIKE ("1000_")
;

# WILD CARD CHARACTERS
SELECT
	*
FROM
	employees
WHERE
	first_name LIKE ("%Jack%")
;

SELECT 
	*
FROM
	employees
WHERE
	first_name NOT LIKE ("%Jack%")
;

# BETWEEN - AND 
SELECT
	*
FROM
	salaries
WHERE
	salary BETWEEN 66000 AND 70000
;

SELECT
	*
FROM
	salaries
WHERE
	emp_no NOT BETWEEN 1004 AND 1012
;

SELECT
	*
FROM
	departments
WHERE
	dept_no BETWEEN "d003" AND "d006"
;

# IS NOT NULL - IS NULL - exercise
SELECT
	* 
FROM
	departments
WHERE
	dept_no IS NOT NULL
;

# OTHER COMPARISON OPERATORS
SELECT 
	*
FROM
	employees
WHERE
	hire_date >= "2000-01-01"
    AND
		gender = "F"
;

SELECT
	*
FROM
	salaries
WHERE
	salary > 150000
;

# SELECT DISTINCT
SELECT DISTINCT
	hire_date
FROM
	employees
;

# AGGREGATE FUNCTIONS
SELECT 
	COUNT(*)
FROM
	salaries
WHERE
	salary >= 100000
;

SELECT 
	COUNT(*)
FROM
	 dept_manager 
;

# ORDER BY
SELECT
	*
FROM 
	employees
ORDER BY
	hire_date DESC
;

# USING ALIASES (AS)
SELECT
	 salary
    ,COUNT(emp_no) AS Emps_With_Same_Salary
FROM 
	 salaries
WHERE
	salary > 80000
GROUP BY 
	salary
ORDER BY
	salary DESC
;

# HAVING
SELECT
	 emp_no
    ,AVG(salary)
FROM
	salaries
GROUP BY
	emp_no
HAVING
	AVG(salary) > 120000
ORDER BY
	emp_no
;

# WHERE VS HAVING 
SELECT
	emp_no
FROM
	dept_emp
WHERE
	from_date > '2000-01-01'
GROUP BY
	from_date
HAVING
	COUNT(from_date) > 1
ORDER BY
	emp_no
;

# LIMIT
SELECT 
	*
FROM
	dept_emp
LIMIT 100
;
	
	

