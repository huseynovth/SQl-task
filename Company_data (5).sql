CREATE DATABASE COMPANY

USE COMPANY
CREATE TABLE DEPARTMENTS(
id int PRIMARY KEY IDENTITY,
[Role] nvarchar(100) NOT NULL

)


CREATE TABLE POSITION(
id int PRIMARY KEY IDENTITY,
Position_name nvarchar(100) NOT NULL
) 


CREATE TABLE EMPLOYEES(
id int PRIMARY KEY IDENTITY,
[Name] nvarchar(100) NOT NULL,
Surname nvarchar(100) NOT NULL,
Salary int NOT NULL,
Department_id int REFERENCES DEPARTMENTS(id),
position_id int REFERENCES POSITION(id)
)


ALTER TABLE EMPLOYEES ALTER COLUMN Salary int NULL

SELECT
    e.[Name],
    e.Surname,
    d.[Role],
    e.Salary,
    p.Position_name
FROM
    EMPLOYEES e
     JOIN DEPARTMENTS d ON e.department_id = d.id
     JOIN Position p ON e.position_id = p.id;
insert into EMPLOYEES(Name,Surname,Salary,position_id,Department_id)
values ('Nurlan','nuruzada',2312,1,1),('Tahir','Huseynov',2312,1,2)


insert into POSITION(Position_name)
values ('ceo')