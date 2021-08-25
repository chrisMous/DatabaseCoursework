.mode columns
.headers ON
SELECT CountryAndTerritoryInfo.countriesAndterritories AS [Country],
 (SUM(COVIDStats.deaths * 1.0 ) / SUM(COVIDStats.cases * 1.0 )) * 100 AS [DeathPerCase%]
 FROM COVIDStats
 LEFT JOIN CountryAndTerritoryInfo ON COVIDStats.geoId = CountryAndTerritoryInfo.geoId
 WHERE COVIDStats.geoId != 'geoId'
 GROUP BY COVIDStats.geoId
 ORDER BY 2 DESC
 LIMIT 10;
 


