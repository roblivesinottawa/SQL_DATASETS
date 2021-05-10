SELECT title AS 'Title:',
IF(release_year >= 2001, '21st Century', '20th Century') AS 'released:',
director AS 'director:',
CASE
	WHEN critic_rating <= THEN 'Bad'
    WHEN critic_rating > 5 AND critic_rating <= 7 THEN 'Decent'
    WHEN critic_rating AND critic_rating < 9
    THEN 'Good'
    ELSE 'Amazing'
END AS 'reviews:'
FROM movies_basic
ORDER BY title DESC;
