-- for help \? --

-- database name yelp --

-- for listing databases \l -- 

CREATE TABLE products (
    id INT,
    name VARCHAR(100),
    price INT,
    on_sale boolean
);

-- list tables \d  and \d <table_name> --

-- alter table products add column featured boolean --

-- drop table <table_name> --

-- \c postgres --

-- drop database practice --

CREATE TABLE restaurants (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL check (price_range >= 1 and price_range <= 5)
);

INSERT INTO restaurants (id, name, location, price_range) values (123, 'mcdonalds', 'new york', 3);

