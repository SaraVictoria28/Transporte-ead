CREATE TABLE Pacientes(
	IdPaciente INT PRIMARY KEY,
	Nome VARCHAR(100),
	DataNascimento DATE
);

CREATE TABLE Consultas(
	IdConsulta INT,
	IdPaciente INT,
	DataConsulta DATE,
	Medico VARCHAR(100)
	FOREIGN KEY(IdPaciente) REFERENCES Pacientes(IdPaciente)
);

INSERT INTO Pacientes (IdPaciente, Nome, DataNascimento) VALUES
(1, 'João Silva', '1985-03-10'),
(2, 'Maria Santos', '1990-07-22'),
(3, 'Pedro Almeida', '1978-01-15'),
(4, 'Ana Costa', '1965-05-30'), 
(5, 'Lucas Oliveira', '2000-11-05'),
(6, 'Carla Mendes', '1992-09-18'),
(7, 'Paulo Lima', '1988-02-25'),
(8, 'Mariana Fernandes', '1995-12-03');

INSERT INTO Consultas (IdConsulta, IdPaciente, DataConsulta, Medico) VALUES
(101, 1, '2024-06-25', 'Dr. Souza'),
(102, 2, '2024-06-25', 'Dr. Souza'),
(103, 3, '2024-06-26', 'Dr. Silva'), 
(104, 4, '2024-06-27', 'Dra. Oliveira'),
(105, 5, '2024-06-27', 'Dr. Souza'),
(106, 6, '2024-06-28', 'Dr. Silva'), 
(107, 7, '2024-06-28', 'Dra. Oliveira');

SELECT * 
FROM Pacientes

SELECT Medico, 
COUNT(*) Atencimentos
FROM Consultas
GROUP BY Medico;

SELECT DataConsulta,
COUNT (*) Consultas
FROM Consultas
GROUP BY DataConsulta; 

SELECT 
Pacientes.IdPaciente,
Pacientes.Nome,
Pacientes.DataNascimento
FROM Pacientes
INNER JOIN 
Consultas ON Pacientes.IdPaciente = Consultas.IdPaciente
WHERE Consultas.IdConsulta = '';

SELECT TOP 1
Nome,
DataNascimento
FROM Pacientes
ORDER BY DataNascimento ASC

