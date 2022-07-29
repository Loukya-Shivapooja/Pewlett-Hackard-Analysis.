MODULE CHALLENGE
Deliverable 1
-- employees titles
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, 
        rt.first_name, 
        rt.last_name, 
        rt.title
INTO "Unique Titles"
FROM retirement_titles AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;
