-- Flughafen Tabelle
DROP TABLE IF EXISTS Flughafen;
CREATE TABLE Flughafen (
    IATACode VARCHAR(255) PRIMARY KEY,
    Name VARCHAR(255),
    Stadt VARCHAR(255),
    Breitengrad VARCHAR(255) CHECK (Breitengrad REGEXP '^-?\\d+(\\.\\d+)?$'), -- Gültiges Format
    Längengrad VARCHAR(255) CHECK (Längengrad REGEXP '^-?\\d+(\\.\\d+)?$'), -- Gültiges Format
    AnzahlPositionen INT
);


-- Flugzeug Tabelle
DROP TABLE IF EXISTS Flugzeug;
CREATE TABLE Flugzeug (
    Flugnummer VARCHAR(255) PRIMARY KEY,
    Flugzeugtyp VARCHAR(255),
    Kapazität INT,
    Flughöhe FLOAT,
    Gewicht FLOAT,
    VerbrauchProKnoten FLOAT,
);

-- Passagier Tabelle
DROP TABLE IF EXISTS Passagier;
CREATE TABLE Passagier (
    Reisepassnummer INT PRIMARY KEY,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    Geburtsdatum VARCHAR(10) CHECK (Geburtsdatum REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'), -- Gültiges Datumsformat (YYYY-MM-DD)
    Startflughafen VARCHAR(255),
    Zielflughafen VARCHAR(255),
    Flugnummer VARCHAR(255),
    Flugklasse ENUM('First', 'Economy', 'Business') NOT NULL,
    FOREIGN KEY (Startflughafen) REFERENCES Flughafen(IATACode),
    FOREIGN KEY (Zielflughafen) REFERENCES Flughafen(IATACode),
    FOREIGN KEY (Flugnummer) REFERENCES Flugzeug(Flugnummer)
);

-- Crewmitglied Tabelle
DROP TABLE IF EXISTS Crewmitglied;
CREATE TABLE Crewmitglied (
    Mitarbeiternummer INT PRIMARY KEY,
    Vorname VARCHAR(255),
    Nachname VARCHAR(255),
    Geburtsdatum VARCHAR(10) CHECK (Geburtsdatum REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'), -- Gültiges Datumsformat (YYYY-MM-DD)
    Flugnummer  VARCHAR(255),
    Rolle ENUM('Teamleiter*in', 'Crew Purser', 'Food & Beverage Manager', 'Chief Purser') NOT NULL,
    -- Reflexive Beziehung verantwortet
    Vorgesetzter INT
    FOREIGN KEY (Vorgesetzter) REFERENCES Crewmitglied(Flugnummer)
    FOREIGN KEY (Flugnummer) REFERENCES Flugzeug(Flugnummer)
);


-- Flug Tabelle (abfliegen/landen)
DROP TABLE IF EXISTS Flüge;
CREATE TABLE Flüge (
    Flugnummer VARCHAR(255),
    Startflughafen VARCHAR(255),
    Zielflughafen VARCHAR(255),
    Startzeit DATETIME,
    Landezeit DATETIME,
    PRIMARY KEY (Flugnummer, Startflughafen, Zielflughafen),
    FOREIGN KEY (Flugnummer) REFERENCES Flugzeug(Flugnummer),
    FOREIGN KEY (Startflughafen) REFERENCES Flughafen(IATACode),
    FOREIGN KEY (Zielflughafen) REFERENCES Flughafen(IATACode),
    CHECK (Startflughafen != Zielflughafen)
);


-- Flugdurchführung Tabelle (fliegen)
DROP TABLE IF EXISTS fliegen;
CREATE TABLE fliegen (
    Reisepassnummer INT,
    Flugnummer VARCHAR(255),
    PRIMARY KEY (Reisepassnummer, Flugnummer),
    FOREIGN KEY (Reisepassnummer) REFERENCES Passagier(Reisepassnummer),
    FOREIGN KEY (Flugnummer) REFERENCES Flug(Flugnummer)
);

-- Besatzung Tabelle (besetzt)
DROP TABLE IF EXISTS besetzt;
CREATE TABLE besetzt (
    Flugnummer VARCHAR(255),
    Mitarbeiternummer INT,
    PRIMARY KEY (Flugnummer, Mitarbeiternummer),
    FOREIGN KEY (Flugnummer) REFERENCES Flugzeug(Flugnummer),
    FOREIGN KEY (Mitarbeiternummer) REFERENCES Crewmitglied(Mitarbeiternummer)
);

