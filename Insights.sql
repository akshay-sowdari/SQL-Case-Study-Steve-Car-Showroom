-- 1. What are the details of all cars purchased in the year 2022?

-- SELECT
-- 	c.car_id,c.make,c.car_type,c.style,c.cost_in_usd,s.purchase_date
-- FROM 
-- 	cars c 
-- JOIN 
-- 	sales s
-- ON 
-- 	c.car_id=s.car_id
-- WHERE 
-- 	year(s.purchase_date)=2022;
--     
--     
-- 2. What is the total number of cars sold by each salesperson?

-- SELECT 
-- 	sp.salesman_id,sm_name,count(s.car_id) as 'no.of cars sold'
-- FROM 
-- 	sales s 
-- JOIN 
-- 	salespersons sp
-- ON 
-- 	sp.salesman_id=s.salesman_id
-- GROUP BY 
--     s.salesman_id
--     
--     
-- 3. What is the total revenue generated by each salesperson?

-- SELECT 
-- 	s.salesman_id,sum(c.cost_in_usd) as 'revenue generated by each salesperson'
-- FROM 
-- 	sales s 
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- GROUP BY 
--     s.salesman_id

-- 4. What are the details of the cars sold by each salesperson?

-- SELECT 
-- 	s.salesman_id,c.car_id,c.car_type,c.make, c.style,c.cost_in_usd
-- FROM 
-- 	sales s 
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- ORDER BY
-- 	s.salesman_id


-- 5. What is the total revenue generated by each car type?

-- SELECT 
-- 	c.car_type,sum(c.cost_in_usd) as 'revenue generated by each salesperson'
-- FROM 
-- 	sales s 
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- GROUP BY 
--     c.car_type

-- 6. What are the details of the cars sold in the year 2021 by salesperson 'Emily Wong'?
-- SELECT
-- 	sp.salesman_id, sp.sm_name, c.car_id,c.make,c.car_type,c.style,c.cost_in_usd,s.purchase_date
-- FROM 
-- 	sales s
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- JOIN 
-- 	salespersons sp
-- ON 
-- 	s.salesman_id=sp.salesman_id
-- WHERE 
-- 	year(s.purchase_date)=2021 and
--     sp.sm_name='Emily Wong'


-- 7. What is the total revenue generated by the sales of hatchback cars?

-- SELECT 
-- 	c.style,sum(c.cost_in_usd) as 'revenue generated by Hatchbacks'
-- FROM 
-- 	sales s 
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- WHERE
--     c.style='Hatchback'

-- 8. What is the total revenue generated by the sales of SUV cars in the year 2022?
-- SELECT 
-- 	c.style,sum(c.cost_in_usd) as 'revenue generated by SUVs in 2022'
-- FROM 
-- 	sales s 
-- JOIN 
-- 	cars c
-- ON 
-- 	c.car_id=s.car_id
-- WHERE
--     c.style='SUV' and 
--     year(s.purchase_date)=2022

-- 9. What is the name and city of the salesperson who sold the most number of cars in the year 2023?

-- SELECT
-- 	sp.salesman_id, sp.sm_name, sp.sm_city, count(s.sale_id) as 'no.of cars sold'
-- FROM 
-- 	salespersons sp
-- JOIN 
-- 	sales s
-- ON 
-- 	s.salesman_id=sp.salesman_id
-- WHERE 
--     year(s.purchase_date)= 2023 
-- GROUP BY
-- 	sp.salesman_id, sp.sm_name, sp.sm_city
-- ORDER BY 
-- 	count(s.sale_id) DESC LIMIT 1

-- 10. What is the name and age of the salesperson who generated the highest revenue in the year 2022?

-- SELECT
-- 	sp.salesman_id, sp.sm_name, sp.sm_age,sum(c.cost_in_usd) as 'Revenue Generated'
-- FROM 
-- 	sales s
-- JOIN 
-- 	cars c ON c.car_id=s.car_id
-- JOIN 
-- 	salespersons sp ON s.salesman_id=sp.salesman_id
-- WHERE 
--     year(s.purchase_date)= 2022 
-- GROUP BY
-- 	sp.salesman_id, sp.sm_name, sp.sm_age
-- ORDER BY 
-- 	sum(c.cost_in_usd) DESC LIMIT 1
