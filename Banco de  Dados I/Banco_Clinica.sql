--Criando o primeiro objeto "tb_especialidades"
--Restrição: PK aplicada a coluna "cod_especialidade"
CREATE TABLE tb_especialidades(
cod_especialidade	INTEGER,
ds_especialidade	VARCHAR(40),
CONSTRAINT pk_tb_esp_cod_esp PRIMARY KEY(cod_especialidade)
);

SELECT *
FROM tb_especialidades;

INSERT INTO tb_especialidades(cod_especialidade, ds_especialidade)
VALUES
(1, 'Ortopedia'),
(2, 'Cardiologia'),
(3, 'Pediatria'),
(4, 'Clínico Geral'),
(5, 'Oftalmologia');