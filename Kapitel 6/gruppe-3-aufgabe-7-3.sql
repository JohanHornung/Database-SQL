CREATE TABLE pruefen (
    MatrNr INTEGER REFERENCES Studierende (
        ON (
            DELETE CASCADE,
            VorlNr INTEGER REFERENCES Vorlesungen,
            PersNr INTEGER REFERENCES Professoren ON DELETE SET NULL,
            Note NUMERIC(2,1) CHECK (Note BETWEEN 0.7 AND 5.0),
            PRIMARY KEY (MatrNr, VorlNr),
            CONSTRAINT VorherHoeren
            CHECK (
                EXISTS (
                    SELECT * FROM hoeren h WHERE h.MatrNr = pruefen.MatrNr AND h.VorlNr = pruefen.VorlNr
                )
                    )
)));