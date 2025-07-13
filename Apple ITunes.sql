CREATE DATABASE itunes_analysis;
USE itunes_analysis;
CREATE TABLE album (
AlbumId INT PRIMARY KEY,
Title VARCHAR(255) CHARACTER SET utf8mb4,
ArtistId INT
);
CREATE TABLE artist (
ArtistId INT PRIMARY KEY,
Name VARCHAR(120)
);
CREATE TABLE customer (
CustomerId INT PRIMARY KEY,
FirstName VARCHAR(40),
LastName VARCHAR(40),
Company VARCHAR(80),
Address VARCHAR(70),
City VARCHAR(40),
State VARCHAR(40),
Country VARCHAR(40),
PostalCode VARCHAR(10),
Phone VARCHAR(24),
Fax VARCHAR(24),
Email VARCHAR(60),
SupportRepId INT
);
CREATE TABLE employee (
employee_id INT PRIMARY KEY,
last_name VARCHAR(100),
first_name VARCHAR(100),
title VARCHAR(100),
reports_to INT,
levels VARCHAR(10),
birthdate DATE,
hire_date DATE,
address VARCHAR(255),
city VARCHAR(100),
state VARCHAR(50),
country VARCHAR(100),
postal_code VARCHAR(20),
phone VARCHAR(50),
fax VARCHAR(50),
email VARCHAR(100)
);
CREATE TABLE genre (
GenreId INT PRIMARY KEY,
Name VARCHAR(120)
);
CREATE TABLE invoice (
InvoiceId INT PRIMARY KEY,
CustomerId INT,
InvoiceDate DATETIME,
BillingAddress VARCHAR(70),
BillingCity VARCHAR(40),
BillingState VARCHAR(40),
BillingCountry VARCHAR(40),
BillingPostalCode VARCHAR(10),
Total DECIMAL(10,2)
);
CREATE TABLE invoice_line (
InvoiceLineId INT PRIMARY KEY,
InvoiceId INT,
TrackId INT,
UnitPrice DECIMAL(10,2),
Quantity INT
);
CREATE TABLE media_type (
MediaTypeId INT PRIMARY KEY,
Name VARCHAR(120)
);
CREATE TABLE playlist (
PlaylistId INT PRIMARY KEY,
Name VARCHAR(120)
);
CREATE TABLE playlist_track (
PlaylistId INT,
TrackId INT,
PRIMARY KEY (PlaylistId, TrackId)
);
CREATE TABLE track (
track_id INT PRIMARY KEY,
name TEXT,
album_id INT,
media_type_id INT,
genre_id INT,
composer TEXT,
milliseconds INT,
bytes INT,
unit_price DECIMAL(5, 2)
);
