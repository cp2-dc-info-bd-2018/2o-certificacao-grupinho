USE [Colégio_Inovacionar ]

CREATE TABLE funcionario(
id_funcionario INT,
nome CHAR(50),
cargo CHAR (50),
PRIMARY KEY (id_funcionario)
);

CREATE TABLE cantina(
id_cantina INT,
id_funcionario INT,
produto CHAR(100)
PRIMARY KEY (id_cantina),
FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario)
);

CREATE TABLE biblioteca(
id_biblioteca INT,
livro CHAR (200),
PRIMARY KEY (id_biblioteca)
);

CREATE TABLE professor(
id_prof INT,
nome CHAR (50),
PRIMARY KEY (id_prof)
);

CREATE TABLE aluno(
id_aluno INT,
nome CHAR (50),
data_nasc DATE,
PRIMARY KEY (id_aluno)
);

CREATE TABLE disciplina(
id_discipl INT,
nome CHAR (50),
PRIMARY KEY (id_discipl)
);



CREATE TABLE projeto(
id_proj INT,
nome CHAR (100),
data_inicio DATE,
data_termino DATE,
endereco CHAR (100)
PRIMARY KEY (id_proj)
);

CREATE TABLE prof_proj(
id_prof INT,
id_proj INT, 
FOREIGN KEY (id_prof) REFERENCES professor (id_prof),
FOREIGN KEY (id_proj) REFERENCES projeto (id_proj)
);

CREATE TABLE prof_turma(
id_prof INT,
id_turma INT,
FOREIGN KEY (id_prof) REFERENCES professor (id_prof),
FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE prof_disc(
id_prof INT,
id_discipl INT,
FOREIGN KEY (id_prof) REFERENCES  professor(id_prof),
FOREIGN KEY (id_discipl) REFERENCES disciplina(id_discipl)
);

CREATE TABLE proj_turma(
id_proj INT,
id_turma INT,
FOREIGN KEY (id_proj) REFERENCES projeto(id_proj),
FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);
CREATE TABLE disc_turma(
id_discipl INT,
id_turma INT,
FOREIGN KEY (id_discipl) REFERENCES disciplina(id_discipl),
FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);
CREATE TABLE colegio(
id_colegio INT,
endereco CHAR (50),
nome CHAR (50),
id_biblioteca INT,
id_Sala INT,
id_ban INT,
id_proj INT,
PRIMARY KEY (id_colegio)not null,
FOREIGN KEY (id_proj) REFERENCES projeto(id_proj),
FOREIGN KEY (id_biblioteca) REFERENCES biblioteca(id_biblioteca),

);
CREATE TABLE sala(
id_sala INT,
numero INT,
PRIMARY KEY (id_sala)
FOREIGN KEY (id_colegio) REFERENCES colegio(id_colegio),
);
CREATE TABLE turma(
id_turma INT,
id_aluno INT,
id_sala INT,
PRIMARY KEY (id_turma),
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_sala) REFERENCES sala(id_sala)
);
CREATE TABLE banheiro(
id_ban INT,
sexo CHAR(20),
PRIMARY KEY (id_ban),
FOREIGN KEY (id_colegio) REFERENCES colegio (id_colegio)

);


CREATE TABLE colegio_proj(
id_colegio INT,
id_proj INT,
FOREIGN KEY (id_proj) REFERENCES projeto(id_proj),
FOREIGN KEY (id_colegio) REFERENCES projeto(id_proj)
);