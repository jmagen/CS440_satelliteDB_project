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




--PROCEDURES:

--How many satellites were launched per year?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `SatellitesLaunchedPerYear`()
    NO SQL
    COMMENT 'List number of satellites launched per year'
SELECT year(Launches.Dates) AS Year, COUNT(*) AS Total 
FROM Satellites INNER JOIN Launches on Launches.satId = Satellites.satId 
GROUP BY year(Launches.Dates)$$
DELIMITER ;

--Get total number of satellites of category C operated by agency X between times i and j.
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `CountSatellitesByCategoryAgencyTime`(IN `cat` VARCHAR(71), IN `agency` VARCHAR(4), IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
SELECT organizationName, C.category, COUNT(Operates.satId) AS Total
FROM (SELECT * FROM agencies WHERE agencies.orgCode = agency) A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.`category` = cat) C on C.satId = Launches.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC$$
DELIMITER ;

--List all satellites of category C operated by agency X between times i and j.
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `GetSatellitesByCategoryAgencyTime`(IN `cat` VARCHAR(71), IN `agency` VARCHAR(4), IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
SELECT A.organizationName, Satellites.satname, Launches.Dates
FROM (SELECT * FROM agencies WHERE agencies.orgCode = agency) A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.`category` = cat) C on C.satId = Launches.satId
INNER JOIN Satellites ON Launches.satId = Satellites.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
ORDER BY Launches.Dates ASC$$
DELIMITER ;

--Which agency operates the most satellites of Category C?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `RankAgenciesByCategory`(IN `cat` VARCHAR(71))
    NO SQL
    COMMENT 'Lists agencies by their number of satellites in the category'
SELECT organizationName, C.category, COUNT(Operates.satId) AS Total
FROM agencies 
INNER JOIN Operates on agencies.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.`category` = cat) C on C.satId = Launches.satId
GROUP BY organizationName
ORDER BY COUNT(Operates.satId) DESC$$
DELIMITER ;

--What is the average period of satellites in category C?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `CategoryAveragePeriod`(IN `cat` VARCHAR(71))
    NO SQL
SELECT C.category, AVG(Satellites.period) AS Average_Period 
FROM (SELECT * FROM `Contains` WHERE `Contains`.`category` = cat) C
INNER JOIN Satellites on C.satId = Satellites.satId
GROUP BY C.category
ORDER BY AVG(Satellites.period) DESC$$
DELIMITER ;

--How many satellites were launched by agency X between time i and j?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `SatellitesLaunchedByAgencyBetweenTimes`(IN `agency` VARCHAR(4), IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
    COMMENT 'List satellites launched by agency between times t1 and t2'
SELECT A.organizationName, Satellites.satname, Launches.Dates
FROM (SELECT * FROM agencies WHERE agencies.orgCode = agency) A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN Satellites ON Launches.satId = Satellites.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
ORDER BY Launches.Dates ASC$$
DELIMITER ;

--How many satellites of category C were launched between time i and j?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `CountSatellitesOfCategoryLaunchedBetweenTimes`(IN `cat` VARCHAR(71), IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
    COMMENT 'Get count of satellites of category cat launched between t1 & t2'
SELECT C.category, COUNT(Launches.satId) AS Total
FROM Satellites
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.category = cat) C on C.satId = Satellites.satId
INNER JOIN Launches on Satellites.satId = Launches.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
GROUP BY C.category
ORDER BY COUNT(Launches.satId) ASC$$
DELIMITER ;

--Get all satellites launched between times i and j
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `AllSatellitesLaunchedBetweenTimes`(IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
SELECT Satellites.satname, Launches.Dates
FROM Satellites
INNER JOIN Launches on Satellites.satId = Launches.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
ORDER BY Launches.Dates ASC$$
DELIMITER ;

--How many satellites were launched between time i and j?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `CountAllSatellitesLaunchedBetweenTimes`(IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
    COMMENT 'Counts the number of satellites launched between t1 and t2'
SELECT COUNT(Launches.satId) AS Total
FROM Satellites
INNER JOIN Launches on Satellites.satId = Launches.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
ORDER BY Launches.Dates ASC$$
DELIMITER ;


--Which satellites of category C were launched between time i and j?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `SatellitesOfCategoryLaunchedBetweenTimes`(IN `cat` VARCHAR(71), IN `t1` YEAR, IN `t2` YEAR)
    NO SQL
    COMMENT 'List satellites of category cat launched between t1 and t2'
SELECT C.category, Satellites.satname, Launches.Dates
FROM Satellites
INNER JOIN (SELECT * FROM `Contains` WHERE `Contains`.category = cat) C on C.satId = Satellites.satId
INNER JOIN Launches on Satellites.satId = Launches.satId
WHERE year(Launches.Dates) <= t2 AND year(Launches.Dates) >= t1
ORDER BY Launches.Dates ASC$$
DELIMITER ;

--Which categories of satellites are operated by agency X?
DELIMITER $$
CREATE DEFINER=`cs440_magenhej`@`%` PROCEDURE `CategoriesOperatedByAgency`(IN `org` VARCHAR(4))
    NO SQL
    COMMENT 'List categories of satellites owned by agency'
SELECT DISTINCT `Contains`.category, COUNT(Operates.satId) AS Total
FROM (SELECT * FROM agencies WHERE agencies.orgCode = org) A 
INNER JOIN Operates on A.orgCode = Operates.orgCode 
INNER JOIN Launches on Operates.satId = Launches.satId
INNER JOIN `Contains` on `Contains`.satId = Launches.satId
GROUP BY `Contains`.`category`
ORDER BY COUNT(Operates.satId) DESC$$
DELIMITER ;