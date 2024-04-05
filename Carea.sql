CREATE DATABASE Carea 
USE Carea
GO

-- Tabla Avion
CREATE TABLE Avion (
    AvionId INT PRIMARY KEY,
    Modelo VARCHAR(100),
    CapacidadPasajeros INTEGER,
    AnioFabricacion INTEGER,
    NumeroSerie VARCHAR(50)
);

-- Tabla Miembros
CREATE TABLE Miembros (
    MiembrosId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Codigo VARCHAR(100),
    Edad INTEGER,
);

-- Tabla Vuelo
CREATE TABLE Vuelo (
    VueloId INT PRIMARY KEY,
    Origen VARCHAR(100),
    Destino VARCHAR(100),
    FechaHoraSalida DATETIME,
    FechaHoraLlegada DATETIME,
    AvionId INTEGER REFERENCES Avion(AvionId),
	Pilotoid INT,
	Miembrosid INT
);

-- Tabla Piloto
CREATE TABLE Piloto (
    PilotoId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Codigo VARCHAR(100),
    Horas_Vuelo VARCHAR(100),
);