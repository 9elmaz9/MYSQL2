USE TheBelgianBreweryDB;


/*A*/

SELECT COUNT(*) AS aantal_brouwers
FROM Brewers;
/* 118 */


/*B*/
/* Bereken de gemiddelde turnover van alle brouwers. (114302.1525)*/


SELECT AVG(Turnover) AS gemidd

       FROM brewers;


/*3*/
/*(c) Geef het laagste, gemiddelde en hoogste alcoholgehalte uit de beers tabel in 1 instructie. (0, 5.8706, 15)*/

SELECT
    MIN(Alcohol) AS laagste_alcoholgehalte,
    AVG(Alcohol) AS gemiddeld_alcoholgehalte,
    MAX(Alcohol) AS hoogste_alcoholgehalte
FROM Beers;

/*4*/
/* (d) Bereken de gemiddelde turnover van alle brouwers in de provincie Brabant (postcodes die beginnen met
een 1) maar negeer de brouwerij ‘Palm’. (39525.7143)*/

SELECT  AVG (brewers.Turnover) AS gemiddelde
FROM brewers
WHERE ZipCode LIKE  '1%'
AND  Name !='Palm';



/*5E */
/*(e) Bereken het gemiddelde alcohol per categorie(id). (114 records) */

SELECT CategoryId, AVG(Alcohol) AS gemiddeld_alcoholgehalte
FROM thebelgianbrewerydb.Beers
GROUP BY CategoryId;



/* 6 F*/

/* (f) Toon de hoogste bierprijs per categorie maar negeer alle bieren die niet in stock zijn. Sorteer
op categorie id. Zorg er ook voor dat we enkel prijzen zien die hoger zijn dan 3. (5 records)*/


SELECT beers.CategoryId, MAX(beers.Price) as hoogste_bierprijs
FROM beers
WHERE Stock>0 and Price>3
GROUP BY CategoryId

ORDER BY CategoryId;



