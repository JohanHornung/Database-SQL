-- BA Dozenten

INSERT INTO BA_Dozenten VALUES
(2001, 'Nadine', 'Prof. Dr. Chehimi', 'FAD', 208, 1001),
(2002, 'Matthias', 'Prof. Dr. Maßmann', 'FAD', 207, 1001),
(2003, 'Michael', 'Gamer', 'FAD', 106, 1002),
(2004, 'Bernd', 'Kress', 'FRD', 106, 1003),
(2005, 'Nadja', 'Prof. Dr. Henkel', 'FRD', 106, 1004),
(2006, 'Volker', 'Prof. Dr. Drosse', 'FRD', 106, 1004),
(2007, 'René', 'Dr. Rüth', 'FRD', 106, 1005),
(2008, 'Michael', 'Kreinbihl', 'FRD', 106, 1003),
(2009, 'Jürgen', 'Rolf', 'FRD', 106, 1005),
(2010, 'Jörg', 'Saalfeld', 'FRD', 106, 1005);


-- BA MA Admins

INSERT INTO `BA_MA_Admin` (`PersNr`, `Vorname`, `Nachname`, `Aufgabe`, `Raum`) VALUES
(1001, 'Bernd', 'Albrecht', 'Geschäftsführer & Akademieleiter', 221),
(1002, 'Sabine', 'Burbach', 'Assistenz der Geschäftsleitung', 220),
(1003, 'Nadine', 'Pleyer', 'Prüfungsamt', 218),
(1004, 'Meike', 'Hoth', 'Referentin Sales & Talent Managemet', 220),
(1005, 'Sandra', 'Späth-Soekamto', 'Referentin Kommunikation & Sales', 219);


-- BA Studierende

INSERT INTO BA_Studierende VALUES
(10001, 'Tim', 'Kraft', 5, 'WI-30-I'),
(10002, 'Robin', 'Kühnhaller', 5, 'WI-30-I'),
(10003, 'Alex', 'Mehlbreuer', 5, 'WI-30-I'),
(10004, 'Maximilian', 'Pulver', 5, 'WI-30-I'),
(10005, 'Anja', 'Richter', 5, 'WI-30-I'),
(10007, 'Jeremy', 'Stengel', 5, 'WI-30-I'),
(10008, 'Joschka', 'Wenderer', 5, 'WI-30-I'),
(10009, 'Lukas', 'Leinweb', 5, 'WI-30-I'),
(10010, 'Jonas','Haag', 5, 'WI-30-I')


-- BA Vorlesungen

INSERT INTO BA_Vorlesungen VALUES
(5001, 'Wissenschaftliches Arbeiten', 2, 2001),
(5002, 'Design und Implementierung von Algorithmen', 4, 2009),
(5003, 'Einführung in die Wirtschaftsinformatik', 4, 2003),
(5004, 'Formale Grundlagen der Informatik', 4, 2003),
(5005, 'Marking', 4, 2007),
(5006, 'Elektronische Dokumente und Webdesign', 4, 2004),
(5007, 'Entwurf und Implementierung von Datenbanken', 4, 2008),
(5008, 'Internettechnologien und webbasierte Datenbanken (WPF)', 4, 2008),
(5009, 'Entscheidungsunterstützende Systeme (WPF)', 4, 2003),
(5010, 'Unternehmensethik (WPF)', 4, 2010)

-- BA hören

INSERT INTO BA_hoeren VALUES
(10001, 5008),
(10002, 5008),
(10003, 5008),
(10004, 5008),
(10005, 5008),
(10005, 5010),
(10014, 5009),
(10015, 5009);


-- BA voraussetzen

INSERT INTO BA_voraussetzen VALUES
(5002, 5007),
(5002, 5008),
(5004, 5007),
(5007, 5008);


