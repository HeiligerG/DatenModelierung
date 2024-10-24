CREATE DATABASE FitnessCenter;
GO

USE FitnessCenter;

CREATE TABLE Orte (
    OrtId int not null IDENTITY, 
    PLZ varchar(10), 
    Ortname varchar(50) not null, 
    Kanton char(2), 
    CONSTRAINT pk_Orte PRIMARY KEY(OrtId)
)

CREATE TABLE Kunden (
    Kundennummer int IDENTITY(1,1) not null,
    Vorname varchar(30) not null,
    Nachname varchar(30) not null, 
    Geschlecht char(1),
    Geburtsdatum smalldatetime, 
    Wohnort int, 
    CONSTRAINT pk_Kunden PRIMARY KEY (Kundennummer), 
    CONSTRAINT fk_KundenOrte FOREIGN KEY (Wohnort) REFERENCES Orte(OrtId)
);

CREATE TABLE Mitarbeiter (
    Personalnummer int IDENTITY(1,1) NOT NULL, 
    Vorname varchar(30) NOT NULL, 
    Nachname varchar(30) NOT NULL, 
    CONSTRAINT pk_Personal PRIMARY KEY (Personalnummer)
);

CREATE TABLE Betreuung(
    Kundennummer INT,
    Personalnummer INT,
    Betreuungsnummer INT IDENTITY(1,1) NOT NULL,
    CONSTRAINT fk_Kunden FOREIGN KEY (Kundennummer) REFERENCES Kunden(Kundennummer) ON DELETE CASCADE,
    CONSTRAINT fk_Personal FOREIGN KEY (Personalnummer) REFERENCES Mitarbeiter(Personalnummer),
    CONSTRAINT pk_Betreuung PRIMARY KEY (Betreuungsnummer)
);