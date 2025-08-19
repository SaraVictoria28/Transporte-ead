CREATE TABLE Filmes(
	IdFilme INT PRIMARY KEY,
	Titulo VARCHAR(100),
	Genero VARCHAR(100),
	Ano DATE
);

CREATE TABLE Sessoes(
	IdSessao INT,
	IdFilme INT,
	Data DATE,
	Hora TIME,
	FOREIGN KEY(IdFilme) REFERENCES Filmes(IdFilme)
);


INSERT INTO Filmes(IdFilme, Titulo, Genero, Ano) VALUES
(1, 'O Senhor dos Anéis: A Sociedade do Anel', 'Fantasia', '2001-12-19'),
(2, 'Mercenário', 'Ação', '2014-11-06'),
(3, 'A Origem', 'Ficção Científica', '2010-08-27'),
(4, 'Parasita', 'Suspense/Comédia', '2019-11-07'),
(5, 'Velozes e Furiosos', 'Ação', '2010-08-13');

INSERT INTO Sessoes (IdSessao, IdFilme, Data, Hora) VALUES
(101, 1, '2024-05-20', '14:30:00'),
(102, 2, '2024-05-20', '19:00:00'),
(103, 3, '2024-05-21', '16:45:00'),
(104, 4, '2024-05-22', '21:15:00'),
(105, 5, '2024-05-22', '10:00:00');

SELECT *
FROM Filmes 
WHERE Genero = 'Ação'; 

SELECT
Filmes.IdFilme,
Filmes.Titulo,
Filmes.Ano,
Sessoes.IdSessao,
Sessoes.Data,
Sessoes.Hora
FROM Filmes
INNER JOIN Sessoes ON Filmes.IdFilme = Sessoes.IdFilme
WHERE Filmes.Ano > '2010-12-31';

SELECT Titulo,
COUNT (*) Sessoes
FROM Filmes
GROUP BY Titulo;

SELECT 
Filmes.Titulo,
Sessoes.Data,
Sessoes.Hora
FROM Filmes
INNER JOIN 
Sessoes ON Filmes.IdFilme = Sessoes.IdFilme;