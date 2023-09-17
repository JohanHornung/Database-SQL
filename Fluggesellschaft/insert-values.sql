-- Flughafen Tabelle
INSERT INTO Flughafen (IATACode, Name, Stadt, Breitengrad, Längengrad, AnzahlPositionen) VALUES
    ('AMS', 'Amsterdam Airport Schiphol', 'Amsterdam', '52.3105', '4.7683', 180),
    ('CDG', 'Charles de Gaulle Airport', 'Paris', '49.0097', '2.5479', 180),
    ('DFW', 'Dallas/Fort Worth International Airport', 'Dallas', '32.8998', '-97.0403', 150),
    ('DXB', 'Dubai International Airport', 'Dubai', '25.2532', '55.3657', 200),
    ('HKG', 'Hong Kong International Airport', 'Hong Kong', '22.3080', '113.9185', 180),
    ('ICN', 'Incheon International Airport', 'Seoul', '37.4602', '126.4407', 150),
    ('JFK', 'John F. Kennedy International Airport', 'New York', '40.6413', '-73.7781', 150),
    ('LAX', 'Los Angeles International Airport', 'Los Angeles', '33.9416', '-118.4085', 200),
    ('LHR', 'London Heathrow Airport', 'London', '51.4700', '-0.4543', 200),
    ('SYD', 'Sydney Kingsford Smith International Airport', 'Sydney', '-33.9466', '151.1779', 150);

-- Flugzeug Tabelle
INSERT INTO Flugzeug (Flugnummer, Flugzeugtyp, Kapazität, Flughöhe, Gewicht, VerbrauchProKnoten)
VALUES
    ('BA123', 'Boeing 747', 400, 35000.0, 300000.0, 1.2),
    ('LH456', 'Airbus A380', 550, 38000.0, 400000.0, 1.5),
    ('AA789', 'Boeing 737', 150, 32000.0, 150000.0, 0.8),
    ('UA234', 'Airbus A320', 200, 34000.0, 200000.0, 0.9),
    ('QF789', 'Boeing 787', 300, 37000.0, 250000.0, 1.0),
    ('EK789', 'Airbus A350', 400, 36000.0, 350000.0, 1.3),
    ('SQ123', 'Boeing 777', 350, 37000.0, 280000.0, 1.1),
    ('TK456', 'Airbus A330', 250, 34000.0, 220000.0, 0.9),
    ('DL789', 'Boeing 767', 200, 35000.0, 180000.0, 0.8),
    ('AF123', 'Airbus A340', 300, 36000.0, 240000.0, 1.0);

-- Crewmitglied Tabelle
INSERT INTO Crewmitglied (Mitarbeiternummer, Vorname, Nachname, Geburtsdatum, Flugnummer, Rolle)
VALUES
(1, 'Max', 'Mustermann', '1990-05-15', 'BA123', 'Teamleiter*in'),
(2, 'Anna', 'Schmidt', '1985-08-22', 'BA123', 'Crew Purser'),
(3, 'Laura', 'Müller', '1993-03-10', 'AA789', 'Crew Purser'),
(4, 'Michael', 'Schulz', '1988-11-25', 'AA789', 'Food & Beverage Manager'),
(5, 'Sophie', 'Wagner', '1995-07-18', 'QF789', 'Teamleiter*in'),
(6, 'Thomas', 'Koch', '1987-04-30', 'SQ123', 'Crew Purser'),
(7, 'Julia', 'Becker', '1991-09-08', 'SQ123', 'Teamleiter*in'),
(8, 'Felix', 'Hofmann', '1994-01-14', 'AF123', 'Food & Beverage Manager'),
(9, 'Lena', 'Schneider', '1989-06-02', 'AF123', 'Crew Purser'),
(10, 'Paul', 'Herrmann', '1992-12-07', 'UA234', 'Teamleiter*in');

-- Passagier Tabelle
INSERT INTO Passagier (Reisepassnummer, Vorname, Nachname, Geburtsdatum, Startflughafen, Zielflughafen, Flugnummer, Flugklasse)
VALUES
    (1001, 'Thomas', 'Schulz', '1990-05-15', 'JFK', 'LHR', 'BA123', 'Business'),
    (1002, 'Maria', 'Meier', '1988-03-21', 'CDG', 'JFK', 'LH456', 'Economy'),
    (1003, 'Peter', 'Fischer', '1995-09-10', 'LHR', 'CDG', 'AA789', 'First'),
    (1004, 'Laura', 'Meyer', '1987-12-03', 'LAX', 'DFW', 'DL789', 'Economy'),
    (1005, 'Daniel', 'Wong', '1992-04-18', 'HKG', 'SYD', 'QF789', 'Business'),
    (1006, 'Emily', 'Chen', '1991-08-25', 'DXB', 'AMS', 'EK789', 'First'),
    (1007, 'Sophia', 'Taylor', '1994-01-30', 'ICN', 'LHR', 'BA123', 'Business'),
    (1008, 'David', 'Kim', '1993-06-14', 'LAX', 'HKG', 'SQ123', 'Business'),
    (1009, 'Oliver', 'Lee', '1989-07-19', 'AMS', 'CDG', 'AF123', 'Economy'),
    (1010, 'Mia', 'Garcia', '1996-02-09', 'ICN', 'DXB', 'TK456', 'Economy');


-- Flüge Tabelle 
INSERT INTO Flüge (Flugnummer, Startflughafen, Zielflughafen, Startzeit, Landezeit) VALUES
    ('AA789', 'HKG', 'SYD', '2023-09-18 15:20:00', '2023-09-18 18:30:00'),
    ('AA789', 'JFK', 'SYD', '2023-09-24 17:20:00', '2023-09-24 18:15:00'),
    ('AA789', 'LHR', 'CDG', '2023-09-16 08:30:00', '2023-09-16 10:30:00'),
    ('AF123', 'AMS', 'CDG', '2023-09-20 11:00:00', '2023-09-20 18:00:00'),
    ('BA123', 'ICN', 'DFW', '2023-09-15 10:00:00', '2023-09-15 14:00:00'),
    ('BA123', 'ICN', 'LHR', '2023-09-21 11:10:00', '2023-09-21 12:20:00'),
    ('DL789', 'LAX', 'DFW', '2023-09-20 07:55:00', '2023-09-20 09:30:00'),
    ('EK789', 'DXB', 'AMS', '2023-09-19 09:15:00', '2023-09-19 11:00:00'),
    ('LH456', 'CDG', 'JFK', '2023-09-17 12:45:00', '2023-09-17 15:15:00'),
    ('QF789', 'HKG', 'SYD', '2023-09-22 13:40:00', '2023-09-22 15:10:00'),
    ('SQ123', 'LAX', 'HKG', '2023-09-16 15:00:00', '2023-09-19 19:00:00'),
    ('SQ123', 'LHR', 'AMS', '2023-09-23 16:30:00', '2023-09-23 18:00:00'),
    ('TK456', 'ICN', 'DXB', '2023-09-29 14:00:00', '2023-09-21 20:30:00');
    
INSERT INTO fliegen (Reisepassnummer, Flugnummer)
VALUES
    (1001, 'BA123'),
    (1002, 'LH456'),
    (1003, 'AA789'),
    (1004, 'DL789'),
    (1005, 'QF789'),
    (1006, 'EK789'),
    (1007, 'BA123'),
    (1008, 'SQ123'),
    (1009, 'AF123'),
    (1010, 'TK456');

-- Besatzung Tabelle (besetzt)
INSERT INTO besetzt (Flugnummer, Mitarbeiternummer) VALUES
('AA789', 2),
('AA789', 4),
('AA789', 6),
('AF123', 3),
('AF123', 10),
('AF420', 4),
('AF420', 5),
('BA123', 1),
('BA123', 2),
('BA123', 3),
('BA123', 4),
('BA123', 8),
('DL789', 2),
('DL789', 5),
('DL789', 6),
('DL789', 7),
('EK789', 1),
('EK789', 3),
('EK789', 4),
('EK789', 9),
('LH456', 3),
('LH456', 4),
('LH456', 6),
('LH456', 10),
('QF789', 3),
('QF789', 4),
('QF789', 7),
('QF789', 8),
('SQ123', 2),
('SQ123', 3),
('SQ123', 7),
('SQ123', 8),
('TK456', 2),
('TK456', 4),
('TK456', 5),
('TK456', 6),
('UA069', 3),
('UA069', 4),
('UA069', 5),
('UA069', 6),
('UA069', 9),
('UA234', 3),