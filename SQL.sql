-- DML
INSERT INTO sistemaescolar.Instituicao 
(nomeInstituicao, enderecoInstituicao, telefoneInstituicao)
VALUES
("Senai", "Rua niterói, 180 - São Caetano do Sul", "2022-2554"),
("Etec Jorge Street", "Rua do paralelo, 909 - São Caetano do Sul", "5625-2823");

INSERT INTO sistemaescolar.alunos
	(nomeAluno, matriculaAluno, cursoAluno, instituicaoId )
VALUES
("César Augusto", "5555231", "Programação Backend", 1),
("Gustavo", "4343231", "Programação Backend", 1),
("Carlos", "85851231", "Programação Frontend", 1),
("Luiz", "52421231", "Programação Frontend", 2),
("Thiago", "33331231", "Programação Full-tack", 2);

-- UPDATE
UPDATE alunos SET matriculaAluno = "1111111111" WHERE matriculaAluno = "85851231";

-- DELETE
DELETE FROM alunos WHERE matriculaAluno = "33331231";

DROP TABLE alunos;

ALTER TABLE alunos DROP COLUMN cursoAluno;



-- desabilitando o safe mode update
SET sql_safe_update = 0;
SELECT nomeInstituicao FROM instituicao;