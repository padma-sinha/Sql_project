# Sql_project
#Sql_project_portfolio
Data Source# MS Excel file

Link to Dataset: https://ourworldindata.org/covid-deaths
# COVID-19 Data Exploration

This repository contains SQL scripts for exploring and analyzing COVID-19 data. The queries demonstrate various SQL skills and techniques to extract meaningful insights from the dataset.

Dataset

The data used in these queries appears to come from a database table named CovidDeaths$ within the Portfolio_project schema. The dataset includes columns such as:

Location

Date

Total_cases

New_cases

Total_deaths

Population

Prerequisites

A database with the required schema and data loaded (e.g., Portfolio_project..CovidDeaths$).

Access to a SQL query editor or integrated development environment (IDE).

Queries Overview

Key SQL Techniques Used:

Joins

Common Table Expressions (CTEs)

Temporary Tables

Window Functions

Aggregate Functions

Views

Data Type Conversions

Example Queries

1. Data Selection

Basic query to inspect the dataset:

SELECT Location, Date, Total_cases, New_cases, Total_deaths, Population
FROM Portfolio_project..CovidDeaths$
WHERE Continent IS NOT NULL
ORDER BY 1, 2;

2. Total Cases vs. Total Deaths

Calculate the likelihood of death upon contracting COVID-19 in a given location:

SELECT Location, Date, Total_cases, Total_deaths, (Total_deaths / Total_cases) * 100 AS DeathPercentage
FROM Portfolio_project..CovidDeaths$
WHERE Location LIKE '%states%'
  AND Continent IS NOT NULL
ORDER BY 1, 2;

3. Total Cases vs. Population

Shows the percentage of the population infected with COVID-19:

SELECT Location, Date, Population, Total_cases, (Total_cases / Population) * 100 AS PercentPopulationInfected
FROM Portfolio_project..CovidDeaths$
WHERE Continent IS NOT NULL
ORDER BY 1, 2;






