--Создать представление, 
--содержащее сведения обо всех тренерах,
--соревнованиях, в которых участвовали их спортсмены и местах которые они заняли.

CREATE VIEW CoachesAthletesResults 
	   (CoachFirstName, CoachLastName, CoachPatronymic,
	   AthleteFirstName, AthleteLastName, AthletePatronymic,
	   CompetitionType, CompetitionRank, Location, Date, AthletePlace)
    AS 
SELECT C.FirstName, C.LastName, C.Patronymic,
	   A.FirstName, A.LastName, A.Patronymic,
	   Com.Type, Com.Rank, Com.Location, Com.Date,
	   R.Place
  FROM Coaches AS C 
	   JOIN Athletes AS A 
	   ON C.CoachID=A.CoachID 
	   
	   JOIN Results AS R 
	   ON  A.AthleteID=R.AthleteID

	   JOIN Competitions AS Com
	   ON Com.CompetitionID=R.CompetitionID

     GO
 SELECT * 
   FROM CoachesAthletesResults
