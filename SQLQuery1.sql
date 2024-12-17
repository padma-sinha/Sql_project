Select* from Portfolio_project.dbo.CovidDeaths order by 3,4
--Select* from Portfolio_project..CovidVaccinations order by 3,4


--Select useful data

select location,date,total_cases,new_cases,total_deaths,population from Portfolio_project..CovidDeaths order by 1,2

--looking at Total cases VS total death

select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as Death_percentage from Portfolio_project..CovidDeaths where location like '%STATS%'

order by 1,2


---- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_project..CovidDeaths
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc


-- Countries with Highest Death Count per Population

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
From Portfolio_project..CovidDeaths
--Where location like '%states%'
Where continent is not null 
Group by Location
order by TotalDeathCount desc

Select *
From Portfolio_project..CovidDeaths
Where continent is not null 
order by 3,4

