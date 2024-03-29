--Criando a table "tb_empregados"
CREATE TABLE tb_empregados(
rg				VARCHAR(11),
nm_empregado	VARCHAR(60),
idade			INTEGER,
CONSTRAINT pk_tb_empregados_rg PRIMARY KEY(rg)
);

-- Criando a table "tb_pedidos"
CREATE TABLE tb_pedidos(
nr_pedido				INTEGER,
ds_pedido				VARCHAR(15),
dt_pedido				DATE,
CONSTRAINT pk_tb_pedidos_nr PRIMARY KEY(nr_pedido)
);

-- Criando a table "tb_itens", ora representando a entidade "fraca"
CREATE TABLE tb_itens(
nr_pedido 			INTEGER,
nr_item 			INTEGER,
nm_produto			VARCHAR(25),
quantidade			INTEGER,
CONSTRAINT pk_tb_itens_nr_pedido_nr_item PRIMARY KEY(nr_pedido, nr_item),
CONSTRAINT fk_tb_itens_nr_pedido FOREIGN KEY(nr_pedido)
	REFERENCES tb_pedidos(nr_pedido)
);

--Removendo a table "tb_empregados"
DROP TABLE tb_empregados CASCADE;

--Recriando a table "tb_empregados"
CREATE TABLE tb_empregados(
rg					VARCHAR(11),
nm_empregado		VARCHAR(60),
plano_saude			VARCHAR(15),
rua					VARCHAR(25),
numero				VARCHAR(5),
cidade				VARCHAR(25),
CONSTRAINT pk_tb_empregados_rg PRIMARY KEY(rg)
);

--Criando a table "tb_telefones"
CREATE TABLE tb_telefones(
rg					VARCHAR(11),
nr_telefone 		VARCHAR(15),
CONSTRAINT pk_tb_telefones_rg_nr PRIMARY KEY(rg, nr_telefone),
CONSTRAINT fk_tb_telefones_rg FOREIGN KEY(rg)
		REFERENCES tb_empregados(rg)
);

--Criando a table "tb_servidores"
CREATE TABLE tb_servidores(
cpf				VARCHAR(11),
nm_servidor		VARCHAR(60),
CONSTRAINT pk_tb_servidores_cpf PRIMARY KEY(cpf)
);


--Criando a table "tb_funcionarios"
CREATE TABLE tb_funcionarios(
cpf 			VARCHAR(11),
ds_funcao		VARCHAR(15),
CONSTRAINT pk_tb_funcionarios_cpf PRIMARY KEY(cpf),
CONSTRAINT fk_tb_funcionarios_cpf FOREIGN KEY(cpf)
	REFERENCES tb_servidores(cpf)
);

-- Criando a table "tb_professores"

CREATE TABLE tb_professores(
cpf 				VARCHAR(11),
ds_titulacao		VARCHAR(15),
ds_categoria		VARCHAR(15),
CONSTRAINT pk_tb_professores_cpf PRIMARY KEY(cpf),
CONSTRAINT fk_tb_professores_cpf FOREIGN KEY(cpf)
	REFERENCES tb_servidores(cpf)
);

--------------------------------------------------

--Criando a table "tb_pessoas"
CREATE TABLE tb_pessoas(
codigo				INTEGER,
nm_pessoa			VARCHAR(60),
CONSTRAINT pk_tb_pessoas_codigo PRIMARY KEY(codigo)
);

--Criando a table "tb_cnh"
CREATE TABLE tb_cnh(
numero 				INTEGER,
dt_expedicao		DATE,
dt_validade			DATE,
categoria			VARCHAR(5),
codigo				INTEGER CONSTRAINT nm_tb_cnh_codigo NOT NULL
							CONSTRAINT uq_tb_cnh_codigo	UNIQUE,
dt_retirada			DATE,
CONSTRAINT pk_tb_cnh_numero PRIMARY KEY(numero),
CONSTRAINT fk_tb_cnh_codigo FOREIGN KEY(codigo)
	REFERENCES tb_pessoas(codigo)
);


----------------------------------------------------------
--Criando a table "tb_homens"
CREATE TABLE tb_homens(
rg				VARCHAR(11),
nm_homem		VARCHAR(60),
CONSTRAINT pk_tb_homens_rg PRIMARY KEY(rg)
);
--Criando a table "tb_mulheres"
CREATE TABLE tb_mulheres(
rg				VARCHAR(11),
nm_mulher		VARCHAR(60),
CONSTRAINT pk_tb_mulheres_rg PRIMARY KEY(rg)
);

--Criando a table "tb_casamentos"
CREATE TABLE tb_casamentos(
rg_homem		VARCHAR(11),
rg_mulher		VARCHAR(11) CONSTRAINT uq_tb_casamentos_rg_mulher UNIQUE,
dt_casamento	DATE,
CONSTRAINT pk_tb_casamentos_rg_homem PRIMARY KEY(rg_homem),
CONSTRAINT fk_tb_casamentos_rg_homem FOREIGN KEY(rg_homem)
	REFERENCES tb_homens(rg),
CONSTRAINT fk_tb_casamentos_rg_mulher FOREIGN KEY(rg_mulher)
	REFERENCES tb_mulheres(rg)
)

