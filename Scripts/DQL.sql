USE Guffi

SELECT * FROM tiposUsuarios
SELECT * FROM tiposEventos
SELECT * FROM instituicoes
SELECT * FROM usuarios
SELECT * FROM eventos
SELECT * FROM presencas

SELECT idUsuario, tituloTipoUsuario, nomeUsuario, email
FROM usuarios
INNER JOIN tiposUsuarios
ON tiposUsuarios.idTipoUsuario = usuarios.idTipoUsuario;

SELECT nomeFantasia [Local], idEvento, tituloTipoEvento, nomeEvento, acessoLivre, 
dataEvento, descricao
FROM Eventos E
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicoes I
ON E.idInstituicao = I.idInstituicao;

SELECT nomeUsuario Usuario, email, nomeEvento Evento, tituloTipoEvento Tema, dataEvento [Data]
FROM usuarios U
INNER JOIN Presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN Eventos E
ON P.idEvento = E.idEvento
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento;

SELECT tituloTipoUsuario [Permissão], nomeUsuario, email 
FROM usuarios U 
INNER JOIN tiposUsuarios TU 
ON U.idTipoUsuario = TU.idTipoUsuario 
WHERE email = 'saulo@email.com' AND senha = 'saulo123';