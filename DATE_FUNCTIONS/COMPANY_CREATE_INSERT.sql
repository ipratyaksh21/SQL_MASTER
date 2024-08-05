CREATE DATABASE COMPANY;

USE COMPANY;

CREATE TABLE Persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    city VARCHAR(50)
);

INSERT INTO Persons (first_name, last_name, dob, email, phone_number, address, city) VALUES
('John', 'Doe', '1990-01-15', 'john.doe@example.com', '123-456-7890', '123 Elm Street', 'Springfield'),
('Jane', 'Smith', '1985-03-22', 'jane.smith@example.com', '234-567-8901', '456 Oak Avenue', 'Rivertown'),
('Michael', 'Johnson', '1978-07-30', 'michael.johnson@example.com', '345-678-9012', '789 Pine Road', 'Mapleton'),
('Emily', 'Davis', '1992-12-10', 'emily.davis@example.com', '456-789-0123', '101 Maple Street', 'Brookfield'),
('David', 'Brown', '1980-11-05', 'david.brown@example.com', '567-890-1234', '202 Birch Lane', 'Laketown'),
('Sarah', 'Miller', '1995-08-14', 'sarah.miller@example.com', '678-901-2345', '303 Cedar Drive', 'Hillview'),
('James', 'Wilson', '1983-06-25', 'james.wilson@example.com', '789-012-3456', '404 Walnut Street', 'Greenville'),
('Laura', 'Moore', '1988-04-17', 'laura.moore@example.com', '890-123-4567', '505 Ash Avenue', 'Fairview'),
('Robert', 'Taylor', '1991-09-09', 'robert.taylor@example.com', '901-234-5678', '606 Cherry Road', 'Riverside'),
('Linda', 'Anderson', '1975-05-03', 'linda.anderson@example.com', '012-345-6789', '707 Willow Lane', 'Parkville');


SELECT * FROM Persons;
