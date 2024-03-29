
--  Criando o database nomeado de "UNIFACEF_05_03_24"
CREATE DATABASE "UNIFACEF_05_03_24"
TEMPLATE = template0
ENCODING 'UTF-8'
CONNECTION LIMIT 100; 

---É aqui que vamos criar os objetos a partir do DER Lógico


-- Criando o 1º objeto do tipo table nomeado de "tb_curso"
-- Restrição: PK aplicado a coluna "cod_curso"
--DDL
CREATE TABLE tb_curso(
cod_curso			INTEGER,
nm_curso			VARCHAR(40),
CONSTRAINT pk_tb_curso_cod_curso PRIMARY KEY(cod_curso)
);

-- DQL
SELECT *
FROM tb_curso;

-- DML
INSERT INTO tb_curso (cod_curso, nm_curso)
VALUES
(1, 'Engenharia de Software'),
(2, 'Ciência da Computação'),
(3, 'Sistemas de Informação'),
(4, 'Administração'),
(5, 'Ciências Médicas');

-- Criando o 2º objeto - "tb_aluno"
-- Restrição: PK aplicada a coluna "cod_aluno"
--            FK aplicada a coluna "cod_curso"
CREATE TABLE tb_aluno(
cod_aluno			INTEGER,
cod_curso			INTEGER,
nm_aluno			VARCHAR(60),
CONSTRAINT pk_tb_aluno_cod_aluno PRIMARY KEY(cod_aluno),
CONSTRAINT fk_tb_aluno_cod_curso FOREIGN KEY(cod_curso) 
	REFERENCES tb_curso(cod_curso)
);

-- Criando o 3º objeto - "tb_departamento"
-- Restrição: PK apliacada a coluna "cod_departamento"
CREATE TABLE tb_departamento(
cod_departamento		INTEGER,
nm_departamento			VARCHAR(40),
CONSTRAINT pk_tb_depto_cod_depto PRIMARY KEY(cod_departamento)	
);

-- Criando o 4º objeto - "tb_disciplina"
-- Restrição: PK aplicada a coluna "cod_disciplina"
--            FK aplicada a coluna "cod_departamento"
CREATE TABLE tb_disciplina(
cod_disciplina			INTEGER,
cod_departamento		INTEGER,
nm_disciplina			VARCHAR(40),
credito					INTEGER,
CONSTRAINT pk_tb_disciplina_cod_disciplina PRIMARY KEY(cod_disciplina),
CONSTRAINT fk_tb_disciplina_cod_depto FOREIGN KEY(cod_departamento)
	REFERENCES tb_departamento(cod_departamento)
);

-- Criando o 5º objeto - "tb_grade"
-- Restrição: PK composta aplicada as colunas "cod_curso + cod_disciplina"
--            FK aplicada a coluna "cod_curso"
--            FK aplicada a coluna "cod_disciplina"
CREATE TABLE tb_grade(
cod_curso			INTEGER,
cod_disciplina		INTEGER,
CONSTRAINT pk_tb_grade_cod_curso_cod_disc 
	PRIMARY KEY(cod_curso, cod_disciplina),
CONSTRAINT fk_tb_grade_cod_curso FOREIGN KEY(cod_curso)
	REFERENCES tb_curso(cod_curso),
CONSTRAINT fk_tb_grade_cod_disciplina FOREIGN KEY(cod_disciplina)
	REFERENCES tb_disciplina(cod_disciplina)
);

-- Criando o 6º objeto - "tb_pre_requisito"
-- Restrição: PK composta aplicada as colunas "cod_disciplina_liberada + cod_disciplina_liberadora"
--            FK aplicada a coluna "cod_disciplina_liberada"
--            FK aplicada a coluna "cod_disciplina_liberadora"
CREATE TABLE tb_pre_requisito(
cod_disciplina_liberada			INTEGER,
cod_disciplina_liberadora		INTEGER,
CONSTRAINT pk_tb_pre_requisito_liberada_liberadora 
	PRIMARY KEY(cod_disciplina_liberada, cod_disciplina_liberadora),
CONSTRAINT fk_tb_pre_requisito_liberada FOREIGN KEY(cod_disciplina_liberada)	
	REFERENCES tb_disciplina(cod_disciplina),
CONSTRAINT fk_tb_pre_requisito_liberadora FOREIGN KEY(cod_disciplina_liberadora)
	REFERENCES tb_disciplina(cod_disciplina)
);


