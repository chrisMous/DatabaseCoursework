.mode columns
.headers ON
SELECT CountryAndTerritoryInfo.continentExp AS [Continent],
 COVIDStats.dateRep AS [Date] ,
 COVIDStats.cases AS [NumberOfCases],  COVIDStats.deaths AS [NumberOfDeaths]
 FROM COVIDStats
 INNER JOIN CountryAndTerritoryInfo ON COVIDStats.geoId = CountryAndTerritoryInfo.geoId
 WHERE  COVIDStats.cases != 'cases'
 ORDER BY dateRep ASC;

