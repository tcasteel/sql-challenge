COPY employees FROM 'data/employees.csv' DELIMITER ',' CSV HEADER;

COPY departments FROM 'data/departments.csv' DELIMITER ',' CSV HEADER;

COPY dept_emp FROM 'data/dept_emp.csv' DELIMITER ',' CSV HEADER;

COPY dept_manager FROM 'data/dept_manager.csv' DELIMITER ',' CSV HEADER;

COPY salaries FROM 'data/salaries.csv' DELIMITER ',' CSV HEADER;

COPY titles FROM 'data/titles.csv' DELIMITER ',' CSV HEADER;