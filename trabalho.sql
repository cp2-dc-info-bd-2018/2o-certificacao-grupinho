USE [Inovacionar ]

 

CREATE TABLE colegio(

id_col INT,

endereco CHAR (50),

nome CHAR (50),

PRIMARY KEY (id_colegio)

);

CREATE TABLE cantina(

id_can INT,

id_col INT,

produto CHAR(100)

PRIMARY KEY (id_can),

FOREIGN KEY (id_col) REFERENCES colegio (id_col) not null

);
CREATE TABLE biblioteca(

id_bibli INT,
id_col,

livro CHAR (200),

PRIMARY KEY (id_bibli),
FOREIGN KEY (id_col) REFERENCES colegio(id_col) not null 
)

);

CREATE TABLE funcionarios(

id_fun INT,
id_can INT,
id_bibli INT,

USE [Colégio_Inovacionar ]

 

CREATE TABLE colegio(

id_col INT,

endereco CHAR (50),

nome CHAR (50),

PRIMARY KEY (id_colegio)not null,

);

CREATE TABLE cantina(

id_can INT,

id_col INT,

produto CHAR(100)

PRIMARY KEY (id_can),

FOREIGN KEY (id_fun) REFERENCES funcionarios (id_fun)

);
CREATE TABLE biblioteca(

id_bibli INT,
id_col,

livro CHAR (200),

PRIMARY KEY (id_bibli),
FOREIGN KEY (id_col) REFERENCES colegio(id_col) not null 
)

);

CREATE TABLE funcionarios(

id_fun INT,
id_can INT,
id_bibli INT,

nome CHAR(50),

cargo CHAR (50),

PRIMARY KEY (id_fun),
FOREIGN KEY (id_can) REFERENCES cantina (id_can),
FOREIGN KEY (id_bibli) REFERENCES biblioteca (id_bibli)


);

 

CREATE TABLE professores(

id_prof INT,

nome CHAR (50),
data_nasc DATE,

PRIMARY KEY (id_prof)

);

CREATE TABLE sala(

id_sala INT,

numero INT,
id_col INT,

PRIMARY KEY (id_sala),

FOREIGN KEY (id_col) REFERENCES colegio(id_col)not null

);

 

CREATE TABLE turma(

id_turma INT,

id_sala INT,

PRIMARY KEY (id_turma),

FOREIGN KEY (id_sala) REFERENCES sala(id_sala) not null 

);

 

CREATE TABLE disciplina(

id_disc INT,

nome CHAR (50),

PRIMARY KEY (id_disc)

);

 

 

 

CREATE TABLE projeto(

id_proj INT,

nome CHAR (100),

inicio DATE,

termino DATE,

PRIMARY KEY (id_proj),
FOREIGN KEY(id_col) REFERENCES colegio(id_col)

);

    

CREATE TABLE prof_proj(

id_prof INT,

id_proj INT,
PRIMARY KEY (id_prof, id_proj), 

FOREIGN KEY (id_prof) REFERENCES professores(id_prof),

FOREIGN KEY (id_proj) REFERENCES projeto (id_proj)

);

 

CREATE TABLE prof_turma(

id_prof INT,

id_turma INT,
PRIMARY KEY (id_prof, id_turma),

FOREIGN KEY (id_prof) REFERENCES professores (id_prof),

FOREIGN KEY (id_turma) REFERENCES turma(id_turma)

);

 

CREATE TABLE prof_disc(

id_prof INT,

id_disc INT,
PRIMARY KEY (id_ prof, id_disc),

FOREIGN KEY (id_prof) REFERENCES  professores(id_prof),

FOREIGN KEY (id_disc) REFERENCES disciplina(id_disc)

);

 

CREATE TABLE proj_turma(

id_proj INT,

id_turma INT,
PRIMARY KEY (id_proj, id_turma)

FOREIGN KEY (id_proj) REFERENCES projeto(id_proj),

FOREIGN KEY (id_turma) REFERENCES turma(id_turma)

);

CREATE TABLE disc_turma(

id_disc INT,

id_turma INT,
PRIMARY KEY (id_disc, id_turma),

FOREIGN KEY (id_disc) REFERENCES disciplina(id_disc),

FOREIGN KEY (id_turma) REFERENCES turma(id_turma)

);

 

CREATE TABLE aluno(

id_aluno INT,

nome CHAR (50),
id_turma INT,

PRIMARY KEY (id_aluno),
FOREIGN KEY (id_turma) REFERENCES turma (id_turma) not null 

);

 

CREATE TABLE banheiro(

id_ban INT,

sexo CHAR(20),

PRIMARY KEY (id_ban),

FOREIGN KEY (id_col) REFERENCES colegio (id_col)

 

);

CREATE TABLE col_proj(

id_col INT,

id_proj INT,

FOREIGN KEY (id_proj) REFERENCES projeto(id_proj),

FOREIGN KEY (id_col) REFERENCES projeto(id_proj)

);

 