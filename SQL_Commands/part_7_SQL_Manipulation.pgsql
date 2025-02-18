(SELECT name FROM country) 
EXCEPT 
(SELECT country FROM commission);
