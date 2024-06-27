CREATE DATABASE car_dealership;

USE car_dealership;

CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    price DECIMAL(10, 2),
    mileage INT,
    color VARCHAR(50),
    description TEXT
);

CREATE TABLE mercedes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE bmw (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE audi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE toyota (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

CREATE TABLE ford (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

-- Вставка даних у таблицю cars
INSERT INTO cars (brand, model, year, price, mileage, color, description) VALUES
('mercedes', 'GLC', 2020, 45000, 12000, 'Silver', 'Luxury compact SUV.'),
('mercedes', 'GLE', 2019, 55000, 15000, 'Black', 'Spacious and comfortable SUV.'),
('mercedes', 'A-Class', 2021, 38000, 5000, 'White', 'Compact luxury sedan.'),
('bmw', 'X3', 2020, 48000, 10000, 'Blue', 'Premium compact SUV.'),
('bmw', 'X5', 2021, 65000, 8000, 'Black', 'Luxury and performance SUV.'),
('bmw', '7 Series', 2019, 75000, 12000, 'Silver', 'Flagship luxury sedan.'),
('audi', 'Q5', 2020, 45000, 15000, 'White', 'Sporty and versatile SUV.'),
('audi', 'Q7', 2018, 55000, 20000, 'Black', 'Luxury and spacious SUV.'),
('audi', 'A3', 2021, 35000, 8000, 'Red', 'Compact luxury sedan.'),
('toyota', 'RAV4', 2019, 28000, 30000, 'Blue', 'Reliable compact SUV.'),
('toyota', 'Highlander', 2020, 38000, 15000, 'Silver', 'Family-friendly SUV.'),
('toyota', 'Prius', 2021, 25000, 5000, 'Green', 'Hybrid efficiency.'),
('ford', 'Escape', 2019, 30000, 20000, 'White', 'Compact SUV.'),
('ford', 'Explorer', 2020, 40000, 15000, 'Black', 'Versatile and spacious SUV.'),
('ford', 'Fusion', 2021, 28000, 8000, 'Blue', 'Midsize sedan.'),
('mercedes', 'GLA', 2021, 38000, 6000, 'Black', 'Compact luxury crossover.'),
('bmw', '4 Series', 2020, 45000, 12000, 'White', 'Sporty and stylish coupe.'),
('audi', 'A5', 2019, 40000, 15000, 'Silver', 'Sleek and sophisticated coupe.'),
('toyota', 'Tacoma', 2020, 32000, 10000, 'Red', 'Rugged and reliable pickup truck.'),
('ford', 'Ranger', 2018, 30000, 20000, 'Blue', 'Compact pickup truck.'),
('mercedes', 'S-Class', 2020, 95000, 15000, 'Black', 'Ultimate luxury sedan.'),
('bmw', 'X1', 2019, 35000, 18000, 'Silver', 'Compact luxury SUV.'),
('audi', 'Q3', 2021, 42000, 10000, 'White', 'Compact luxury crossover.'),
('toyota', 'Sienna', 2021, 40000, 8000, 'Blue', 'Spacious and versatile minivan.'),
('ford', 'Edge', 2020, 38000, 12000, 'Black', 'Midsize SUV.');

