-- Diese Abfrage gibt alle Flughäfen zurück, die sich in der Stadt "Berlin" befinden.

SELECT Namen, Stadt
FROM Flughafen
WHERE Stadt = 'Berlin';

-- Diese Abfrage gibt die Anzahl der Flüge pro Flugzeugtyp zurück.
SELECT Flugzeugtyp, COUNT(*) AS AnzahlFluege
FROM Flugzeug
GROUP BY Flugzeugtyp;

-- Diese Abfrage gibt alle Flugdaten für Flüge zurück, die zwischen zwei bestimmten Datumszeiträumen liegen. 
-- Hierbei werden Informationen über das Abfliegen und Landen der Flüge aus der Tabelle "AbfliegenLanden" verwendet.

SELECT 
    al.Flugzeugnummer, 
    al.Startflughafen, 
    al.Zielflughafen, 
    al.Startzeit, 
    al.Landezeit, 
    f.Flugzeugtyp
FROM AbfliegenLanden AS al
JOIN Flugzeug AS f ON al.Flugzeugnummer = f.Flugzeugnummer
WHERE al.Startzeit BETWEEN '2023-09-15' AND '2023-09-20';

-- Diese Abfrage gibt alle Crewmitglieder und ihre Rollen für einen bestimmten Flug zurück.
-- Sie verwendet Informationen aus den Tabellen "Crewmitglied" und "besetzt".

SELECT 
    cm.Vorname, 
    cm.Nachname, 
    cm.Rolle
FROM Crewmitglied AS cm
JOIN besetzt AS b ON cm.Mitarbeiternummer = b.Mitarbeiternummer
WHERE b.Flugnummer = 'AA101';


-- Angenommen, Sie möchten herausfinden, ob alle Flüge, die von einem bestimmten Flugzeugtyp (z. B. 'Boeing 747') durchgeführt werden, 
-- mindestens einen Passagier in der Flugklasse 'Business' haben. Die Abfrage würde wie folgt aussehen:
SELECT f.Flugzeugtyp,
       COUNT(*) AS AnzahlFluege,
       CASE
           WHEN COUNT(*) > 0 THEN 'Ja'
           ELSE 'Nein'
       END AS AlleBusinessPassagiere
FROM Flugzeug AS f
LEFT JOIN fliegen AS fl ON f.Flugnummer = fl.Flugnummer
LEFT JOIN Passagier AS p ON fl.Reisepassnummer = p.Reisepassnummer
WHERE p.Flugklasse = 'Business'
GROUP BY f.Flugzeugtyp;
