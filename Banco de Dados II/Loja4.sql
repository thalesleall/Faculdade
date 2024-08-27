SELECT nm_produto, preco, preco + 2.00
FROM tb_produtos;

DESCRIBE dual;

SELECT * 
FROM dual;

SELECT preco, preco * 2 DOBRO_PREÇO
FROM tb_produtos;

SELECT preco, preco * 2 "Dobro do Preço"
FROM tb_produtos;

SELECT nome || '' || sobrenome AS "Nome do Cliente"
FROM tb_clientes;


SELECT nome || '' || sobrenome AS "Nome do Cliente"
FROM tb_clientes;


SELECT 'O funcionario ' || nome || ' ' || sobrenome || ' recebe o salario de R$' || salario || ' mas gosstaria de receber R$' || salario * 3 "Salario dos sonhos"
FROM tb_funcionarios;


SELECT *
FROM tb_funcionarios


SELECT id_cliente, nome, sobrenome, telefone
FROM tb_clientes
WHERE telefone IS NULL

SELECT id_cliente, nome, sobrenome,
NVL(telefone, 'Número do telefone desconhecido') AS Número_Telefone
FROM tb_clientes;

SELECT id_cliente, nome, sobrenome,
    NVL(dt_nascimento, '22/JUN/2013') AS "Data de Nascimento"
FROM tb_clientes;


SELECT nome, LENGTH(nome) "expressao1",
       sobrenome, LENGTH(sobrenome)"expressao2",
       NULLIF(LENGTH(nome),LENGTH(sobrenome)) "resultado"
FROM tb_funcionarios;


--Para outros sgbd além do oracle
SELECT nome, sobrenome,
    COALESCE(TO_CHAR(DT_NASCIMENTO), TO_CHAR('data inexistente')) "Exemplo COALESCE"
FROM tb_clientes;

SELECT DISTINCT id_cliente
FROM tb_compras;

SELECT id_produto, nm_produto
FROM tb_produtos
WHERE id_produto > 2;


SELECT id_produto, nm_produto
FROM tb_produtos
WHERE ROWNUM <= 3;

SELECT * 
FROM tb_clientes
WHERE id_cliente > ANY (2, 3, 4);


SELECT *
FROM tb_clientes
WHERE nome LIKE'_o%';


SELECT *
FROM tb_clientes
WHERE nome LIKE'%a';

SELECT *
FROM tb_clientes
WHERE nome LIKE'J%';

SELECT * 
FROM tb_clientes
WHERE nome LIKE '____';

commit;
