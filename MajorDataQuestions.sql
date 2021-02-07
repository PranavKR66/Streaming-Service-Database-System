SELECT c.ContentId,c.ContentName,c.ContentType,sc.ServiceName,sc.Exclusive FROM Content as c
	INNER JOIN ServiceContent as sc ON c.ContentId = sc.ContentId
	ORDER BY c.ContentId

SELECT * FROM StreamingService
	ORDER BY ServiceRating DESC

SELECT ServiceName,COUNT(ServiceContentId) as 'Content Count' FROM ServiceContent
	GROUP BY ServiceName

SELECT c.ContentName,c.ContentType,g.GenreName,s.ServiceName,s.ServiceRating FROM Content as c
	INNER JOIN GenreContent as gc ON gc.ContentId = c.ContentId
	INNER JOIN Genre as g ON g.GenreName = gc.GenreName
	INNER JOIN ServiceContent as sc ON sc.ContentId = c.ContentId
	INNER JOIN StreamingService as s ON s.ServiceName = sc.ServiceName
	ORDER BY s.ServiceName,g.GenreName;

SELECT f.FeatureDescription,p.PlanId,p.PlanName,s.ServiceName FROM Features as f
	INNER JOIN FeaturePlan as fp ON f.FeatureId = fp.FeatureId
	INNER JOIN PlanTable as p ON p.PlanId = fp.PlanId
	INNER JOIN StreamingService as s ON s.ServiceName = p.ServiceName