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

SELECT * FROM pessoas; -- Comando de exibir a tabela inteira ( "*" significa "ALL", para exibir todas as colunas da tabela)
-- execute

SELECT nome, cpf FROM pessoas;  -- Comando de exibir apenas as colunas desejadas, no caso, nome e cpf.

INSERT INTO pessoas VALUES ( 'Maria', '789576901', '15261237700', 10); 
-- Comando de inserção de dados na tabela omitindo as colunas, pois subentende-se que são em todas em ordem da primeira á ultima. 
-- SQL permite essa omissão em caso de preenchimento de todas as colunas

SELECT * FROM pessoas WHERE nome = "Maria";
-- Comando de refino de busca, utilizando WHERE podemos aplicar a pesquisa apenas quando na coluna nome estiver "Maria".

SET SQL_SAFE_UPDATES = 0;       -- SAFE UPDATE
UPDATE pessoas SET limite = 1;  -- Atualiza todas as linhas da coluna limite como 1
SELECT *FROM pessoas;           -- Imprime os dados na tabela

SET SQL_SAFE_UPDATES = 0;                                -- SAFE UPDATE 
UPDATE pessoas SET limite = 100 WHERE nome = 'Larissa';  -- Atualiza o numero de limite para 100 quando o nome = Larissa
SELECT nome, limite FROM pessoas WHERE nome = 'Larissa'; -- Mostra a tabela nas colunas nome e limite quando o nome = Larissa
