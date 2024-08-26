CREATE TABLE FACULTY (
    F_ID INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Hire_date DATE,
    Salary DECIMAL(10, 2)
);
CREATE TABLE COURSES (
    C_ID INT PRIMARY KEY,
    F_ID INT,
    Cmname VARCHAR(100),
    Fees DECIMAL(10, 2),
    FOREIGN KEY (F_ID) REFERENCES FACULTY (F_ID)
);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (102, 'Amit', 'Mishra', '1996-10-12', 12000);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (103, 'Nitin', 'Vyas', '1994-12-24', 8000);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (104, 'Rakshit', 'Soni', '2001-5-18', 14000);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (105, 'Rashimi', 'Malhotra', '2004-9-11', 11000);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (106, 'Sulekha', 'Srivastava', '2006-6-5', 10000);

INSERT INTO FACULTY (F_ID, Fname, Lname, Hire_date, Salary)
VALUES (107, 'Niranjan', 'Kumar', '1996-8-26', 16000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C21, 102, 'Grid Computing', 4000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C22, 106, 'System Design', 16000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C23, 104, 'Computer Security', 8000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C24, 106, 'Human Biology', 15000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C25, 102, 'Computer Network', 20000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C26, 105, 'Visual Basic', 6000);

INSERT INTO COURSES (C_ID, F_ID, Cmname, Fees)
VALUES (C27, 106, 'Dreamweaver', 4000);



SELECT "F_ID", "Fname", "Lname", "Salary","Hiredate"
FROM FACULTY
WHERE Salary > 12000;

SELECT *
FROM COURSES
WHERE FEES BETWEEN 15000 AND 50000;

UPDATE COURSES

SET FEES = FEES+500;

SELECT C_ID, Cname, Fees

FROM COURSES

WHERE F_ID = 106;

// Traditional approach&nbsp;

SELECT FACULTY.F_ID, FACULTY.Fname, FACULTY.Lname, COURSES.Cmname
FROM FACULTY, COURSES
WHERE FACULTY.F_ID = COURSES.F_ID;

-- Using join keyword

SELECT FACULTY.F_ID, FACULTY.Fname, FACULTY.Lname, COURSES.Cmname

FROM Faculty

JOIN COURSES ON FACULTY.F_ID = COURSES.F_ID;





