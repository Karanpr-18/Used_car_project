CREATE TABLE UsedCar(
	Brand varchar(100),
	model varchar(100),
	year INT,
	age INT,
	driven INT,
	gear VARCHAR(100),
	owner VARCHAR(100),
	FuelType varchar(100),
	PostDate date,
	AskPrice int
);

SELECT * FROM usedcar ORDER by age desc;

UPDATE usedcar SET age = 1 WHERE age = 93;

/*1. Most Expensive Car Brands
• Identify the top 10 car brands with the highest average price.*/

SELECT brand,round(avg(askprice),0) AS price_by_brand FROM usedcar
GROUP by brand HAVING count(brand)>100 ORDER by price_by_brand desc LIMIT 10;

/*2. Most Listed Car Models
• Find the most frequently listed car models in the dataset*/

SELECT model,count(model) AS no_of_cars FROM usedcar
GROUP by model ORDER by no_of_cars desc LIMIT 25;

/*3. Average Price by Fuel Type
• Calculate the average price for each fuel type (e.g.Petrol, Diesel).*/

SELECT fueltype,round(avg(askprice),0) AS price_by_fuel FROM usedcar
GROUP by fueltype;

/*4. Price Distribution Over Car Age
• Analyze how car prices vary based on their age */

SELECT concat(floor(age/3)*3,' - ',floor(age/3)*3+2) AS car_age,round(avg(askprice),0) as price_by_age FROM usedcar
group by floor(age/3) ORDER by floor(age/3);

/*5. Transmission Type & Pricing
• Compare the average price of manual vs.automatic cars.*/

SELECT gear,round(avg(askprice),0) AS price_by_gear FROM usedcar
GROUP by gear;

/*Most Common Manufacturing Years
• Identify the top 3 most frequently occurring manufacturing years.*/

SELECT year,count(*) AS car_in_year FROM usedcar
GROUP by year order by year;

/*7. Most Popular Car Brands by Listings
• Identify the top 5 car brands with the highest number of listings.*/

SELECT brand,count(brand) AS car_of_brand FROM usedcar
group by brand ORDER by count(*) DESC LIMIT 5;

/*8. Price Variation by Car Age
• Calculate the average price of cars based on their age.*/

SELECT age,round(avg(askprice),0) as price_by_age FROM usedcar
group by age ORDER by age;

/*9. Ranking Cars by Price Within Each Brand
• Rank cars by price within each brand using.*/

SELECT brand,model,round(avg(askprice),0) AS Price_by_brand_model from usedcar
GROUP by brand,model HAVING count(model)>100 ORDER by brand;

/*10. Outlier Detection in Car Prices
• Identify cars priced significantly higher or lowerthan the average price.*/

SELECT model,round(avg(askprice),0) as avg_ask FROM usedcar
WHERE askprice not between (select avg(askprice)/10 FROM usedcar) and (select avg(askprice)*25 FROM usedcar)
group by model;

/*11. Cars Listed for Sale Each Year
• Count how many cars were listed for sale each year.*/

SELECT year,count(model) AS cars_sold FROM usedcar
GROUP by year order by year desc;

/*12. Most Commonly Sold Car Brands in a Given Year
• Identify the most listed car brands for a particular year.*/

SELECT brand,count(brand) from usedcar  group by brand order by count(*)desc limit 10;
--car brand select krke uski har saal kitni sale hui wo nikalo

SELECT year,brand,count(brand) from usedcar WHERE brand = 'Maruti Suzuki' or brand = 'Hyundai' or brand = 'Honda' or brand = 'Toyota' or brand = 'Mahindra'
or brand ='Tata' or brand ='Volkswagen' group by brand,year order by brand,count(brand) desc;

/*13. Depreciation Analysis
• Compare the average price of cars by manufacturing year to see how value decreases over time.*/

SELECT age,round(avg(askprice),0) as price_per_age from usedcar
GROUP by age having age<21 order by age desc;
