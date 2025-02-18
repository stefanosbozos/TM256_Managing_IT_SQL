/*
 for any country whose cities have a total population of over 5 million, 
 lists the country and the number of cities in that country.
*/

SELECT country, COUNT(name)
FROM city
GROUP BY country
HAVING SUM(population) > 5000;