--—оздать триггер дл€ повышени€ рейтинга спортсмена, рейтинга и оклада тренера  после участи€ в соревновании
CREATE TRIGGER UpRatingAndSalary ON Results 
 AFTER INSERT
    AS
	   DECLARE @AthleteID int
	    SELECT @AthleteID = AthleteID FROM INSERTED
	   DECLARE @AthletePoints int
	    SELECT @AthletePoints = AthletePoints FROM INSERTED
 BEGIN
	   UPDATE Athletes
		  SET Rating = Rating + @AthletePoints

	   UPDATE Coaches
		  SET Salary=Salary + @AthletePoints * 0.1
	    WHERE CoachID = 
		      (SELECT CoachID
			     FROM Athletes
			    WHERE AthleteID=@AthleteID)
   END