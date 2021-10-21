--������� �������� ���������: 
--��� ������ ������ � ����������� ��������� ���������� �� ��������� ���.
CREATE PROC AthleteResults
	   (@AthleteID int)
    AS
 BEGIN
	   SELECT C.Type AS CompetitionType, C.Rank AS CompetitionRank, C.Location, C.Date,
			  R.Result, R.Place, R.AthletePoints, R.Injury
	     FROM Results AS R 
			  JOIN Competitions AS C 
			  ON R.CompetitionID = C.CompetitionID
	    WHERE @AthleteID = R.AthleteID 
		  AND  C.Date>= DATEADD(year,-1,GETDATE())
   END

--��� ����� ������  � �������������, ���������� �  ������ �������� �������� ����.
	GO
CREATE PROC InsertCompetition
	   (@Type nvarchar(50),
	   @Rank nvarchar(50),
	   @Location nvarchar(50),
	   @Date date)
    AS
 BEGIN
		 IF (YEAR(@Date) = YEAR(GETDATE()) 
		AND MONTH (@Date) BETWEEN 1 AND 3)
		    INSERT INTO Competitions VALUES(@Type, @Rank, @Location, @Date)
	   ELSE 
			PRINT '����� ������� ������ ������ � �������������, ���������� �  ������ �������� �������� ����!'
   END