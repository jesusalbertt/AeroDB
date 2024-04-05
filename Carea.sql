-- Supabase AI is experimental and may produce incorrect answers
-- Always verify the output before executing

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

-- Tabla Pasajero
CREATE TABLE Pasajero (
    PasajeroId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Edad INTEGER,
    Genero VARCHAR(10),
    NumeroPasaporte VARCHAR(50)
);

-- Tabla Vuelo
CREATE TABLE Vuelo (
    VueloId INT PRIMARY KEY,
    Origen VARCHAR(100),
    Destino VARCHAR(100),
    FechaHoraSalida DATETIME,
    FechaHoraLlegada DATETIME,
    Duracion INT,
    AvionId INTEGER REFERENCES Avion(AvionId)
);

-- Tabla Empleado
CREATE TABLE Empleado (
    EmpleadoId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Puesto VARCHAR(100),
    FechaContratacion DATE,
    Salario DECIMAL(10, 2)
);

-- Tabla Aeropuerto
CREATE TABLE Aeropuerto (
    AeropuertoId INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ciudad VARCHAR(100),
    Pais VARCHAR(100)
);

-- Tabla Reserva
CREATE TABLE Reserva (
    ReservaId INT PRIMARY KEY,
    PasajeroId INTEGER REFERENCES Pasajero(PasajeroId),
    VueloId INTEGER REFERENCES Vuelo(VueloId),
    Asiento VARCHAR(10)
);