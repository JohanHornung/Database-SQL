-- BA Studierende


CREATE TABLE IF NOT EXISTS BA_Studierende (
    MatrNr          INT PRIMARY KEY,
    Vorname         VARCHAR (30) NOT NULL,
    Nachname        VARCHAR (30) NOT NULL,
    Semester        INT,
    Gruppe          VARCHAR (30) NOT NULL
);


-- BA Dozenten


CREATE TABLE IF NOT EXISTS BA_Dozenten (
    PersNr      INT PRIMARY KEY,
    Vorname     VARCHAR (30) NOT NULL,
    Nachname    VARCHAR (30) NOT NULL,
    DozArt      VARCHAR (30),
    Raum        INT,
    betreutVon  INT REFERENCES BA_MA_ADMIN (PersNr)

);

-- BA Vorlesungen

CREATE TABLE IF NOT EXISTS BA_Vorlesungen (
    VorlNr      INT PRIMARY KEY,
    Titel       VARCHAR(20) NOT NULL,
    SWS         INT NOT NULL,
    gelesenVon INT REFERENCES BA_Dozenten (PersNr)
);

-- BA MA Admin

CREATE TABLE if NOT EXISTS BA_MA_Admin (
    PersNr      INT PRIMARY KEY,
    Vorname     VARCHAR(30) NOT NULL,
    Nachname    VARCHAR(30) NOT NULL,
    Aufgabe     VARCHAR(50),
    Raum        INT
)


-- BA voraussetzen

CREATE TABLE IF NOT EXISTS BA_voraussetzen (
    VorlNrVorg   INT REFERENCES BA_Vorlesungen (VorlNr),
    VorlNrNachf  INT REFERENCES BA_Vorlesungen (VorlNr),
    PRIMARY KEY (VorlNrVorg, VorlNrNachf)
);


-- BA hören

CREATE TABLE IF NOT EXISTS BA_hoeren (
    MatrNr      INT REFERENCES BA_Studierende (MatrNr),
    VorlNr      INT REFERENCES BA_Vorlesungen (VorlNr),
    PRIMARY KEY (MatrNr, VorlNr)
)

