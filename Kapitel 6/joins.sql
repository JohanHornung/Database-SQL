-- Erstellung der Tabellen R1 und R2

CREATE TABLE IF NOT EXISTS R1 (
    A   INT PRIMARY KEY,
    B   INT NOT NULL,
    C   INT NOT NULL,
    X   INT NOT NULL

);

CREATE TABLE IF NOT EXISTS R2 (
    X   INT PRIMARY KEY,
    Y   VARCHAR(4069),
    Z   VARCHAR(4069)

);

-- Einfügen der Werte

INSERT INTO R1 VALUES 
    (10, 11, 12, 13),
    (20, 21, 22, 23),
    (30, 31, 32, 33),
    (40, 41, 42, 43),
    (50, 51, 52, 53),
    (60, 61, 62, 63);

INSERT INTO R2 VALUES 
    (13, "A1", "B1"),
    (24, "A2", "B2"),
    (33, "A3", "B3"),
    (46, "A4", "B4"),
    (53, "A5", "B5"),
    (62, "A6", "B6"),
    (73, "A7", "B7"),
    (83, "A8", "B8");



-- ABFRAGEN


-- Kreuzprodukt zwischen R1 und R2

SELECT *
FROM R1 JOIN R2 ON 

-- Theta Join ⋈θ mit Theta: (R1.X = R2.X-1) v (R1.X-1 = R2.X)

SELECT *
FROM RI JOIN R2 ON R1.X = R2.X-1 OR R1.X-1 = R2.X

-- Natural-Join von R1 und R2

SELECT *
FROM R1 NATURAL JOIN R2

-- Equi-Join von R1 und R2 über das Attribut X
SELECT *
FROM RI JOIN R2 ON R1.X = R2.X 


