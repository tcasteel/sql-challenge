-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ruqlQo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE `departments` (
    `PK` int  NOT NULL ,
    `dept_no` varchar  NOT NULL ,
    `dept_name` varchar  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

CREATE TABLE `dept_emp` (
    `PK` int  NOT NULL ,
    `emp_no` int  NOT NULL ,
    `dept_no` varchar  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

CREATE TABLE `dept_manager` (
    `PK` int  NOT NULL ,
    `dept_no` varchar  NOT NULL ,
    `emp_no` int  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

CREATE TABLE `employees` (
    `PK` int  NOT NULL ,
    `emp_no` int  NOT NULL ,
    `emp_title_id` varchar  NOT NULL ,
    `birth_date` date  NOT NULL ,
    `first_name` varchar  NOT NULL ,
    `last_name` varchar  NOT NULL ,
    `sex` varchar  NOT NULL ,
    `hire_date` date  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

CREATE TABLE `salaries` (
    `PK` int  NOT NULL ,
    `emp_no` int  NOT NULL ,
    `salary` int  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

CREATE TABLE `titles` (
    `PK` int  NOT NULL ,
    `title_id` varchar  NOT NULL ,
    `title` varchar  NOT NULL ,
    PRIMARY KEY (
        `PK`
    )
);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `departments` (`dept_no`);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept_manager_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `departments` (`dept_no`);

ALTER TABLE `employees` ADD CONSTRAINT `fk_employees_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `dept_manager` (`emp_no`);

ALTER TABLE `salaries` ADD CONSTRAINT `fk_salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `employees` (`emp_no`);

