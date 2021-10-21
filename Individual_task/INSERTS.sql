--Coaches
INSERT Coaches VALUES ('Андрей','Иванов','Игоревич',NULL,'BM3334444','без категории',1000)
INSERT Coaches VALUES ('Игорь','Петров','Юрьевич',NULL,'BM3334445','без категории',1000)
INSERT Coaches VALUES ('Анна','Иванова','Игоревна',NULL,'BM3334446','без категории',1000)
INSERT Coaches VALUES ('Алла','Новикова','Борисовна',NULL,'BM3334447','без категории',1000)
INSERT Coaches VALUES ('Светлана','Пугачева','Анатольевна',NULL,'BM3334448','без категории',1000)

--Competitions
INSERT Competitions VALUES('Плавание','Вольный стиль 200м','Афины','2021-05-20')
INSERT Competitions VALUES('Плавание','Брасс 200м','Афины','2021-05-19')
INSERT Competitions VALUES('Лыжи','Биатлон','Сочи','2014-03-16')
INSERT Competitions VALUES('Лыжи','Фристайл','Сочи','2014-03-15')
INSERT Competitions VALUES('Лыжи','Прыжки','Сочи','2014-03-15')

--Athletes
INSERT Athletes VALUES('Петр','Иванов','Алексеевич','1991-04-15','2',9,1)	
INSERT Athletes VALUES('Иван','Иванов','Иванович','1983-08-02','3',5,1)
INSERT Athletes VALUES('Николай','Анищенко','Петрович','1985-05-12','3',6,2)
INSERT Athletes VALUES('Алексей','Григорьев','Николаевич','1979-11-11','1',15,3)
INSERT Athletes VALUES('Алла','Гришко','Николаевна','1984-07-22','МС',26,4)
INSERT Athletes VALUES('Петр','Галошкин','Алексеевич','1990-01-13','КМС',25,5)	
--Results
INSERT Results VALUES (1,1,'00:02:58',1,3,3,NULL)
INSERT Results VALUES (2,1,'00:03:46',3,1,1,NULL)

INSERT Results VALUES (1,2,'00:03:01',2,2,2,NULL)
INSERT Results VALUES (2,2,'00:03:43',1,3,3,NULL)

INSERT Results VALUES (2,3,'00:03:45',2,2,2,NULL)
INSERT Results VALUES (1,3,'00:03:05',4,0,0,'Вывих плеча')

INSERT Results VALUES (3,4,'00:35:38',2,2,2,NULL)
INSERT Results VALUES (4,4,'87',1,3,3,NULL)
INSERT Results VALUES (5,4,'100',1,3,3,NULL)

INSERT Results VALUES (3,5,'00:32:59',1,3,3,NULL)
INSERT Results VALUES (4,5,'85',2,2,2,NULL)
INSERT Results VALUES (5,5,'77',3,1,1,'Растяжение сухожилия')

 UPDATE Coaches
 SET Salary=Salary+Salary*CoachID/100