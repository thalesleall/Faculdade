-- Criando o objeto "tb_departamentos"
CREATE TABLE tb_departamentos(
cod_depto		INTEGER,
nm_depto		VARCHAR(40),
CONSTRAINT pk_tb_departamentos_cod_depto PRIMARY KEY(cod_depto)	
);

-- Criando o objeto "tb_empregados"
-- Restrição: PK associada a coluna "CPF"
--            FK associada a coluna "Cod_Depto"
--            NN associada a coluna "Cod_Depto"
CREATE TABLE tb_empregados(
cpf				VARCHAR(11),
nm_empregado	VARCHAR(60),
cod_depto		INTEGER CONSTRAINT nn_tb_empregados_cod_depto NOT NULL,
dt_lotacao		DATE,
CONSTRAINT pk_tb_empregados_cpf PRIMARY KEY(cpf),
CONSTRAINT fk_tb_empregados_cod_depto FOREIGN KEY(cod_depto)
	REFERENCES tb_departamentos(cod_depto)
);

-- Criando o objeto "tb_pessoas"
CREATE TABLE tb_pessoas(
rg			VARCHAR(11),
nm_pessoa	VARCHAR(60),
CONSTRAINT pk_tb_pessoas_rg PRIMARY KEY(rg)	
);

-- Criando o objeto "tb_automoveis"
CREATE TABLE tb_automoveis(
chassi			VARCHAR(17),
modelo			VARCHAR(10),
ano				INTEGER,
CONSTRAINT pk_tb_automoveis_chassi PRIMARY KEY(chassi)	
);

-- Criando o objeto "tb_posses"
CREATE TABLE tb_posses(
rg				VARCHAR(11),
chassi			VARCHAR(17),
dt_compra		DATE,
CONSTRAINT pk_tb_posses_chassi PRIMARY KEY(chassi),
CONSTRAINT fk_tb_posses_chassi FOREIGN KEY(chassi)
	REFERENCES tb_automoveis(chassi),
CONSTRAINT fk_tb_posses_rg FOREIGN KEY(rg)
	REFERENCES tb_pessoas(rg)
);

-- Criando o objeto "tb_empregados"
DROP TABLE tb_empregados CASCADE;

CREATE TABLE tb_empregados(
rg				VARCHAR(11),
nm_empregado	VARCHAR(60),
CONSTRAINT pk_tb_empregados_rg PRIMARY KEY(rg)	
);

-- Criando o objeto "tb_projetos"
CREATE TABLE tb_projetos(
codigo			INTEGER,
nm_projeto		VARCHAR(25),
CONSTRAINT pk_tb_empregados_codigo PRIMARY KEY(codigo)	
);

-- Criando o objeto "tb_participacoes"
CREATE TABLE tb_participacoes(
rg				VARCHAR(11),
codigo			INTEGER,
dt_inicio		DATE,
CONSTRAINT pk_tb_participacoes_rg_codigo PRIMARY KEY(rg, codigo),
CONSTRAINT fk_tb_participacoes_rg FOREIGN KEY(rg)
	REFERENCES tb_empregados(rg),
CONSTRAINT fk_tb_participacoes_codigo FOREIGN KEY(codigo)
	REFERENCES tb_projetos(codigo)
);


-- Criando o objeto "tb_empregados" a qual configura um auto-relacionamento
DROP TABLE tb_empregados CASCADE;

CREATE TABLE tb_empregados(
rg				VARCHAR(11),
nm_empregado	VARCHAR(60),
idade			INTEGER,
rg_gerente      VARCHAR(11),
CONSTRAINT pk_tb_empregados_rg PRIMARY KEY(rg),
CONSTRAINT fk_tb_empregados_rg_gerente FOREIGN KEY(rg_gerente)
	REFERENCES tb_empregados(rg)
);

-- Consultando a "tb_empregados"
SELECT *
FROM tb_empregados;

-- Realizando uma carga de dados na "tb_empregados"
INSERT INTO tb_empregados(rg, nm_empregado, idade, rg_gerente)
VALUES
('111', 'José Eduardo da Silva', 28, NULL),
('222', 'Gabriel Davi Freitas', 27, '111'),
('333', 'Raquel Guedes', 30, '111'),
('444', 'Marcela Gonçalves Lucas', 32, '333'),
('555', 'Ricardo da Silva Mendes', 30, '222');

-- Realizar um relatório para apresentar o nome dos empregados, juntamente
-- com os nomes dos seus respectivos gerentes
SELECT e.nm_empregado || ' trabalha para ' || g.nm_empregado "Quem trabalha para quem?"
FROM tb_empregados e
INNER JOIN tb_empregados g ON(e.rg_gerente = g.rg)
ORDER BY e.nm_empregado;

SELECT 'Nome do Empregado: ' || nm_empregado || 
       ' - Idade: ' || idade || 
	   ' - RG do Gerente: ' || rg_gerente "Frase Formada com Dados da table"
FROM tb_empregados
WHERE rg_gerente IS NOT NULL;


-- Criando o objeto "tb_clientes"
CREATE TABLE tb_clientes(
rg_cliente			VARCHAR(11),
nm_cliente			VARCHAR(60),
dt_nascimento		DATE,
CONSTRAINT pk_tb_clientes_rg_cliente PRIMARY KEY(rg_cliente)	
);

-- Criando o objeto "tb_bibliotecarias"
CREATE TABLE tb_bibliotecarias(
rg_bibliotecaria		VARCHAR(11),
nm_bibliotecaria		VARCHAR(60),
dt_nascimento			DATE,
CONSTRAINT pk_tb_bibliotecarias_rg PRIMARY KEY(rg_bibliotecaria)	
);

-- Criando o objeto "tb_livros"
CREATE TABLE tb_livros(
codigo				INTEGER,
ds_livro			VARCHAR(25),
ds_categoria		VARCHAR(25),
nm_livro			VARCHAR(25),
rg_cliente			VARCHAR(11),
dt_devolucao		DATE,
rg_bibliotecaria	VARCHAR(11),
CONSTRAINT pk_tb_livros_codigo PRIMARY KEY(codigo),
CONSTRAINT fk_tb_livros_rg_cliente FOREIGN KEY(rg_cliente)
	REFERENCES tb_clientes(rg_cliente),
CONSTRAINT fk_tb_livros_rg_biblio FOREIGN KEY(rg_bibliotecaria)
	REFERENCES tb_bibliotecarias(rg_bibliotecaria)
);
