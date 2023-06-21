CREATE TABLE cars (
car_id INT PRIMARY KEY,
make VARCHAR(50),
car_type VARCHAR(50),
style VARCHAR(50),
cost_in_usd INT
);

CREATE TABLE salespersons (
salesman_id INT PRIMARY KEY,
sm_name VARCHAR(50),
sm_age INT,
sm_city VARCHAR(50)
);

CREATE TABLE sales (
sale_id INT PRIMARY KEY,
car_id INT,
salesman_id INT,
purchase_date DATE,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (salesman_id) REFERENCES salespersons(salesman_id)
);