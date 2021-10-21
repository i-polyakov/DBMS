
--2 ������� �������:

--� ����� ����������� ����������� �������� ������ ������, 
SELECT C.FirstName, C.LastName, C.Patronymic ,COUNT(*) AS CountAthletes
  FROM Athletes AS A 
	   JOIN Coaches AS C 
	   ON A.CoachID = C.CoachID
 GROUP BY C.FirstName,C.LastName,C.Patronymic
--����� ��������, ��� ���������� �� ����� �����.
SELECT C.FirstName, C.LastName, C.Patronymic
  FROM Athletes AS A 
       JOIN Coaches AS C 
	   ON A.CoachID = C.CoachID
 WHERE AthleteID NOT IN 
	   (SELECT  AthleteID
		  FROM Results
		 WHERE Injury IS NOT NULL) 
 GROUP BY C.FirstName, C.LastName, C.Patronymic
 

--����� �������, ����������� ����������� ��������.
SELECT FIrstName, LastName, Patronymic
  FROM Coaches
 WHERE Salary =
	   (SELECT MIN(Salary)
		  FROM Coaches) 
  
--���������� ���������� ������������ ������ ���������.
SELECT Rank, COUNT(*) AS CountCompetitions
  FROM Competitions
 GROUP BY Rank
--����� �������, ����������� � ������ �������� ������������ (������� ������� ����������� ���������)

SELECT FIrstName, LastName, Patronymic
  FROM Coaches AS C
  WHERE CoachID = 
		(SELECT CoachID 
		   FROM Athletes
		  WHERE CoachID = C.CoachID 
		  GROUP BY CoachID
		 HAVING AVG(DATEDIFF(yyyy, Birthday, Getdate())) =  
				(SELECT TOP 1 AVG(DATEDIFF(yyyy, Birthday, Getdate())) AS AverageAge
				   FROM Athletes
				  GROUP BY CoachID
				  ORDER BY AverageAge)
		)
--������� ����������� ��������� � ������������� ������ ���������. 
SELECT C.Rank, COUNT(*) AS CountAthletes
  FROM Results AS R 
	   JOIN Competitions AS C 
	   ON R.CompetitionID = C.CompetitionID
 GROUP BY C.Rank