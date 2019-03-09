/*
Find who launched the most satellites in the past 10 years and how many they lanched
SUBSTRING(`launchDate`, -4, 4) returns the year, since it is in a format that I can't figure out 
how to compare against

select `agency`, count(`satId`) FROM `satellitesByAgency`
WHERE SUBSTRING(`launchDate`, -4, 4)>'2009'
GROUP BY `agency`
ORDER BY count(`satId`) DESC

UPDATED BELOW
*/

SELECT organizationName, COUNT(Operates.satId) AS Total
FROM agencies INNER JOIN Operates on agencies.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
WHERE year(Launches.Dates) > year(CURRENT_DATE) - 10
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC

/*
Who launched the most satellites from the beginning of time until the cold war ended

select `agency`, count(`satId`) FROM `satellitesByAgency`
WHERE SUBSTRING(`launchDate`, -4, 4)<'1991'
GROUP BY `agency`
ORDER BY count(`satId`) DESC

UPDATED BELOW
*/
SELECT organizationName, COUNT(Operates.satId) AS Total
FROM agencies INNER JOIN Operates on agencies.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
WHERE year(Launches.Dates) < 1991
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC


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
SELECT year(Launches.Dates) AS Year, COUNT(*) AS Total 
FROM Satellites INNER JOIN Launches on Launches.satId = Satellites.satId 
GROUP BY year(Launches.Dates)
--Cost: 

--What is the total number of satellites operated by each agency?
SELECT organizationName, COUNT(Operates.satId) AS Total
FROM agencies INNER JOIN Operates on agencies.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC
--Cost:

--Get total number of satellites of category C operated by agency X between times i and j;
--List the satellites as well.
SELECT organizationName, C.category, COUNT(Operates.satId) AS Total
FROM (SELECT * FROM agencies WHERE agencies.orgCode = 'US') A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.`category` = 'MILITARY') C on C.satId = Launches.satId
WHERE year(Launches.Dates) < 2000 AND year(Launches.Dates) > 1970
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC;
--Cost:

SELECT A.organizationName, Satellites.satname, Launches.Dates
FROM (SELECT * FROM agencies WHERE agencies.orgCode = 'US') A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.`category` = 'MILITARY') C on C.satId = Launches.satId
INNER JOIN Satellites ON Launches.satId = Satellites.satId
WHERE year(Launches.Dates) < 2000 AND year(Launches.Dates) > 1970
ORDER BY Launches.Dates ASC;
--Cost: