DROP DATABASE IF EXISTS fleet;
CREATE DATABASE fleet;
USE fleet;

CREATE TABLE Models (
    Model VARCHAR(50) NOT NULL,
    Manufacturer VARCHAR(50) NOT NULL,
    PRIMARY KEY (Model)
);

CREATE TABLE Aircrafts (
    TailNumber VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    ProductionDate DATE NOT NULL,
    NSeats INT NOT NULL CHECK (NSeats > -1),
    PRIMARY KEY (TailNumber),
    FOREIGN KEY (Model) REFERENCES Models (Model) ON DELETE RESTRICT
);

CREATE TABLE Revisions (
    Id INT NOT NULL AUTO_INCREMENT = 10000,
    TailNumber VARCHAR(50) NOT NULL,
    RDescription TEXT NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (TailNumber) REFERENCES Aircrafts (TailNumber) ON DELETE RESTRICT
);

CREATE TABLE Routes (
    Id INT NOT NULL AUTO_INCREMENT = 1000,
    DepartureAirport VARCHAR(4) NOT NULL, /*3 digits for IATA, 4 digits for ICAO*/
    ArrivalAirport VARCHAR(4) NOT NULL, /*3 digits for IATA, 4 digits for ICAO*/
    Distance FLOAT NOT NULL CHECK (Distance > 0),
    PRIMARY KEY (Id)
);

CREATE TABLE Flights (
    Id INT NOT NULL AUTO_INCREMENT = 1000000,
    TailNumber VARCHAR(50) NOT NULL,
    IdRoute INT NOT NULL,
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (TailNumber) REFERENCES Aircrafts (TailNumber) ON DELETE RESTRICT,
    FOREIGN KEY (IdRoute) REFERENCES Routes (Id) ON DELETE RESTRICT
);

CREATE TABLE Roles (
    Id INT NOT NULL,
    Name VARCHAR(50),
    PRIMARY KEY (Id)
);

CREATE TABLE Personnel (
    Id INT NOT NULL AUTO_INCREMENT = 100000,
    PName VARCHAR(50) NOT NULL,
    PSurname VARCHAR(50) NOT NULL,
    IdRole INT NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (IdRole) REFERENCES Roles (Id) ON DELETE RESTRICT
);

CREATE TABLE Revisions_Personnel (
    IdRevision INT NOT NULL,
    IdPersonnel INT NOT NULL,
    Notes TEXT,
    PRIMARY KEY (IdRevision, IdPersonnel),
    FOREIGN KEY (IdRevision) REFERENCES Revisions (Id) ON DELETE RESTRICT,
    FOREIGN KEY (IdPersonnel) REFERENCES Personnel (Id) ON DELETE RESTRICT
);

CREATE TABLE Flight_Personnel (
    IdFlight INT NOT NULL,
    IdPersonnel INT NOT NULL,
    PRIMARY KEY (IdFlight, IdPersonnel),
    FOREIGN KEY (IdFlight) REFERENCES Flights (Id) ON DELETE RESTRICT,
    FOREIGN KEY (IdPersonnel) REFERENCES Personnel (Id) ON DELETE RESTRICT
);