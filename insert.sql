/*INSERT INTO Models (Model, Manufacturer) VALUES ('B737-8', 'Boeing');*/
INSERT INTO Models VALUES ('B737-8', 'Boeing');
INSERT INTO Models VALUES ('A320', 'Airbus');
INSERT INTO Models VALUES ('A330', 'Airbus');

/*INSERT INTO Aircrafts (TailNumber, Model, ProductionDate, NSeats) VALUES ('EI-DSA', 'A320', '2010-06-15', 180);*/
INSERT INTO Aircrafts VALUES ('EI-DSA', 'A320', '2010-06-15', 180);
INSERT INTO Aircrafts VALUES ('GH-BTR', 'B737-8', '2013-04-30', 189);
INSERT INTO Aircrafts VALUES ('ET-ISO', 'A320', '2010-06-30', 180);
INSERT INTO Aircrafts VALUES ('LM-UIO', 'B737-8', '2015-02-24', 189);

/*INSERT INTO Revisions (Id, TailNumber, RDescription, StartDate, EndDate) VALUES (NULL, 'EI-DSA', 'Engine check', '2025-02-21 14:30:26', '2025-02-21 16:35:56');*/
INSERT INTO Revisions VALUES (NULL, 'EI-DSA', 'Engine check', '2025-02-21 14:30:26', '2025-02-21 16:35:56');
INSERT INTO Revisions VALUES (NULL, 'GH-BTR', 'Landing gear check', '2024-12-30 18:00:00', '2024-12-30 21:45:21');
INSERT INTO Revisions VALUES (NULL, 'ET-ISO', 'Trim check', '2025-03-14 05:00:00', '2025-03-14 10:21:30');
INSERT INTO Revisions VALUES (NULL, 'LM-UIO', 'Flap check', '2025-01-07 21:00:00', '2025-01-08 03:24:11');

/*INSERT INTO Routes (Id, DepartureAirport, ArrivalAirport, Distance) VALUES (NULL, 'LWO', 'FCO' 1270.91);*/
INSERT INTO Routes VALUES (NULL, 'LWO', 'FCO', 1270.91);
INSERT INTO Routes VALUES (NULL, 'BGY', 'RVN', 2515.42);

/*INSERT INTO Flights (Id, TailNumber, IdRoute, DepartureTime, ArrivalTime) VALUES (NULL, 'EI-DSA', NULL, '2025-04-01 08:30:00', '2025-04-01 10:40:00');*/
INSERT INTO Flights ()

/*INSERT INTO Roles (Id, Name) VALUES (1, 'Pilota');*/
INSERT INTO Roles VALUES (1, 'Pilota');
INSERT INTO Roles VALUES (2, 'Co-pilota');
INSERT INTO Roles VALUES (3, 'Personale di bordo');
INSERT INTO Roles VALUES (4, 'Personale di terra');
INSERT INTO Roles VALUES (5, 'Manutentore');

/*INSERT INTO Personnel (Id, Name, Surname, IdRole) VALUES (NULL, 'John', 'Doe', 1);*/
INSERT INTO Personnel VALUES ('John', 'Doe', 1);
INSERT INTO Personnel VALUES ('Conan', 'Doyle', 2);
INSERT INTO Personnel VALUES ('Stephen', 'King', 3);
INSERT INTO Personnel VALUES ('George', 'Orwell', 4);
INSERT INTO Personnel VALUES ('Taras', 'Shevchenko', 5);