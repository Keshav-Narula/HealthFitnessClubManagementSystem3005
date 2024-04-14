CREATE TABLE Member (
	member_id SERIAL PRIMARY KEY,
	email VARCHAR(255) UNIQUE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	street_address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postal_code VARCHAR(255),
	phone_number VARCHAR(15) NOT NULL,
	join_date DATE DEFAULT (CURRENT_DATE),
	date_of_birth DATE NOT NULL
);

CREATE TABLE HealthStats(
	height_cm INTEGER NOT NULL,
	weight_lbs INTEGER NOT NULL,
	body_fat_percentage INTEGER NOT NULL check( body_fat_percentage between 0 and 100 ),
	member_id INTEGER REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE FitnessAchievement(
	fitness_achievement_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	achievement_date DATE NOT NULL,
	member_id INT REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE ExcerciseRoutine(
	excercise_routine_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	number_of_minutes INT,
	member_id INT REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE Excercise(
	excercise_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255),
	sets INT,
	reps INT
);

CREATE TABLE ExcercisesContained (
  excercise_routine_id INT REFERENCES ExcerciseRoutine(excercise_routine_id) ON DELETE CASCADE,
  excercise_id INT REFERENCES Excercise(excercise_id) ON DELETE CASCADE
);

CREATE TABLE Billing(
	billing_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	price FLOAT NOT NULL DEFAULT 0,
	purchase_date DATE DEFAULT (CURRENT_DATE),
	paid_status BOOLEAN DEFAULT FAlSE,
	member_id INT REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE FitnessGoal(
	fitness_goal_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	current_value INT,
	target_value INT,
	start_date DATE DEFAULT CURRENT_DATE,
	end_date DATE NOT NULL,
	goal_status BOOLEAN DEFAULT FAlSE,
	member_id INT REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE Room (
	room_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	building VARCHAR(255) NOT NULL,
	floor_number INTEGER NOT NULL,
	room_number INTEGER NOT NULL,
	capacity INTEGER NOT NULL
);

CREATE TABLE Equipment (
	equipment_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	quanitty INTEGER NOT NULL,
	maintenance_status BOOLEAN DEFAULT FAlSE,
	room_id INT REFERENCES Room(room_id) ON DELETE CASCADE
);

CREATE TABLE Trainer (
	trainer_id SERIAL PRIMARY KEY,
	email VARCHAR(255) UNIQUE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	street_address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postal_code VARCHAR(255),
	phone_number VARCHAR(15) NOT NULL,
	start_date DATE NOT NULL DEFAULT (CURRENT_DATE),
	date_of_birth DATE NOT NULL
);

CREATE TABLE TrainerAvailability (
	availability_id SERIAL PRIMARY KEY,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL,
	available_status BOOLEAN NOT NULL DEFAULT TRUE,
	trainer_id INT REFERENCES Trainer(trainer_id) ON DELETE CASCADE
);



CREATE TABLE PersonalSession(
	personal_session_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	price INT NOT NULL DEFAULT 0,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL,
	room_id INT REFERENCES Room(room_id)ON DELETE CASCADE,
	member_id INT REFERENCES Member(member_id)ON DELETE CASCADE,
	trainer_id INT REFERENCES Trainer(trainer_id)ON DELETE CASCADE
);


CREATE TABLE GroupClass(
	group_class_id SERIAL PRIMARY KEY,
	description VARCHAR(255),
	price INT NOT NULL DEFAULT 0,
	date DATE NOT NULL DEFAULT CURRENT_DATE,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL,
	capacity INTEGER NOT NULL,
	room_id INT REFERENCES Room(room_id)ON DELETE CASCADE,
	trainer_id INT REFERENCES Trainer(trainer_id)ON DELETE CASCADE
);


CREATE TABLE AttendingGroupClass(
  group_class_id INT REFERENCES GroupClass(group_class_id) ON DELETE CASCADE,
  member_id INT REFERENCES Member(member_id) ON DELETE CASCADE
);

CREATE TABLE Admin (
	admin_id SERIAL PRIMARY KEY,
	email VARCHAR(255) UNIQUE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	street_address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postal_code VARCHAR(255),
	phone_number VARCHAR(15) NOT NULL,
	start_date DATE NOT NULL DEFAULT (CURRENT_DATE),
	date_of_birth DATE NOT NULL
);


