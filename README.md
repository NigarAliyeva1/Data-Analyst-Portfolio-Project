# Tableau Project - COVID-19 Data Analysis

This repository contains SQL queries used for a Tableau project focusing on COVID-19 data analysis. The queries are designed to retrieve insights from a dataset named `CovidDeaths` within the `PortfolioProject` database. These queries were utilized to generate visualizations in Tableau for better understanding and presentation of the COVID-19 data.

## Queries

### Query 1: Total Cases and Deaths with Death Percentage

This query calculates the total number of cases, total deaths, and the percentage of deaths for each continent. It excludes entries where the continent is null and orders the results by total cases and total deaths.

### Query 2: Total Death Count by Location

This query calculates the total death count for each location excluding entries where the continent is null, and locations such as 'World', 'European Union', 'International', and those containing 'income' in their names. The results are ordered by the total death count in descending order.

### Query 3: Highest Infection Count and Percentage Population Infected

This query identifies the location with the highest infection count, along with the corresponding percentage of the population infected. It groups the data by location and population and orders the results by the percentage of the population infected in descending order.

### Query 4: Highest Infection Count and Percentage Population Infected Over Time

This query extends Query 3 by including the date of the highest infection count. It groups the data by location, population, and date, and orders the results by the percentage of the population infected in descending order.

## Usage

These SQL queries can be used to extract insights from the `CovidDeaths` dataset for COVID-19 data analysis. They can be executed in a SQL environment connected to the `PortfolioProject` database to retrieve relevant information.

## Dataset

The dataset used for this analysis is named `CovidDeaths` and resides within the `PortfolioProject` database. It contains data related to COVID-19 cases and deaths across different locations and time periods.


![Dashboard 1](https://github.com/NigarAliyeva1/Data-Analyst-Portfolio-Project/assets/112957859/4b0a3fb4-22c3-4d2b-ac88-697a26df2225)
