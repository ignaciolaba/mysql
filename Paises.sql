use world;

select government_form from countries;
-- 1
select countries.name as name , language, percentage from languages
Join countries on country_id = countries.id
where language = 'slovene' 
order by percentage desc;

-- 2
select countries.name as name, languages.language, count(cities.id) from countries
join cities on countries.id = cities.country_id
join languages on countries.id = languages.country_id
group by countries.name
order by count(cities.id) desc;

-- 3
select cities.name, cities.population from cities
join countries on cities.country_id = countries.id
where cities.population >500000 and countries.name = 'Mexico'
order by population desc;

-- 4 
select countries.name, languages.language, languages.percentage from countries
join languages on countries.id = languages.country_id
where percentage >89
order by percentage desc;

-- 5 
select countries.name, surface_area, population from countries
where surface_area < 501 and population >100000;

-- 6 
select countries.name from countries
where government_form = 'Constitutional Monarchy' and capital >200 and life_expectancy >75;

-- 7
select countries.name as pais, cities.name as ciudad, cities.district, cities.population from countries
join cities on countries.id = cities.country_id
where countries.name = 'Argentina' and
cities.district = 'Buenos Aires' and
cities.population >500000;

-- 8
select countries.region, count(countries.name) from countries
group by countries.region
order by count(countries.name) desc;