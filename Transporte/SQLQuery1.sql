CREATE TABLE Motorista(
	IdMotorista INT PRIMARY KEY,
	Nome VARCHAR(100),
	CNH VARCHAR(100)
);

CREATE TABLE Viagens(
	IdViagem INT,
	IdMotorista INT,
	Origem VARCHAR(100),
	Destino VARCHAR(100),
	Data DATE,
	DistanciaKm  FLOAT,
	FOREIGN KEY(IdMotorista) REFERENCES Motorista(IdMotorista)
);

INSERT INTO Motorista (IdMotorista, Nome, CNH) VALUES
(1, 'João Silva', '12345678901'),
(2, 'Maria Oliveira', '98765432109'),
(3, 'Pedro Santos', '11223344556'),
(4, 'Ana Costa', '66554433221'),
(5, 'Carlos Souza', '09876543210');

INSERT INTO Viagens (IdViagem, IdMotorista, Origem, Destino, Data, DistanciaKm) VALUES
(201, 1, 'Campinas', 'São Paulo', '2024-04-01', 99.8),
(202, 1, 'São Paulo', 'Santos', '2024-04-05', 77.2),
(203, 2, 'Florianópolis', 'Balneário Camboriú', '2024-04-02', 85.5),
(204, 2, 'Balneário Camboriú', 'Joinville', '2024-04-06', 105.0),
(205, 3, 'Gramado', 'Canela', '2024-04-03', 7.5),
(206, 3, 'Canela', 'Caxias do Sul', '2024-04-07', 80.3),
(207, 4, 'Praia do Forte', 'Morro de São Paulo', '2024-04-04', 210.6),
(208, 4, 'Morro de São Paulo', 'Salvador', '2024-04-08', 60.1),
(209, 5, '', '', '', 0),
(210, 5, '', '', '', 0);

SELECT *
FROM Motorista
INNER JOIN Viagens ON Motorista.IdMotorista = Viagens.IdMotorista
WHERE Motorista.IdMotorista = 1;

SELECT  
Motorista.Nome,
SUM(Viagens.DistanciaKm) AS DistanciaTotalKm
FROM Viagens
JOIN Motorista ON Viagens.IdMotorista = Motorista.IdMotorista
GROUP BY Motorista.Nome
ORDER BY DistanciaTotalKm DESC;


SELECT 
Viagens.IdViagem,
Motorista.Nome AS NomeMotorista,
Viagens.Origem,
Viagens.Destino,
Viagens.DistanciaKm
FROM Viagens
JOIN Motorista ON Viagens.IdMotorista = Motorista.IdMotorista
WHERE Viagens.DistanciaKm > 200;

SELECT
Viagens.IdViagem,
Motorista.Nome AS Nome,
Viagens.DistanciaKm
FROM Viagens
JOIN Motorista ON Viagens.IdMotorista = Motorista.IdMotorista
WHERE Viagens.DistanciaKm = 0;