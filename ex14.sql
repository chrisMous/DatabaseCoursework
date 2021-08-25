.mode columns
.headers ON
SELECT SUM(cases) AS [totalCases],
  SUM(deaths) AS [totalDeaths]
  FROM COVIDStats;
