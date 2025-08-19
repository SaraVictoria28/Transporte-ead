CREATE TABLE Albuns(
	 IdAlbum INT PRIMARY KEY,
	 Nome VARCHAR(100),
	 Artista VARCHAR(100),
	 AnoLancamento DATE
);

CREATE TABLE Musicas(
	IdMusica INT,
	IdAlbum INT,
	Titulo VARCHAR(100),
	DuracaoSegundos INT,
	FOREIGN KEY (IdAlbum) REFERENCES Albuns(IdAlbum)
);

INSERT INTO Albuns (IdAlbum, Nome, Artista, AnoLancamento) VALUES
(1, 'Folklore', 'Taylor Swift', '2020-07-24'),
(2, 'Future Nostalgia', 'Dua Lipa', '2020-03-27'),
(3, 'After Hours', 'The Weeknd', '2020-03-20'),
(4, 'Lover', 'Taylor Swift', '2019-08-23'),
(5, 'SOUR', 'Olivia Rodrigo', '2021-05-21'),
(6, 'Midnights', 'Taylor Swift', '2022-10-21'),
(7, 'Harry’s House', 'Harry Styles', '2022-05-20'),
(8, 'Justice', 'Justin Bieber', '2021-03-19');

INSERT INTO Musicas (IdMusica, IdAlbum, Titulo, DuracaoSegundos) VALUES
(1, 1, 'cardigan', 239),
(2, 1, 'august', 262),
(3, 1, 'my tears ricochet', 255), 
(4, 2, 'Don''t Start Now', 183),
(5, 2, 'Levitating', 203),
(6, 3, 'Blinding Lights', 200),
(7, 3, 'Save Your Tears', 215),
(8, 4, 'Cruel Summer', 178),
(9, 4, 'Lover', 221), 
(10, 5, 'good 4 u', 178),
(11, 5, 'drivers license', 242), 
(12, 6, 'Anti-Hero', 200),
(13, 6, 'Lavender Haze', 222), 
(14, 7, 'As It Was', 167),
(15, 7, 'Music For a Sushi Restaurant', 194), 
(16, 8, 'Peaches', 200),
(17, 8, 'Holy', 204), 
(18, 1, 'exile', 270), 
(19, 1, 'the last great american dynasty', 231),
(20, 3, 'After Hours', 341);

SELECT IdAlbum,
COUNT(*) MusicasAlbum
FROM Musicas
GROUP BY Musicas.IdAlbum;

SELECT Albuns.Artista,
COUNT(*) MusicasArtista
FROM Albuns
INNER JOIN Musicas ON Albuns.IdAlbum = Musicas.IdAlbum
GROUP BY Albuns.Artista;

SELECT
MAX(DuracaoSegundos)
MusicaMaisLonga 
FROM Musicas;

SELECT 
Albuns.Nome,
Albuns.Artista,
Musicas.Titulo,
Musicas.DuracaoSegundos
FROM Albuns
INNER JOIN Musicas ON Albuns.IdAlbum = Musicas.IdMusica
WHERE Musicas.DuracaoSegundos > 240;



