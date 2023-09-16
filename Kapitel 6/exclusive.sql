-- a)

SELECT SUBSTR(Name, 1, 2)
FROM Assistenten 
WHERE Name NOT IN (SELECT Name FROM Professoren);


-- b)

SELECT Vorname
FROM BA_MA_Admin 
WHERE Vorname NOT IN (SELECT Vorname FROM BA_Dozenten);