.mode columns
.headers ON
SELECT dateRep AS [Date] ,cases AS [NumberOfCases]
 FROM COVIDStats
 WHERE geoId = 'UK'
 ORDER BY dateRep ASC;
