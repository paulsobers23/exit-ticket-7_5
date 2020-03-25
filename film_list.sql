-- 1
SELECT count(fid) FROM film_list;

-- 2
SELECT title , description FROM film_list 
ORDER BY length(description DESC)
LIMIT 10;

-- 3
 SELECT title FROM film_list 
 min(length) LIMIT 1;
 
-- 4
SELECT title, description FROM film_list 
WHERE actors LIKE '%CAMERON STREEP%';

-- 5
SELECT count(category), avg(price), avg(length) 
FROM film_list;

SELECT category AS "Genre"
avg(price) AS "Average Price",
avg(length) AS "Average Length",
FROM film_list GROUP BY category;

-- 6
SELECT rating AS "Ratings",
count(rating) AS "Count",
 FROM film_list GROUP BY rating;
 
-- 7
UPDATE film_list
SET category = 'international'
WHERE category = 'foreign';

-- 8
DELETE FROM film_list WHERE category = 'children';