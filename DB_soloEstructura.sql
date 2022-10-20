CREATE DATABASE cellgadb;
USE cellgadb;

CREATE TABLE Usuario(
	Usu_id VARCHAR(45) NOT NULL,
    Usu_contraseña VARCHAR(45) NOT NULL,
    Usu_nombre TEXT(50),
    Usu_fechaReg DATETIME,
    PRIMARY KEY(Usu_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE Tabla_individual(
	Ti_id INT NOT NULL  AUTO_INCREMENT,
    Ti_nombre VARCHAR(100),
    Usu_id VARCHAR(45),
    PRIMARY KEY(Ti_id),
    FOREIGN KEY (Usu_id) REFERENCES Usuario(Usu_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE Tarea_Ti(
	Tari_id INT NOT NULL  AUTO_INCREMENT,
    Tari_tema VARCHAR(100),
    Tari_descripcion VARCHAR(500),
    Tari_fechaCrea DATETIME,
    tari_fechaExp DATETIME,
    Ti_id INT,
    PRIMARY KEY(Tari_id),
    FOREIGN KEY (Ti_id) REFERENCES Tabla_individual (Ti_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE Rol(
    Ro_id INT NOT NULL AUTO_INCREMENT,
    Ro_nombre VARCHAR(45),
    PRIMARY KEY(Ro_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE Tabla_Equipo(
	Te_id INT NOT NULL AUTO_INCREMENT,
    Te_tema VARCHAR(100),
    Te_descripcion VARCHAR(500),
    PRIMARY KEY(Te_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE AccesoUsu (
    Au_id INT NOT NULL AUTO_INCREMENT,
    Ro_id INT,
    Usu_id VARCHAR(45),
    Te_id INT, 
    PRIMARY KEY(Au_id),
    FOREIGN KEY(Ro_id) REFERENCES Rol (Ro_id),
    FOREIGN KEY(Usu_id) REFERENCES Usuario (Usu_id),
    FOREIGN KEY(Te_id) REFERENCES Tabla_Equipo (Te_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE Tarea_Te(
	Tare_id INT NOT NULL AUTO_INCREMENT,
    Tare_tema VARCHAR(100),
    Tare_descripcion VARCHAR(500),
    Tare_fechaCrea DATETIME,
    Tare_fechaExp DATETIME,
    Te_id INT,
    PRIMARY KEY(Tare_id),
    FOREIGN KEY (Te_id) REFERENCES Tabla_Equipo (Te_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;