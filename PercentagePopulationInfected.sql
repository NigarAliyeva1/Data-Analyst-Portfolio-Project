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

  
--Continents with Highest Infection Rate compared to Population
select distinct continent, SUM(population) as SumPopulation , MAX(total_cases) as HighestInfectedCount, MAX(cast(total_cases as float)/cast(population as float))*100 as PercentagePopulationInfected
From PortfolioProject..CovidDeaths
where continent is not null
group by continent
order by PercentagePopulationInfected desc




