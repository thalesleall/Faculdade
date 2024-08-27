SELECT *
FROM tb_tipos_produtos

DESCRIBE tb_produtos;

INSERT INTO tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
VALUES(1,1, 'Modern Science', 'A description of modern science', 19.95,1);

INSERT INTO tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
VALUES(2,1,'Chemistry', 'Introduction to Chemistry', 30, 1);

INSERT INTO tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
VALUES(3, 2, 'Supernova', 'A star explodes', 25.99, 1);

INSERT INTO tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
VALUES(4, 2, 'Tank War', 'Action movie about a future war', 13.95,1);

COMMIT;

DESCRIBE tb_compras;

INSERT INTO tb_compras(id_cliente, id_produto, quantidade, fg_ativo)
VALUES(1, 1, 1, 1);

INSERT INTO tb_compras(id_cliente, id_produto, quantidade, fg_ativo)
VALUES(2, 1, 3, 1);

INSERT INTO tb_compras(id_cliente, id_produto, quantidade, fg_ativo)
VALUES(1, 4, 1, 1);

INSERT INTO tb_compras(id_cliente, id_produto, quantidade, fg_ativo)
VALUES(2, 2, 1, 1);

INSERT INTO tb_compras(id_cliente, id_produto, quantidade, fg_ativo)
VALUES(1, 3, 1, 1);

COMMIT;

DESCRIBE tb_funcionarios

INSERT INTO tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
VALUES(1, NULL, 'James', 'Smith', 'CEO', 8000.00, 1);

INSERT INTO tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
VALUES(2, 1, 'Ron', 'Johnson', 'Sales Manager', 6000.00, 1);

INSERT INTO tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
VALUES(3, 2, 'Fred', 'Hobbs', 'Salesperson', 1500.00, 1);

INSERT INTO tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
VALUES(4, 2, 'Susan', 'Jones', 'Salesperson', 5000.00, 1);

COMMIT;

DESCRIBE tb_grades_salarios;

INSERT INTO tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
VALUES(1, 1, 2500.00, 1);

INSERT INTO tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
VALUES(2, 2500.01, 5000.00, 1);

INSERT INTO tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
VALUES(3, 5000.01, 7500.00, 1);

INSERT INTO tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
VALUES(4, 7500.01, 9999.99, 1);

COMMIT;

UPDATE tb_funcionarios
SET nome = 'Junior';
-- sem o where irá para todas as tuplas

SELECT *
FROM tb_funcionarios

ROLLBACK -- para voltar ao ultimo commit

UPDATE tb_clientes
SET nome = 'Junior';
WHERE id_cliente = 2;

SELECT *
FROM tb_clientes;

ROLLBACK;
