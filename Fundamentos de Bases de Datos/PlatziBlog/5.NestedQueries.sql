SELECT
    Projection.Date
    ,COUNT(*) AS 'PostsCount'
FROM (
    SELECT
        DATE(MIN(Posts.FechaPublicacion)) AS 'Date'
        ,YEAR(Posts.FechaPublicacion) AS `Year`
    FROM PlatziBlog.Posts
    GROUP BY Posts.Year
) AS 'Projection'
GROUP BY Projection.Date 
ORDER BY Projection.Date;

SELECT *
FROM PlatziBlog.Posts
WHERE Posts.FechaPublicacion = (
	SELECT MAX(Posts.FechaPublicacion)
	FROM PlatziBlog.Posts
);
