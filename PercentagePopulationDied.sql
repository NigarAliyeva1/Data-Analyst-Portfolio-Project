
--Total Percentage of Dead Population
Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as PercentagePopulationDied
From PortfolioProject..CovidDeaths
where continent is not null 
order by 1,2


--Percentage of Dead Population by Continents
Select Continent, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as PercentagePopulationDied
From PortfolioProject..CovidDeaths
where continent is not null 
group by continent
order by 2 desc,3 desc


--Percentage of Dead Population by Locations
Select Location, SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/nullif(SUM(New_Cases),0)*100 as PercentagePopulationDied
From PortfolioProject..CovidDeaths
where continent is not null 
group by Location
order by 2 desc,3 desc

