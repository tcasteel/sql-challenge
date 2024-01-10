#SQL-Challenge

With this challegnge brought up the need to create lists with various tables.

Within the code that was written, I was able to create lists for various asks.
It started with getting the employee number, last name, first name, sex, and salary of each employee attached within a list.
Which the tables used for that one, were the employee table and the Salary table to be able to get those working together I was able to use the emp_no from each table to get that result.

Then from there created a list for first name, last name, and hire date for the employees who were hired in 1986.
Tables that were used for this one was just the employee table as it already had all the information that was needed to be worked on with.
To filter out the list to be able to only get those that were hired in 1986 I used WHERE EXTRACT(YEAR FROM hire_date) = 1986; to be able to only get those that were hired at that time.

The third ask was to list the manager of each department along with their department number, department name, employee number, last name, and first name.
To create this list the tables that were used for this one was dept_manager and employees, I was able to get them working together with using the emp_no within both tables.

The fourth ask was to List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Just like the previous list but using the dept_emp instead of the dept_manager table, using the same emp_no I was able to get the list together.

After that was to list first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
The table that was used was employees.
The filter that was used to get the employees that had the first name of Hercules but with their last name starting with B was WHERE first_name = 'Hercules' AND last_name LIKE 'B%';,
Using this it was able to grab all of the hercules names but using the B% it only looked for the ones that had a B to start their last name.

With this question List each employee in the Sales department, including their employee number, last name, and first name.
I used the tables employees, dept_emp, and departments to be able to grab all that was needed to filter out the ones that work in the sales department.
Using WHERE d.dept_name = 'Sales'; it was able to filter out all of the employees that work within the sales dpartment

Next up was to List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
With this question it was very similar to the previous but I needed to add on the Development team onto the code to be able to view both teams.
Using the filter WHERE d.dept_name IN ('Sales', 'Development'); not only did it grab the employees from each team, it was able to tell which team the employees were from.

With the final question List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
I was able to find this by using ORDER BY frequency_count DESC; to be able to grab all of the employees reoccuring last names.
