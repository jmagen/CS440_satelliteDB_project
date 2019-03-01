--find most recently launched GLOBALSTAR satellites
select `satname`, `satId`, `intl_code`,`launchDate` FROM `satellitesByCategory`
WHERE `category`=' GLOBALSTAR'
ORDER BY `satId` DESC