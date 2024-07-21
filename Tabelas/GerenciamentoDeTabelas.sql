CREATE DATABASE teste_de_dados;

-- TIPO DE DADOS EM UMA COLUNA:
-- forma de classificação de dados para serem inseridos em uma coluna
-- Tipos: data, número, texto e espacial

USE teste_de_dados;
CREATE TABLE produtos (nome VARCHAR(50), sku CHAR(5), informacoes MEDIUMTEXT);
-- CHAR = textos de 0 a 255 caracteres (texto, numeros, caracteres especiais)
-- VARCHAR = textos de 0 a 65535 caracteres (texto, numeros, caracteres especiais)
-- TINYTEXT = apenas textos até 255 caracteres
-- MEDIUMTEXT = apenas textos com até 16777215
-- textos inserimos entre aspas!

CREATE TABLE cadastro (nome VARCHAR(100), sobrenome VARCHAR(100));

-- INSERIR DADOS NAS TABELAS:
INSERT INTO cadastro (nome, sobrenome) VALUES ("Larissa", "Ferreira");

-- MOSTRAR DADOS NAS TABELAS:
SELECT * FROM cadastro;

-- TIPOS NUMÉRICOS:
-- BIT(X); = 1 a 64 caracteres
-- TINYINT(X); = 1 a 255 caracteres
-- BOOL = 0 é falso, demais valores são verdadeiros
-- INT(x) = valores negativos e positivos numéricos (de -2147483648 á 2147483648)

CREATE TABLE servidores (nome VARCHAR(50), espaco_disco INT(10), ligado BOOL);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ('máquina 1', 12345567, 0);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ('máquina 2', 76543211, 1);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ('máquina 3', 98989898, 1);
INSERT INTO servidores (nome, espaco_disco, ligado) VALUES ('máquina 4', 12121212, 0);

SELECT * FROM servidores;

-- SELECIONAR DADOS DO TIPO DATA
-- DATE = data do tipo YYYY-MM-DD
-- DATETIME = data com horário do tipo: YYYY-MM-DD hh:mm:ss;
-- TIMESTAMP = uma data no formato DATETIME, mas apenas para anos entre 1970 e 2038
-- datas inserimos entre aspas!

USE teste_de_dados;
CREATE TABLE aniversarios (nome VARCHAR(100), data_ DATE);
INSERT INTO aniversarios (nome, data_ ) VALUES ('Larissa', '2004-10-30');
INSERT INTO aniversarios (nome, data_ ) VALUES ('Rodrigo', '2003-07-27');

SELECT * FROM aniversarios;

-- ADICIONAR UMA NOVA COLUNA:
ALTER TABLE aniversarios ADD COLUMN signo VARCHAR(34);
INSERT INTO aniversarios (nome, data_, signo) VALUES ('Larissa', '2004-10-30', 'escorpiao');
SELECT * FROM aniversarios;

-- EXCLUINDO COLUNAS

ALTER TABLE aniversarios DROP COLUMN signo;
SELECT * FROM aniversarios;

-- ALTERAR COLUNAS:

ALTER TABLE aniversarios MODIFY COLUMN data_ DATETIME;
SELECT * FROM aniversarios;

-- DELETAR LINHAS:

DELETE FROM aniversarios WHERE nome = 'Larissa';
SELECT * FROM aniversarios;

