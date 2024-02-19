-- Countries with the Highest Death Count per Population

Select TOP 5 Location, Population, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null 
Group by Location, Population
Order by TotalDeathCount desc


-- Contintents with the Death Count per Population

Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null 
Group by continent
Order by TotalDeathCount desc


-- The Contintent with the Highest Death Count per Population
  
Select TOP 1 continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null 
Group by continent
order by TotalDeathCount desc

