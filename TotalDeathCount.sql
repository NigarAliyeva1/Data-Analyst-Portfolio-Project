-- Countries with Highest Death Count per Population

Select TOP 5 Location, Population, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null 
Group by Location, Population
Order by TotalDeathCount desc

