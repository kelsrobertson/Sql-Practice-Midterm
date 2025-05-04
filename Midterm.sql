CREATE DATABASE marine_biodiversity_db;
USE marine_biodiversity_db;

CREATE TABLE marinebiologists (
	biologist_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	sex VARCHAR(10),
	dob DATE,
	age INT,
	email VARCHAR (100)
);

CREATE TABLE characteristics (
	species_id INT AUTO_INCREMENT PRIMARY KEY,
	species_name VARCHAR(255) NOT NULL,
	sex VARCHAR(10),
	color VARCHAR (20),
	size VARCHAR(20),
	ocean_region VARCHAR(100),
	habitat VARCHAR (255),
	migratory_patterns VARCHAR (255),
	seasonal_behaviors VARCHAR (255)
);

CREATE TABLE observationcharacteristics (
    biologist_id INT,
    species_id INT,
    FOREIGN KEY (biologist_id) REFERENCES marinebiologists(biologist_id),
    FOREIGN KEY (species_id) REFERENCES characteristics(species_id),
    PRIMARY KEY (biologist_id, species_id)
);

INSERT INTO marinebiologists(name, last_name, sex, dob, age, email) 
VALUES 
('Jack', 'Foxx', 'Male', '2000-10-12', 24, 'foxx.jackk@gmail.com'),
('Sam', 'Smith','Male', '1999-12-20', 24, 'samsmith@gmail.com'),
('Alice', 'Johnson', 'Female', '1995-03-21', 29, 'alice@gmail.com');


INSERT INTO characteristics(species_name, sex, color, size, ocean_region, habitat, migratory_patterns,seasonal_behaviors) 
VALUES 
('Orca', 'Female', 'Black/White', 'Extra-Large', 'Eastern North Pacific Region', 'All of world/s oceans, from Artic to Atlantic', 'Migrate according to abundance/availability of food', 'Seasonal Behaviors: migration, wintering, breeding, social structre creation, and physiological ability'),
('Walrus', 'Male', 'Brown', 'Large', 'Artic Region', 'Sea Ice', 'Migrate north in the summer and south in the winter', 'Seasonal Behaviors: migration, breeding, and hauling out'),
('Leatherback Sea Turtle', 'Female', 'Black/White', 'Medium', 'Atlantic Region', 'Temperate to Tropical Waters in the Atlantic, Pacific, and Indian Oceans', 'Migrate across the Pacific to nest in Indonesia, Papua New Guinea, and the Solomon Islands ', 'Seasonal Behaviors: nesting, mating, and migration');


INSERT INTO observationcharacteristics(biologist_id, species_id) VALUES
(1, 3), (1, 2), (2, 1), (2, 2), (3,1), (3,2);
