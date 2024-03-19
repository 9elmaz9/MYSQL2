USE TheBelgianBreweryDB;


##(a) Show a list of all beer names and their categories for all 0% ABV beers.
##(a) Показать список всех названий пива и их категории для всех пив с 0% алкоголя.
SELECT Beers.name AS beer_name,
      CategoryId AS category_name
FROM Beers
         JOIN categories ON Beers.CategoryId = CategoryId
WHERE Beers.alcohol = 0;

##(b) Show a list of all manufacturers with the price of their most expensive beer.
##(b) Показать список всех производителей с ценой их самого дорогого пива.

SELECT beers.Name AS brewer_name, MAX(Beers.price) AS max_beer_price
FROM Beers
JOIN brewers ON Beers.BrewerId = BrewerId
GROUP BY Name;

##(c) Show all beers with IDs from 1500 to 1600 along with their possible producers.
##(c) Показать все пива с идентификаторами от 1500 до 1600 вместе с их возможными производителями.
SELECT Beers.*,beers.Name AS brewer_name
FROM Beers
         LEFT JOIN brewers ON Beers.BrewerId= BrewerId
WHERE Beers.id BETWEEN 1500 AND 1600;
##(d) Показать топ-3 пив с наибольшим содержанием алкоголя вместе с названием производителя и категорией.
##(d) Show the top 3 beers with the highest alcohol content along with the manufacturer's name and category.
SELECT Beers.id, Beers.name AS beer_name, Name AS brewer_name, CategoryId AS category_name
FROM Beers
         JOIN beers ON Beers.BrewerId = BrewerId
         JOIN categories ON Beers.CategoryId = CategoryId
ORDER BY Beers.alcohol DESC
LIMIT 3;