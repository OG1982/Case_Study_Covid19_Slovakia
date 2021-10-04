SELECT * FROM CasesPerRegion


--Select data that will be used
SELECT Date, Region, Newcases FROM CasesPerRegion


--Number of daily newcases in BA region
SELECT Date, Newcases as BAregion
FROM CasesPerRegion
WHERE Region = 'Bratislavský'


--Total number of newcases in BA region
SELECT SUM(Newcases) as BAregion
FROM CasesPerRegion
WHERE Region = 'Bratislavský'


--Number of daily newcases in TN region
SELECT Date, Newcases as TNregion
FROM CasesPerRegion
WHERE Region = 'Trenčiansky'


--Total number of newcases in TN region
SELECT SUM(Newcases) as TNregion
FROM CasesPerRegion
WHERE Region = 'Trenčiansky'


--Number of daily newcases in NR region
SELECT Date, Newcases as NRregion
FROM CasesPerRegion
WHERE Region = 'Nitriansky'


--Total number of newcases in TN region
SELECT SUM(Newcases) as TNregion
FROM CasesPerRegion
WHERE Region = 'Nitriansky'


--Total number of daily newcases in ZA region
SELECT Date, Newcases as ZAregion
FROM CasesPerRegion
WHERE Region = 'Žilinský'


--Total number of newcases in ZA region
SELECT SUM(Newcases) as ZAregion
FROM CasesPerRegion
WHERE Region = 'Žilinský'



--Number of daily newcases in BB region
SELECT Date, Newcases as BBregion
FROM CasesPerRegion
WHERE Region = 'Banskobystrický'


--Total number of newcases in BB region
SELECT SUM(Newcases) as BBregion
FROM CasesPerRegion
WHERE Region = 'Banskobystrický'


--Number of daily newcases in PO region
SELECT Date, Newcases as POregion
FROM CasesPerRegion
WHERE Region = 'Prešovský'


--Total number of newcases in PO region
SELECT SUM(Newcases) as POregion
FROM CasesPerRegion
WHERE Region = 'Prešovský'


--Number of daily newcases in KE region
SELECT Date, Newcases as KEregion
FROM CasesPerRegion
WHERE Region = 'Košický'


--Total number of newcases in KE region
SELECT SUM(Newcases) as KEregion
FROM CasesPerRegion
WHERE Region = 'Košický'



--Number of max daily cases per region per date
SELECT Date, Region, MAX(Newcases) as Max_daily_cases
FROM CasesPerRegion
WHERE Region <> 'SR'
GROUP BY Date,Region
ORDER BY Max_daily_cases DESC

--Number of max daily cases ordered by region
SELECT Date, Region, MAX(Newcases) as Max_daily_cases
FROM CasesPerRegion
WHERE Region <> 'SR'
GROUP BY Date,Region
ORDER BY Region, Max_daily_cases DESC

