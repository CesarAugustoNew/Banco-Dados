-- DDL
-- ENTIDADE -> TABELA
CREATE TABLE Instituicao (
	idInstituicao int not null auto_increment, -- ATRIBUTO
    nomeInstituicao varchar(50) not null, -- ATRIBUTO
    enderecoInstituicao varchar(100) not null, -- ATRIBUTO
    telefoneInstituicao varchar (11) not null, -- ATRIBUTO
    PRIMARY KEY(idInstituicao)
);

CREATE TABLE Alunos (
	idAluno int not null auto_increment,
    nomeAluno varchar(60) not null,
    matriculaAluno varchar(15) not null unique,
    cursoAluno varchar(100) not null,
    instituicaoId int not null,
    PRIMARY KEY(idAluno),
    FOREIGN KEY (instituicaoId) REFERENCES instituicao(idInstituicao)
);

CREATE DATABASE SistemaEscolar;

DROP TABLE Instituicao;

