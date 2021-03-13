USE Guffi

-- Tipos Usuarios
INSERT INTO tiposUsuarios(tituloTipoUsuario)
VALUES
	('Administrador'),
	('Comum');

-- Tipos Eventos
INSERT INTO tiposEventos(tituloTipoEvento)
VALUES
	('C#'), 
	('ReactJs'),
	('SQL');

-- Instituições
INSERT INTO instituicoes(cnpj, nomeFantasia, endereco)
VALUES
	('99999999999999', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 538');

-- Usuarios
INSERT INTO usuarios(idTipoUsuario, nomeUsuario, email, senha)
VALUES
	(1, 'Administrador', 'adm@adm.com', 'adm123'), 
	(2, 'Caique', 'caique@email.com', 'caique123'), 
	(2, 'Saulo', 'saulo@email.com', 'saulo123');

-- Eventos
INSERT INTO Eventos(idTipoEvento, idInstituicao, nomeEvento, acessoLivre, dataEvento, descricao)
VALUES
	(1, 1, 'Orientação a Objetos', 1, '07/04/2021', 'Conceitos sobre os pilares da programação orientada a objetos'), 
	(2, 1, 'Ciclo de Vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com a biblioteca ReactJs'),
	(3, 1, 'Introdução a SQL', 1, '09/04/2021', 'Comandos básicos utilizando SQL Server');

-- Presenças 
INSERT INTO Presencas(idUsuario, idEvento, situacao)
VALUES
	(2, 2, 'não confirmada'),
	(3, 1, 'confirmada'),
	(3, 3, 'confirmada');