CREATE TRIGGER UpdateServiceRating
ON Review
FOR INSERT,UPDATE,DELETE
AS
IF @@ROWCOUNT >=1
BEGIN
	UPDATE StreamingService
	SET ServiceRating = AverageRating.Rating
	FROM
		(SELECT ServiceName,AVG(Review.Rating) as Rating FROM Review
			GROUP BY Review.ServiceName) AS AverageRating
	WHERE StreamingService.ServiceName = AverageRating.ServiceName
END;

SELECT * FROM StreamingService