/*
INSERT INTO Mitarbeiter (Vorname, Nachname, Monatslohn) VALUES  ('Rafael', 'Szanislo', 5500),
                                                                ('Jürg', 'Müller', 5200),
                                                                ('Markus', 'Meister', 4800),
                                                                ('Franco', 'DellAmore', 5050);
*/

/*
INSERT INTO Orte (PLZ, Ortname, Kanton) 
   SELECT PLZ, Ortsbezeichnung27, Kanton 
   FROM BulkTest WHERE PLZTyp = 10 OR PLZTyp = 20 
*/

/*
INSERT INTO Kunden (Vorname, Nachname, Geschlecht, Geburtsdatum, Wohnort, Krankenkasse) 
VALUES ('Beatrix', 'Hugentobler', 'w', '19630324', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6032'), 'CSS Versicherung'),
('Viktor', 'Meyer', 'm', '19601218', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6012'), 'Group Mutuel'),
('Yanick', 'Merz', 'm', '19960803', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6043'), 'NULL'),
('Joshua', 'Pfister', 'm', '20010528', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6030'), 'Concordia'),
('Franziska', 'Tobler', 'w', '19750304', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6000'), 'CSS Versicherung'),
('Michele', 'd’Angelo', 'm', '20020630', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6003'), 'CSS Versicherung'),
('Petra', 'Nussbaumer', 'w', '19690825', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6016'), 'Group Mutuel'),
('Admir', 'Smajic', 'm', '19630907', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6020'), 'CSS Versicherung'),
('Lars', 'Ramseier', 'm', '19990125', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6038'), 'NULL'),
('Erna', 'Tschurtschenthaler', 'w', '19891113', (SELECT TOP 1 OrtId FROM Orte WHERE PLZ='6024'), 'CSS Versicherung');
*/

INSERT INTO Betreuung (Kundennummer, Personalnummer, VonKKBezahlt) VALUES (19, 1, 'Nicht bezahlt'),
                                                            (26, 3, 'Bezahlt'),
                                                            (18, 3, 'Nicht bezahlt'),
                                                            (18, 2, 'Bezahlt');