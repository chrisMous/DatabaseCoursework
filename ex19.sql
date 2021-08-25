.mode columns
.headers ON
SELECT dateRep AS [Date],
 SUM(deaths) OVER(ORDER BY dateRep) AS [cumulativeUkDeaths],
 SUM(cases) OVER(ORDER BY dateRep) AS [cumulativeUkDeaths]
 FROM COVIDStats WHERE geoId = 'UK'
 ORDER BY dateRep ASC;
 


