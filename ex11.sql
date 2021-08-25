CREATE TABLE PopInfo(
"geoId" TEXT PRIMARY KEY ,
"popData2019" INTEGER
);

CREATE TABLE CountryAndTerritoryInfo(
"geoId" TEXT PRIMARY KEY,
"countriesAndTerritories" BLOB,
"countryterritoryCode" TEXT,
"continentExp" TEXT,
FOREIGN KEY (geoId) REFERENCES PopInfo(geoId)
);

CREATE TABLE COVIDStats(
"dateRep" NUMERIC,
"geoId" TEXT,
"cases" INTEGER,
"deaths" INTEGER,
PRIMARY KEY(dateRep,geoId)
FOREIGN KEY (geoId) REFERENCES CountryAndTerritoryInfo(geoId)
);
