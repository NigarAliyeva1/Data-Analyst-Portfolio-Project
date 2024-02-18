--Azerbaijan COVID-19: Total Cases, Total Deaths and death percentage
select location, date, total_cases, total_deaths, (CONVERT(float,total_deaths)/NULLIF(CONVERT(float,total_cases),0))*100 as DeathPercentage
From PortfolioProject..CovidDeaths
where continent is not null
and location like '%Azerbaijan%'
order by 2 desc
