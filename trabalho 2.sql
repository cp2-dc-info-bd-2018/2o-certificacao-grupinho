

INSERT INTO colegio (id_col, nome, endereco)
Values (3444625634, 'Colégio Inovacionar', 'Duque de Caxias');

INSERT INTO cantina (id_can, produto, id_col)
Values (2435337746,'biscoito',3444625634);

INSERT INTO  biblioteca (id_bibli, livro, id_col)
Values (3256478567, 'Dezesseis Luas', 3444625634);

INSERT INTO  funcionarios (id_fun, id_bibli, id_can, nome, data_nasc, cargo)
Values (2364758635, 3256478567, 2435337746, 'Wilson', '12-03-1982', 'segurança');

INSERT INTO  professores (id_prof, nome, data_nasc)
Values (1425367483, 'Ana', '04-10-1989');

INSERT INTO  sala (id_sala, numero, id_col)
Values (5432876498, 14, 3444625634);

INSERT INTO turma (id_turma, id_sala)
Values(3425561726, 5432876498);

INSERT INTO disciplina (id_disc, nome)
Values (5563724561, 'Biologia');

INSERT INTO projeto (id_proj, nome, inicio, termino)
Values (4453625738, 'Porjeto verão', '17-09-2018', '28-09-2018');

INSERT INTO aluno (id_aluno, id_turma,  nome)
Values (6653725367, 3425561726, 'Maria Clara');

INSERT INTO banheiro (id_ban, id_col, sexo)
Values (546373652455, 3444625634, 'masculino');


