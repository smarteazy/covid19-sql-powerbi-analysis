SELECT country,
ROUND((MAX(total_deaths) / MAX(total_cases)) * 100, 2) AS mortality_rate
FROM covid_data
GROUP BY country
ORDER BY mortality_rate DESC;