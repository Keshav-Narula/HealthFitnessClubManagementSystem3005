INSERT INTO Member (email, first_name, last_name, password, street_address, city, province, postal_code, phone_number, join_date, date_of_birth)
VALUES 
('keshavnarula@cmail.carleton.ca', 'Keshav', 'Narula', 'password123', '1125 Colonel By Dr', 'Ottawa', 'Ontario', 'K1S5B6', '613-520-2600', '2020-01-01', '2000-01-01'),
('jane.smith@example.com', 'Jane', 'Smith', 'pass456', '456 Oak St', 'Riverside', 'CA', '92501', '234-567-8901', '2023-05-22', '1988-11-23'),
('alice.jones@example.com', 'Alice', 'Jones', 'pass789', '789 Pine St', 'Maple Town', 'TX', '73301', '345-678-9012', '2023-07-08', '1992-05-16');


INSERT INTO HealthStats (height_cm, weight_lbs, body_fat_percentage, member_id)
VALUES 
(160, 150, 15, 1),
(165, 130, 20, 2),
(175, 150, 18, 3);


INSERT INTO FitnessAchievement (description, achievement_date, member_id)
VALUES 
('Completed first marathon', '2023-10-10', 1),
('Achieved black belt in karate', '2023-06-25', 2),
('Climbed Mt. Rainier', '2023-09-15', 3);


INSERT INTO ExcerciseRoutine (name, description, number_of_minutes, member_id)
VALUES 
('Morning Stretch', 'A gentle routine to start the day', 30, 1),
('Power Lifting', 'Intense strength training session', 60, 2),
('Pilates Introduction', 'Basic Pilates exercises', 45, 3);


INSERT INTO Excercise (name, description, sets, reps)
VALUES 
('Bench Press', 'Flat bench press for chest', 3, 10),
('Leg Press', 'Press using leg strength', 4, 12),
('Cycling Sprint', 'High-intensity bike sprints', 5, 1);


INSERT INTO ExcercisesContained (excercise_routine_id, excercise_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);


INSERT INTO Billing (description, price, purchase_date, paid_status, member_id)
VALUES 
('Annual Gym Membership', 600.00, '2023-01-10', TRUE, 1),
('Personal Training Session', 50.00, '2023-05-20', TRUE, 2),
('Nutrition Plan', 100.00, '2023-07-15', FALSE, 3);


INSERT INTO FitnessGoal (description, current_value, target_value, start_date, end_date, goal_status, member_id)
VALUES 
('Lose 10 Pounds', 180, 170, '2023-01-01', '2023-06-30', TRUE, 1),
('Gain Muscle Mass', 150, 165, '2023-02-15', '2023-12-31', FALSE, 2),
('Run 5k in under 20 minutes', 25, 20, '2023-03-01', '2023-10-15', FALSE, 3);


INSERT INTO Room (description, building, floor_number, room_number, capacity)
VALUES 
('Main Gym', 'A Block', 1, 101, 50),
('Spinning Studio', 'B Block', 2, 201, 25),
('Aerobics Room', 'C Block', 3, 301, 30);


INSERT INTO Equipment (description, quanitty, maintenance_status, room_id)
VALUES 
('Rowing Machines', 4, FALSE, 1),
('Yoga Balls', 15, TRUE, 3),
('Kettlebells', 20, FALSE, 1);


INSERT INTO Trainer (email, first_name, last_name, password, street_address, city, province, postal_code, phone_number, start_date, date_of_birth)
VALUES 
('tom.trainer@example.com', 'Tom', 'Trainer', 'secure123', '100 Main St', 'Anytown', 'CA', '95820', '456-789-0123', '2023-01-01', '1980-02-15'),
('lucy.coach@example.com', 'Lucy', 'Coach', 'secure456', '200 Side St', 'Anytown', 'CA', '95821', '567-890-1234', '2023-02-01', '1985-08-25'),
('rick.fitness@example.com', 'Rick', 'Fitness', 'secure789', '300 Third St', 'Anytown', 'CA', '95822', '678-901-2345', '2023-03-01', '1992-03-30');


INSERT INTO TrainerAvailability (date, start_time, end_time, available_status, trainer_id)
VALUES 
('2023-12-01', '08:00:00', '12:00:00', TRUE, 1),
('2023-11-15', '12:00:00', '16:00:00', TRUE, 2),
('2023-11-20', '16:00:00', '20:00:00', TRUE, 3);


INSERT INTO PersonalSession (description, price, date, start_time, end_time, room_id, member_id, trainer_id)
VALUES 
('Weightlifting 101', 120, '2023-10-10', '09:00:00', '11:00:00', 1, 1, 1),
('Advanced Yoga', 80, '2023-11-15', '10:00:00', '12:00:00', 3, 2, 2),
('HIIT Training', 100, '2023-12-20', '18:00:00', '19:00:00', 2, 3, 3);


INSERT INTO GroupClass (description, price, date, start_time, end_time, capacity, room_id, trainer_id)
VALUES 
('Bootcamp Challenge', 30, '2023-08-05', '06:00:00', '07:30:00', 20, 1, 1),
('Total Body Workout', 25, '2023-09-15', '18:00:00', '19:00:00', 15, 2, 2),
('Morning Meditation', 20, '2023-10-10', '07:00:00', '08:00:00', 10, 3, 3);


INSERT INTO AttendingGroupClass (group_class_id, member_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);


INSERT INTO Admin (email, first_name, last_name, password, street_address, city, province, postal_code, phone_number, start_date, date_of_birth)
VALUES 
('admin@example.com', 'Admin', 'User', 'adminpass123', '400 Fourth St', 'Capitol City', 'CA', '95823', '789-012-3456', '2023-01-01', '1975-10-10');
