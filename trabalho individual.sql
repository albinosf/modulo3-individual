CREATE DATABASE RESILIADATA;
USE RESILIADATA;

CREATE TABLE Empresas (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Áreas (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Tecnologias (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    id_area INT,
    FOREIGN KEY (id_area) REFERENCES Áreas(id)
);

CREATE TABLE Colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id)
);

CREATE TABLE Tecnologias_Empresas (
    id_empresa INT,
    id_tecnologia INT,
    PRIMARY KEY (id_empresa, id_tecnologia),
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id),
    FOREIGN KEY (id_tecnologia) REFERENCES Tecnologias(id)
);

INSERT INTO Empresas (id, nome) VALUES (1, 'Empresa A'), (2, 'Empresa B');
INSERT INTO Áreas (id, nome) VALUES (1, 'webdev'), (2, 'dados');
INSERT INTO Tecnologias (id, nome, id_area) VALUES (1, 'JavaScript', 1), (2, 'Python', 2);
INSERT INTO Colaboradores (id, nome, id_empresa) VALUES (1, 'João', 1), (2, 'Maria', 2);
INSERT INTO Tecnologias_Empresas (id_empresa, id_tecnologia) VALUES (1, 1), (2, 2);
