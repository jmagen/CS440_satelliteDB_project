/*
Find who launched the most satellites in the past 10 years and how many they lanched
SUBSTRING(`launchDate`, -4, 4) returns the year, since it is in a format that I can't figure out 
how to compare against
*/
select `agency`, count(`satId`) FROM `satellitesByAgency`
WHERE SUBSTRING(`launchDate`, -4, 4)>'2009'
GROUP BY `agency`
ORDER BY count(`satId`) DESC

/*
Who launched the most satellites from the beginning of time until the cold war ended
*/
select `agency`, count(`satId`) FROM `satellitesByAgency`
WHERE SUBSTRING(`launchDate`, -4, 4)<'1991'
GROUP BY `agency`
ORDER BY count(`satId`) DESC


--find most recently launched GLOBALSTAR satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' GLOBALSTAR'
ORDER BY `satId` DESC

--find most recently launched BRIGHTEST satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' BRIGHTEST'
ORDER BY `satId` DESC

--find most recently launched NOAA satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' NOAA'
ORDER BY `satId` DESC

--find most recently launched GEOSTATIONARY satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' GEOSTATIONARY'
ORDER BY `satId` DESC

--find most recently launched SPACE & EARTH SCIENCE satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' SPACE & EARTH SCIENCE'
ORDER BY `satId` DESC

--How many satellites were launched per year?
SELECT year(launchDate) AS Year, COUNT(*) AS Total FROM Satellites
GROUP BY year(launchDate)

