-- Funções são blocos de código reutilizáveis, são úteis para agilidade e limpeza do código
-- MAX = retorna o maior valor de uma coluna
-- Função MAX substitui SELECT coluna FROM tabela ORDER BY coluna DESC LIMIT 1;
-- SELECT MIN (<coluna>) DFROM <tabela>;


-- Ambas retornam o menor salário:
SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT MIN(salary) FROM salaries;

-- Ambas retornam o maior salário:
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;
SELECT MAX(salary) AS maior_salario FROM salaries;

-- Traz o numero de resultados que se combinam com a querie e adciona em uma coluna "mulheres"
SELECT COUNT(*) AS mulheres FROM employees WHERE gender = 'F';  -- results:120051

-- FUNÇÃO AVG: traz a media daquele filtro
SELECT AVG(salary) AS media FROM salaries WHERE salary > 100000;
-- cria uma nova coluna "media" onde traz a media dos salários maiores que 100.000

--FUNÇÃO SUM: retorna a soma dos valores do fltro
SELEC SUM(salary) FROM salaries;  -- Soma de todos os valores da coluna salario

SELECT SUM(salary) FROM salaries ORDER BY salary DESC LIMIT 5; -- # NAO FUNCIONA com ORDER BY LIMIT
SELECT SUM(salary) FROM salaries WHERE salary > 100000;        -- Esse sim filtra correto

-- Operador LIKE 
SELECT * FROM employees WHERE first_name LIKE %ber%;
-- selecione em todas as colunas da tabela employees todos os dado squando a coluna first_name tiver dados que contém "ber"
-- ex: pessoas com nome bernardo, roberta, etc. terão todas as suas colunas exbidas.

USE employees;
SELECT COUNT(*) AS mulheres FROM employees WHERE gender = 'F' AND birth_date > '1990-02-01';

-- O numero de mulheres que fazem aniversário depois de 01/02/1990 expresso em uma coluna (mulheres).
