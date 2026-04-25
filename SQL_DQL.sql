-- DQL

SELECT * FROM alunos;
SELECT * FROM instituicao;

describe alunos;

-- where -> filtragemC
SELECT nomeAluno, cursoAluno FROM alunos WHERE curso;

-- QUANTOS ALUNOS EU TENHO NOS CURSOS
SELECT cursoAluno, COUNT(*) as total FROM alunos GROUP BY cursoAluno ORDER BY totalAlunos DESC;

-- OS ALUNOS E A SUA INSTITUIÇÃO DE ENSINO
SELECT nomeAluno, cursoAluno, nomeInstituicao FROM alunos JOIN instituicao ON alunos.instituicaoId = instituicao.idInstituicao;

-- QUANTOS ALUNOS EXISTEM DENTRO DE UMA INSTITUIÇÃO
SELECT i.nomeInstituicao, COUNT(*) AS totalAlunos FROM instituicao i JOIN alunos ON i.idInstituicao = alunos.instituicaoId
GROUP BY i.nomeInstituicao;

-- EXIBA QUANTOS ALUNOS EXISTEM EM UM CURSO X DA INSTITUICAO Y 
SELECT
	a.nomeAluno as Aluno,
	a.cursoAluno as Curso,
	i.nomeInstituicao as Instituicao
	FROM alunos a
	JOIN instituicao i on a.instituicaoId = i.idInstituicao
	WHERE i.idInstituicao =1;

SELECT
	i.nomeInstituicao,
    a.cursoAluno,
    count(*) as Total_aluno
    FROM instituicao i
    JOIN alunos a on i.idInstituicao = a.instituicaoId
    GROUP BY i.nomeInstituicao, a.cursoAluno
    ORDER BY i.nomeInstituicao DESC;











