CREATE DATABASE Guffi
USE Guffi

CREATE TABLE tiposUsuarios
(
	idTipoUsuario INT PRIMARY KEY IDENTITY,
	tituloTipoUsuario VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE tiposEventos
(
	idTipoEvento INT PRIMARY KEY IDENTITY,
	tituloTipoEvento CHAR(200) UNIQUE NOT NULL
);

CREATE TABLE instituicoes
(
	idInstituicao INT PRIMARY KEY IDENTITY,
	cnpj CHAR(14) UNIQUE NOT NULL,
	nomeFantasia CHAR(200) UNIQUE NOT NULL,
	endereco CHAR(200) NOT NULL
);

CREATE TABLE usuarios
(
	idUsuario INT PRIMARY KEY IDENTITY,
	idTipoUsuario INT FOREIGN KEY REFERENCES tiposUsuarios(idTipoUsuario),
	nomeUsuario VARCHAR (200) UNIQUE NOT NULL,
	email VARCHAR (200) UNIQUE NOT NULL,
	senha VARCHAR (200) NOT NULL
);

CREATE TABLE eventos
(
	idEvento INT PRIMARY KEY IDENTITY,
	idTipoEvento INT FOREIGN KEY REFERENCES tiposEventos (idTipoEvento),
	idInstituicao INT FOREIGN KEY REFERENCES instituicoes (idInstituicao),
	nomeEvento VARCHAR(200) NOT NULL,
	acessoLivre BIT NOT NULL,
	dataEvento DATE NOT NULL,
	descricao VARCHAR(200) NOT NULL
);

CREATE TABLE presencas
(
	idPresenca INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES usuarios (idUsuario),
	idEvento INT FOREIGN KEY REFERENCES eventos (idEvento),
	situacao VARCHAR(200) NOT NULL
);