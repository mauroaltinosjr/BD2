select * from world.country
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where countrylanguage.Language like 'Dutch';

select * from world.city
inner join world.country on country.Code = city.CountryCode
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where countrylanguage.Language like 'Dutch';

select * from world.country
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where countrylanguage.Language like 'Spanish';

select * from world.country
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where countrylanguage.Language like 'Spanish'
and Percentage > 96 ;

select * from world.city
inner join world.country on country.Code = city.CountryCode
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where countrylanguage.Language like 'Dutch';

select * from world.city
where CountryCode like 'BRA'
and Population > 1000000;

select country.Name, country.Continent, country.Region, country.Population, city.Name, city.District, city.Population, countrylanguage.Language
from world.city
inner join world.country on country.Code = city.CountryCode
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where country.Continent like 'Europe';

select country.Name, country.Continent, country.Region, country.Population, city.Name, city.District, city.Population, countrylanguage.Language
from world.city
inner join world.country on country.Code = city.CountryCode
inner join world.countrylanguage on countrylanguage.CountryCode = country.Code
where country.Continent like 'Europe' and countrylanguage.IsOfficial like 'T';

































