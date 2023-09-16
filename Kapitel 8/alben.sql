-- Tabellen erstellen
DROP TABLE IF EXISTS Interpret;
CREATE TABLE Interpret (
    InterpretID     INT PRIMARY KEY,
    Name            VARCHAR(255),
    Gründungsjahr   INT
);
DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
    CD_ID INT PRIMARY KEY,
    Albumzitel VARCHAR(255),
    Erscheinungsjahr INT,
    InterpretID INT
    FOREIGN KEY (InterpretID) REFERENCES Interpret(InterpretID)
);
DROP TABLE IF EXISTS Lied;
CREATE TABLE Lied (
    CD_ID INT,
    LiedNr INT,
    Titel VARCHAR(255),
    PRIMARY KEY (CD_ID, LiedNummer),
    FOREIGN KEY (CD_ID) REFERENCES Album(CD_ID)
);

-- Daten einfügen

INSERT INTO Interpret VALUES (255, 'Pink Floyd', 1965);
INSERT INTO Interpret VALUES (256, 'Queen', 1970);
INSERT INTO Interpret VALUES (257, 'Maroon 5', 2001);
INSERT INTO Interpret VALUES (258, 'Coldplay', 1996);

-- Album Daten
INSERT INTO Album VALUES (4711, 'Wish you were here', 255, 1975);
INSERT INTO Album VALUES (4712, 'A Night at the Opera', 256, 1975);
INSERT INTO Album VALUES (4713, 'Song about Jane', 257, 2002);
INSERT INTO Album VALUES (4714, 'A Head full of Dreams', 258, 2015);

-- Lied Daten
INSERT INTO Lied VALUES (4711, 1, 'Shine on you crazy diamond');
INSERT INTO Lied VALUES (4711, 2, 'Money');
INSERT INTO Lied VALUES (4711, 3, 'Wish you were here');
INSERT INTO Lied VALUES (4712, 1, 'Love of my life');
INSERT INTO Lied VALUES (4712, 2, 'Bohemian Rhapsody');
INSERT INTO Lied VALUES (4712, 3, 'You´re my best friend');
INSERT INTO Lied VALUES (4713, 1, 'Harder to breathe');
INSERT INTO Lied VALUES (4713, 2, 'This love');
INSERT INTO Lied VALUES (4713, 3, 'She will be loved');
INSERT INTO Lied VALUES (4714, 1, 'A head full of Dreams');
INSERT INTO Lied VALUES (4714, 2, 'Hymn for the weekend');
INSERT INTO Lied VALUES (4714, 3, 'Adventure of a lifetime');