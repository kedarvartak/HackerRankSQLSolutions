
SELECT SUM(CITY.Population) AS Total_Population
FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Asia';