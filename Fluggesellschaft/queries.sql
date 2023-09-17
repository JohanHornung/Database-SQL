-- Diese Abfrage gibt alle Flughäfen zurück, die mehr als 100 Positionen haben. 

SELECT Name, AnzahlPositionen
FROM Flughafen
WHERE AnzahlPositionen >= 190
GROUP BY NAME;

-- Diese Abfrage gibt die Anzahl der Flüge pro Flugzeugtyp zurück.
SELECT Flugzeugtyp, COUNT(*) AS AnzahlFluege
FROM Flugzeug
GROUP BY Flugzeugtyp;

-- Diese Abfrage gibt alle Flugdaten für Flüge zurück, die zwischen zwei bestimmten Datumszeiträumen liegen. 
-- Hierbei werden Informationen über das Abfliegen und Landen der Flüge aus der Tabelle "Flüge" verwendet.

SELECT 
    fl.Flugnummer, 
    fl.Startflughafen, 
    fl.Zielflughafen, 
    fl.Startzeit, 
    fl.Landezeit, 
    f.Flugzeugtyp
FROM Flüge AS fl
JOIN Flugzeug AS f ON fl.Flugnummer = f.Flugnummer
WHERE fl.Startzeit BETWEEN '2023-09-15' AND '2023-09-20';

-- Diese Abfrage gibt alle Crewmitglieder und ihre Rollen für einen bestimmten Flug zurück.
-- Sie verwendet Informationen aus den Tabellen "Crewmitglied" und "besetzt".

SELECT 
    cm.Vorname, 
    cm.Nachname, 
    cm.Rolle
FROM Crewmitglied AS cm
JOIN besetzt AS b ON cm.Mitarbeiternummer = b.Mitarbeiternummer
WHERE b.Flugnummer = 'BA123';


-- Angenommen, Sie möchten herausfinden, ob alle Flüge, die von einem bestimmten Flugzeugtyp (z. B. 'Boeing 747') durchgeführt werden, 
-- mindestens einen Passagier in der Flugklasse 'Business' haben. Die Abfrage würde wie folgt aussehen:
SELECT 
        f.Flugnummer,
        f.Flugzeugtyp,
        COUNT(*) AS AnzahlFluege,
        CASE
            WHEN COUNT(*) > 0 THEN 'Ja'
            ELSE 'Nein'
        END AS BusinessPassagier
FROM Flugzeug AS f
LEFT JOIN fliegen AS fl ON f.Flugnummer = fl.Flugnummer
LEFT JOIN Passagier AS p ON fl.Reisepassnummer = p.Reisepassnummer
WHERE p.Flugklasse = 'Business'
GROUP BY f.Flugzeugtyp;
