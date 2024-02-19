--Countries with Highest Infection Rate compared to Population
select location, population, MAX(total_cases) as HighestInfectedCount, MAX(CONVERT(float,total_cases)/NULLIF(CONVERT(float,population),0))*100 as PercentagePopulationInfected
From PortfolioProject..CovidDeaths
where continent is not null
group by location, population
order by PercentagePopulationInfected desc

  
--Azerbaijan Highest Infection Rate compared to Population
select location, population, MAX(total_cases) as HighestInfectedCount, MAX(CONVERT(float,total_cases)/NULLIF(CONVERT(float,population),0))*100 as PercentagePopulationInfected
From PortfolioProject..CovidDeaths
where location like '%Azerbaijan%' 
group by location, population
order by PercentagePopulationInfected desc
