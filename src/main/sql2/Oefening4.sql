

/* A - We choose manufacturers with turnover exceeding the average.*/

SELECT *
FROM brewers
WHERE turnover > (SELECT AVG(turnover)
                  FROM brewers);



/* B -Retrieve all beers with the lowest or highest alcohol content.t*/

SELECT *
FROM Beers
WHERE alcohol = (SELECT MIN(alcohol)
                 FROM Beers) OR alcohol = (SELECT MAX(alcohol)
                                           FROM Beers);





/* C -We choose all beers with alcohol content exceeding the average, along with breweries having a turnover above average.*/

SELECT Beers.* FROM Beers
JOIN brewers ON Beers.BrewerId = BrewerId
WHERE Beers.alcohol > (SELECT AVG(alcohol)
                       FROM Beers) AND brewers.turnover > (SELECT AVG(turnover)
                                                          FROM brewers);



/* D - Retrieve a list of all brewers with the price and name of their most expensive beer.*/


SELECT BrewerId, brewers.Name
    AS brewer_name, Beers.price
        AS max_beer_price, Beers.name
            AS max_beer_name
FROM brewers
         JOIN Beers ON BrewerId = BrewerId
WHERE (BrewerId, Beers.price) IN (SELECT BrewerId, MAX(Beers.price)
                                         FROM Beers GROUP BY BrewerId);

