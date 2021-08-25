INSERT INTO CountryAndTerritoryInfo(geoId, countriesAndTerritories, countryterritoryCode,continentExp)
  SELECT DISTINCT geoId, countriesAndTerritories, countryterritoryCode, continentExp
  FROM dataset;

INSERT INTO PopInfo(geoId,popData2019)
  SELECT DISTINCT geoId,popData2019
  FROM dataset;	

 INSERT INTO COVIDStats(dateRep,geoId,cases, deaths)
  SELECT dateRep, geoId,cases,deaths
  FROM dataset;
  

