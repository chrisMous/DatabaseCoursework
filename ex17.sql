.mode columns
.headers ON
SELECT CountryAndTerritoryInfo.countriesAndterritories AS [Country],
 (SUM(COVIDStats.cases * 1.0 ) / (PopInfo.popData2019 * 1.0 )) * 100 AS [TotalCase%],
 (SUM(COVIDStats.deaths * 1.0) / (PopInfo.popData2019 * 1.0)) * 100 AS [TotalDeath%]
 FROM COVIDStats
 LEFT JOIN CountryAndTerritoryInfo ON COVIDStats.geoId = CountryAndTerritoryInfo.geoId
 LEFT JOIN PopInfo ON CountryAndTerritoryInfo.geoId = PopInfo.geoId
 WHERE COVIDStats.geoId != 'geoId'
 GROUP BY COVIDStats.geoId;
 


