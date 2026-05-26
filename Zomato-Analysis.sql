-- =========================================
-- ZOMATO RESTAURANT ANALYTICS PROJECT
-- PostgreSQL SQL Script
-- =========================================


-- =========================================
-- 1. CREATE DATABASE (optional)
-- =========================================
CREATE DATABASE zomato_db;

-- Connect to database
-- \c zomato_db;


-- =========================================
-- 2. CREATE TABLE
-- =========================================
DROP TABLE IF EXISTS zomato_restaurants;

CREATE TABLE zomato_restaurants (
    url TEXT,
    address TEXT,
    name TEXT,
    online_order TEXT,
    book_table TEXT,
    rate TEXT,
    votes INTEGER,
    phone TEXT,
    location TEXT,
    rest_type TEXT,
    dish_liked TEXT,
    cuisines TEXT,
    approx_cost_for_two TEXT,
    reviews_list TEXT,
    menu_item TEXT,
    listed_in_type TEXT,
    listed_in_city TEXT
);

-- =========================================
-- 3. IMPORT DATA
-- =========================================
-- Use this in pgAdmin or psql terminal

COPY zomato_restaurants(name, online_order, book_table, rate, votes,
location, rest_type, cuisines, approx_cost_for_two, listed_in_type)
FROM 'C:/path/zomato.csv'
DELIMITER ','
CSV HEADER;

-- =========================================
-- 4. DATA CLEANING
-- =========================================

-- Remove duplicates (keep latest row)
DELETE FROM zomato_restaurants
WHERE id NOT IN (
    SELECT MIN(id)
    FROM zomato_restaurants
    GROUP BY name, location, cuisines
);


-- Clean rating column (remove '/5')
UPDATE zomato_restaurants
SET rate = REPLACE(rate, '/5', '');


-- Convert empty ratings to NULL
UPDATE zomato_restaurants
SET rate = NULL
WHERE rate = '' OR rate = 'NEW' OR rate = '-';


-- =========================================
-- 5. TYPE CONVERSION (rating → numeric)
-- =========================================
ALTER TABLE zomato_restaurants
ALTER COLUMN rate TYPE FLOAT
USING rate::FLOAT;


-- =========================================
-- 6. EXPLORATORY DATA ANALYSIS (EDA)
-- =========================================


-- 6.1 Total Restaurants
SELECT COUNT(*) AS total_restaurants
FROM zomato_restaurants;


-- 6.2 Top Restaurant Types
SELECT rest_type, COUNT(*) AS count
FROM zomato_restaurants
GROUP BY rest_type
ORDER BY count DESC
LIMIT 10;


-- 6.3 Top Locations with most restaurants
SELECT location, COUNT(*) AS total
FROM zomato_restaurants
GROUP BY location
ORDER BY total DESC
LIMIT 10;


-- 6.4 Most popular cuisines
SELECT cuisines, COUNT(*) AS total
FROM zomato_restaurants
GROUP BY cuisines
ORDER BY total DESC
LIMIT 10;


-- 6.5 Average rating by location
SELECT location, ROUND(AVG(rate), 2) AS avg_rating
FROM zomato_restaurants
WHERE rate IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC
LIMIT 10;


-- 6.6 Cost distribution
SELECT
    MIN(approx_cost_for_two) AS min_cost,
    MAX(approx_cost_for_two) AS max_cost,
    AVG(approx_cost_for_two) AS avg_cost
FROM zomato_restaurants;


-- 6.7 High rated restaurants
SELECT name, rate, votes
FROM zomato_restaurants
WHERE rate IS NOT NULL
ORDER BY rate DESC, votes DESC
LIMIT 10;


-- 6.8 Cost vs Rating analysis
SELECT
    approx_cost_for_two,
    ROUND(AVG(rate), 2) AS avg_rating
FROM zomato_restaurants
WHERE rate IS NOT NULL
GROUP BY approx_cost_for_two
ORDER BY approx_cost_for_two;


-- 6.9 Online order availability
SELECT online_order, COUNT(*) AS count
FROM zomato_restaurants
GROUP BY online_order;


-- 6.10 Table booking availability
SELECT book_table, COUNT(*) AS count
FROM zomato_restaurants
GROUP BY book_table;


-- =========================================
-- 7. ADVANCED INSIGHTS
-- =========================================


-- 7.1 Restaurants with highest votes
SELECT name, votes, rate
FROM zomato_restaurants
ORDER BY votes DESC
LIMIT 10;


-- 7.2 Most expensive restaurant types
SELECT rest_type,
       ROUND(AVG(approx_cost_for_two), 2) AS avg_cost
FROM zomato_restaurants
GROUP BY rest_type
ORDER BY avg_cost DESC
LIMIT 10;


-- 7.3 Rating distribution
SELECT rate, COUNT(*) AS frequency
FROM zomato_restaurants
GROUP BY rate
ORDER BY rate;


