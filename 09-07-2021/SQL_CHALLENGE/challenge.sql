DROP TABLE Worker;

CREATE TABLE Worker (
	WORKER_ID INTEGER PRIMARY KEY,
	FIRST_NAME VARCHAR(255) NOT NULL,
	LAST_NAME VARCHAR(255) NOT NULL,
	SALARY INTEGER NOT NULL,
	JOINING_DATE TIMESTAMP NOT NULL,
	DEPARTMENT VARCHAR(255) NOT NULL
);

DROP TABLE Bonus;

CREATE TABLE Bonus (
	WORKER_REF_ID INTEGER REFERENCES Worker,
	BONUS_DATE TIMESTAMP NOT NULL,
	BONUS_AMOUNT INTEGER NOT NULL
);

DROP TABLE Title;

CREATE TABLE Title (
	WORKER_REF_ID INTEGER REFERENCES Worker,
	WORKER_TITLE VARCHAR(255) NOT NULL,
	AFFECTED_FROM TIMESTAMP NOT NULL
);


INSERT INTO Worker
VALUES (1, 'Rick', 'Smith', 100000, '2021-02-20 09:00:00', 'HR'),
(2, 'Sam', 'Williams', 80000, '2021-06-11 09:00:00', 'Admin'),
(3, 'John', 'Brown', 300000, '2021-02-20 09:00:00', 'Hr'),
(4, 'Amy', 'Jones', 500000, '2021-02-20 09:00:00', 'Admin'),
(5, 'Sean', 'Garcia', 500000, '2021-06-11 09:00:00', 'Admin'),
(6, 'Ryan', 'Miller', 200000, '2021-06-11 09:00:00', 'Account'),
(7, 'Patty', 'Davis', 75000, '2021-01-20 09:00:00', 'Account'),
(8, 'Monica', 'Rodriguez', 90000, '2021-04-11 09:00:00', 'Admin');

INSERT INTO Bonus
VALUES (1, '2021-02-20 00:00:00', 5000),
(2, '2021-02-20 00:00:00', 3000),
(3, '2021-06-11 00:00:00', 4000),
(1, '2021-02-20 00:00:00', 4500),
(2, '2021-06-11 00:00:00', 3500);

INSERT INTO Title
VALUES (1, 'Manager', '2021-02-20 00:00:00'),
(2, 'Executive', '2021-06-11 00:00:00'),
(3, 'Executive', '2021-06-11 00:00:00'),
(5, 'Manager', '2021-06-11 00:00:00'),
(4, 'Asst. Manager', '2021-06-11 00:00:00'),
(7, 'Executive', '2021-06-11 00:00:00'),
(6, 'Lead', '2021-06-11 00:00:00'),
(3, 'Lead', '2021-06-11 00:00:00')

SELECT * FROM Worker
-- CHALLENGE ONE
SELECT first_name, last_name FROM Worker 
WHERE salary >=50000 AND salary <= 100000;
-- CHALLENGE TWO
SELECT COUNT(*) FROM Worker
GROUP BY department
ORDER BY department DESC;
-- CHALLENGE THREE
SELECT worker_id FROM Worker
INTERSECT 
SELECT worker_ref_id from bonus
-- CHALLENGE FOUR
SELECT * FROM Worker w1
WHERE 5-1 = (SELECT COUNT(DISTINCT w2.salary) FROM Worker w2
			WHERE w2.salary > w1.Salary)