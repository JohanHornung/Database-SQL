BEGIN TRANSACTION;

-- Hinzufügen eines neuen Crewmitglieds
INSERT INTO Crewmitglied (Mitarbeiternummer, Vorname, Nachname, Geburtsdatum, Flugnummer, Rolle)
VALUES (11, 'Anna', 'Müller', '1990-05-15', 'AF123', 'Crew Purser');

-- Aktualisierung der Flugbesatzung
INSERT INTO besetzt (Flugnummer, Mitarbeiternummer)
VALUES ('AF123', 11);

COMMIT;