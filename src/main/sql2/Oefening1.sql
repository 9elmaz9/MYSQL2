USE TheBelgianBreweryDB;
/*A*/
#READ RECORDS

SELECT * FROM categories
LIMIT 38;

/* work only by ID*/
#READ RECORDS

SELECT
CategoryId
FROM Beers
Limit 38 ;



/* B */
#READ RECORDS

SELECT  CategoryId
FROM Beers
ORDER BY CategoryId DESC
LIMIT 38;

/* CORRECT*/
SELECT Category
FROM categories
ORDER BY Category DESC;




/*C*/
#READ RECORDS

SELECT * FROM Brewers WHERE Turnover >5000 ;


/*D*/
#READ RECORDS

SELECT name, city FROM brewers
WHERE turnover > 0 AND turnover < 5000    /*WHERE BETWEEN 0 AND 500 */
ORDER BY turnover;





/*E*/
#READ RECORDS

SELECT DISTINCT Alcohol
FROM Beers
ORDER BY Alcohol DESC;



/*F*/
#READ RECORDS

SELECT DISTINCT name
FROM Beers
WHERE name LIKE '%wit%'
ORDER BY name;


/*G*/
#READ RECORDS

SELECT * FROM Beers
         /* WHERE Alcohol IN(4,5,6); */
WHERE alcohol BETWEEN 3 AND 7;

/*H*/
#READ RECORDS

SELECT *
FROM Beers
ORDER BY alcohol DESC
LIMIT 3;


/*I*/
#READ RECORDS

SELECT name,
       address,
       CONCAT(zipcode, ' ', city) AS address_info
/* SELECT name, address, CONCAT(zipcode, ' ', city) AS City_Zip */
FROM brewers;

