-- Create Stored Procedure to insert Ratings
CREATE PROCEDURE ServiceRating
AS
BEGIN
	UPDATE StreamingService
	SET ServiceRating = AverageRating.Rating
	FROM
		(SELECT ServiceName,AVG(Review.Rating) as Rating FROM Review
			GROUP BY Review.ServiceName) AS AverageRating
	WHERE StreamingService.ServiceName = AverageRating.ServiceName
END;

--Execute Stored Procedure
Exec ServiceRating;

SELECT * FROM StreamingService;