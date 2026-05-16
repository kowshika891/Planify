CREATE DATABASE EventPlannerDB;
USE EventPlannerDB;

-- Users Table (for your login.html form data)
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email_or_phone VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Events Table
CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    event_type VARCHAR(50), -- Wedding, Corporate, Special Occasion
    description TEXT,
    budget DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);