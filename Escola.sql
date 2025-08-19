CREATE TABLE Alunos(
	AlunoID INT PRIMARY KEY,
	Nome VARCHAR(225) NOT NULL,
	DataNascimento DATE NOT NULL
);

CREATE TABLE Notas(
	IdNota FLOAT,
	IdAluno INT NULL,
	Disciplina VARCHAR(255),
	Nota FLOAT,
	FOREIGN KEY(IdAluno) REFERENCES Alunos(AlunoID)
);

INSERT INTO Alunos(AlunoID, Nome, DataNascimento) VALUES
(1,'Sofia Oliveira', '2008-03-12'),
(2,'João Pedro Santos', '2007-09-05'),
(3,'Ana Clara Pereira', '2009-01-21'),
(4,'Lucas Ferreira', '2008-06-18'),
(5,'Maria Eduarda Costa', '2007-11-30');


INSERT INTO Notas(IdNota, IdAluno, Disciplina, Nota) VALUES
(1, 2, 'Matematica', '8.5'),
(2, 5, 'Matematica', '7.0'),
(3, 1, 'Matematica', '9.2'),
(4, 3, 'Matematica', '6.8'),
(5, 4, 'Matematica', '');


SELECT * FROM ALunos;
SELECT * FROM Notas;

SELECT *
FROM Alunos
INNER JOIN Notas ON Alunos.AlunoID = Notas.IdAluno

SELECT AVG(Nota) MediaDeNotas FROM Notas;

SELECT Alunos.Nome, Notas.Nota
FROM Alunos
JOIN Notas ON AlunoID = Notas.IdAluno
WHERE Notas.Nota>7;


SELECT Alunos.Nome, Notas.Nota
FROM Alunos
JOIN Notas ON AlunoID = Notas.IdAluno
WHERE '';

UPDATE Notas
SET Nota = NULL,
WHERE IdNota = 5;
