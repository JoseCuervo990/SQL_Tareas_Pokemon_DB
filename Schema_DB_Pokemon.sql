SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS Pokemon;
CREATE SCHEMA Pokemon;
USE Pokemon;

-- tabla Jugadores
CREATE TABLE Jugadores (
    ID_Jugador INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Correo_Electronico VARCHAR(80) UNIQUE,
    Fecha_Registro DATE,
    Nivel INT
);

-- tabla Cartas
CREATE TABLE Cartas (
    ID_Carta INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Tipo VARCHAR(50),
    Rareza VARCHAR(50),
    Puntos_Poder INT,
    Expansion VARCHAR(120)
);

-- tabla Decks
CREATE TABLE Decks (
    ID_Deck INT AUTO_INCREMENT PRIMARY KEY,
    ID_Jugador INT,
    Nombre VARCHAR(50),
    Fecha_Creacion DATE,
    FOREIGN KEY (ID_Jugador) REFERENCES Jugadores(ID_Jugador)
);

-- tabla Deck_Carta
CREATE TABLE Deck_Carta (
    ID_Deck INT,
    ID_Carta INT,
    Cantidad INT,
    PRIMARY KEY (ID_Deck, ID_Carta),
    FOREIGN KEY (ID_Deck) REFERENCES Decks(ID_Deck),
    FOREIGN KEY (ID_Carta) REFERENCES Cartas(ID_Carta)
);

-- tabla Partida
CREATE TABLE Partida (
    ID_Partida INT AUTO_INCREMENT PRIMARY KEY,
    ID_Jugador1 INT,
    ID_Jugador2 INT,
    Fecha DATE,
    Duracion INT,
    Ganador INT,
    FOREIGN KEY (ID_Jugador1) REFERENCES Jugadores(ID_Jugador),
    FOREIGN KEY (ID_Jugador2) REFERENCES Jugadores(ID_Jugador)
);

-- tabla Turno
CREATE TABLE Turno (
    ID_Turno INT AUTO_INCREMENT PRIMARY KEY,
    ID_Partida INT,
    ID_Jugador INT,
    Numero_Turno INT,
    Accion VARCHAR(160),
    Fecha_Hora DATETIME,
    FOREIGN KEY (ID_Partida) REFERENCES Partida(ID_Partida),
    FOREIGN KEY (ID_Jugador) REFERENCES Jugadores(ID_Jugador)
);

-- tabla Efecto
CREATE TABLE Efecto (
    ID_Efecto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(80),
    Descripcion VARCHAR(280),
    Tipo VARCHAR(50)
);

-- tabla Turno_Efecto
CREATE TABLE Turno_Efecto (
    ID_Turno INT,
    ID_Efecto INT,
    Descripcion_Efecto VARCHAR(280),
    PRIMARY KEY (ID_Turno, ID_Efecto),
    FOREIGN KEY (ID_Turno) REFERENCES Turno(ID_Turno),
    FOREIGN KEY (ID_Efecto) REFERENCES Efecto(ID_Efecto)
);
