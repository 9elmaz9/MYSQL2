

/* A - We select manufacturers with above average turnover*/

SELECT *
FROM brewers
WHERE turnover > (SELECT AVG(turnover)
                  FROM brewers);



/* B -Select all beers with minimum or maximum alcohol content*/

SELECT *
FROM Beers
WHERE alcohol = (SELECT MIN(alcohol)
                 FROM Beers) OR alcohol = (SELECT MAX(alcohol)
                                           FROM Beers);





/* C -We select all beers with an alcohol content above average and with a producer turnover above average*/

SELECT Beers.* FROM Beers
JOIN brewers ON Beers.BrewerId = BrewerId
WHERE Beers.alcohol > (SELECT AVG(alcohol)
                       FROM Beers) AND brewers.turnover > (SELECT AVG(turnover)
                                                          FROM brewers);



/* D - Select a list of all producers with the price and name of their most expensive beer*/


SELECT BrewerId, brewers.Name
    AS brewer_name, Beers.price
        AS max_beer_price, Beers.name
            AS max_beer_name
FROM brewers
         JOIN Beers ON BrewerId = BrewerId
WHERE (BrewerId, Beers.price) IN (SELECT BrewerId, MAX(Beers.price)
                                         FROM Beers GROUP BY BrewerId);

