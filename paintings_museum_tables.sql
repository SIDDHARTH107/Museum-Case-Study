SELECT *
FROM artist

SELECT *
FROM canvas_size

SELECT *
FROM image_link

SELECT *
FROM museum

SELECT *
FROM museum_hours

SELECT *
FROM product_size

SELECT *
FROM subject

SELECT *
FROM work

-- Identifying the museums which are open on both Sunday & Monday. Display museum name, city
SELECT name, city, mh.day
FROM museum AS m
INNER JOIN museum_hours AS mh
ON m.museum_id = mh.museum_id
WHERE mh.day IN ('Sunday', 'Monday')
GROUP BY 1, 2, 3

select distinct m.name as museum_name, m.city, m.state,m.country, mh.day
	from museum_hours mh 
	join museum m on m.museum_id=mh.museum_id
	where day='Sunday'
	and exists (select 1 from museum_hours mh2 
				where mh2.museum_id=mh.museum_id 
			    and mh2.day='Monday');
				
'''Which museum is open for the longest during a day. Dispay museum name, state
and hours open and which day?'''
WITH mycte AS
(
SELECT *,
       TO_TIMESTAMP(open, 'HH:MI:AM') AS open_time,
	   TO_TIMESTAMP(close, 'HH:MI:PM') AS close_time,
	   TO_TIMESTAMP(close, 'HH:MI:PM') - TO_TIMESTAMP(open, 'HH:MI:AM') AS duration 
FROM museum_hours AS mh
INNER JOIN museum AS m
ON mh.museum_id = m.museum_id
ORDER BY duration DESC
)

SELECT name,
       state,
	   duration,
	   day
FROM mycte
LIMIT 1

'''Display the country and the city with most no of museums. Output 2 seperate
columns to mention the city and country. If there are multiple value, seperate them
with comma.'''
WITH cte_country AS
	(SELECT country, COUNT(*),
	        RANK() OVER(ORDER BY COUNT(*) DESC) AS country_ranking
	 FROM museum
	 GROUP BY country),
	 
	 cte_city AS
	 (SELECT city, COUNT(*),
	         RANK() OVER(ORDER BY COUNT(*) DESC) AS city_ranking
	  FROM museum
	  GROUP BY city)
	  
-- Now will use CROSS join to join both the temporary tables cuz they don't have any common PK
SELECT country, 
       city, 
	   country_ranking,
	   city_ranking
FROM cte_country
CROSS JOIN cte_city
WHERE country_ranking = 1
  AND city_ranking = 1
  
WITH cte_country AS
	(SELECT country, COUNT(*),
	        RANK() OVER(ORDER BY COUNT(*) DESC) AS country_ranking
	 FROM museum
	 GROUP BY country),
	 
	 cte_city AS
	 (SELECT city, COUNT(*),
	         RANK() OVER(ORDER BY COUNT(*) DESC) AS city_ranking
	  FROM museum
	  GROUP BY city)
	  
-- Now will use CROSS join to join both the temporary tables cuz they don't have any common PK
SELECT STRING_AGG(DISTINCT country, ' , ') AS countries,
	   STRING_AGG(DISTINCT city, ' , ') AS cities
FROM cte_country
CROSS JOIN cte_city
WHERE country_ranking = 1
  AND city_ranking = 1