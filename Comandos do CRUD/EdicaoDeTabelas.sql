-- C - create/inserir dados (INSERT)
-- R - read/ler dados (SELECT)
-- U - update/atualizar dados (UPDATE)
-- D - delete/ remover dados (DELETE)

-- EXERCÍCIO: 
-- CRIAR UMA DATABASE CHAMADA cadastro, CRIAR UMA TABELA CHAMADA pessoas COM COLUNAS: nome, cpf, rg e limite.
-- nome, cpf e rg como dados texto e limite como dado numérico
-- insira 5 dados.

CREATE DATABASE cadastro;
-- execute

USE cadastro;
CREATE TABLE pessoas (nome VARCHAR(80), rg VARCHAR(11), cpf VARCHAR(11), limite TINYINT);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ( 'Larissa', '258376901', '18851767700', 5);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ( 'Cintia', '245456901', '18854544700', 6);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ( 'Marcelo', '828276901', '18858692700', 7);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ( 'Rodrigo', '636376901', '18851258700', 8);
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ( 'Juraci', '858576901', '15261767700', 9);
-- execute

SELECT * FROM cadastro.pessoas;
-- execute
