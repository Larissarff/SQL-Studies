-- Funções são blocos de código reutilizáveis, são úteis para agilidade e limpeza do código
-- MAX = retorna o maior valor de uma coluna
-- Função MAX substitui SELECT coluna FROM tabela ORDER BY coluna DESC LIMIT 1;
-- SELECT MIN (<coluna>) DFROM <tabela>;


-- #Função MIN = Ambas retornam o menor salário:
SELECT salary FROM salaries ORDER BY salary DESC LIMIT 1;
SELECT MIN(salary) FROM salaries;

-- #Função MAX = Ambas retornam o maior salário:
SELECT salary FROM salaries ORDER BY salary ASC LIMIT 1;
SELECT MAX(salary) AS maior_salario FROM salaries;

-- #Função COUNT =Traz o numero de resultados que se combinam com a querie e adciona em uma coluna "mulheres"
SELECT COUNT(*) AS mulheres FROM employees WHERE gender = 'F';  -- results:120051

-- #FUNÇÃO AVG: traz a media daquele filtro
SELECT AVG(salary) AS media FROM salaries WHERE salary > 100000;
-- cria uma nova coluna "media" onde traz a media dos salários maiores que 100.000

-- #FUNÇÃO SUM: retorna a soma dos valores do fltro
SELECT SUM(salary) FROM salaries;  -- Soma de todos os valores da coluna salario

SELECT SUM(salary) FROM salaries ORDER BY salary DESC LIMIT 5; -- # NAO FUNCIONA com ORDER BY LIMIT
SELECT SUM(salary) FROM salaries WHERE salary > 100000;        -- Esse sim filtra correto

-- #Operador LIKE 
SELECT * FROM employees WHERE first_name LIKE %ber%;
-- selecione em todas as colunas da tabela employees todos os dado squando a coluna first_name tiver dados que contém "ber"
-- ex: pessoas com nome bernardo, roberta, etc. terão todas as suas colunas exbidas.

USE employees;
SELECT COUNT(*) AS mulheres FROM employees WHERE gender = 'F' AND birth_date > '1990-02-01';
-- O numero de mulheres que fazem aniversário depois de 01/02/1990 expresso em uma coluna (mulheres).

-- #Função IN = considera um conjunto de opções de exigencias

SELECT * FROM departments WHERE dept_no IN ('d004', 'd005');
-- Seleciona todas as colunas da database departments que tenham na coluna dept_no o indicator do numero dos departamentos d004 e d005
USE employees;
SELECT * FROM employees WHERE last_name IN ('Facello', 'Peac');
-- Seleciona todas as informações da tabela employees quando o sobrenome for Facello ou Peac

--  #Função BETWEEN = considera um intervalo propriamente dito de exigências, como em um espectro.
SELECT * FROM departments WHERE dept_no BETWEEN 'd004' AND 'd007';
-- selecionar todos os departamentos que etão na tabela departments e dentro do intervalo d004 á d007

-- EX: Uma querie que retorne o intervalo de salários entre 125000 e 175000 dentro da tabela salaries:
SELECT * FROM salaries WHERE salary BETWEEN '125000' AND '175000'; -- 3836 row(s) returned

-- #Função ALIAS = renomear uma coluna ou criar uma coluna com o nome X para expor o resultado de uma querie:
SELECT SUM(salary) AS soma_salario FROM salaries;
-- cria uma coluna chamada 'soma_salarios' com o somatório dos salários da tabela.

SELECT dept_no AS 'Numero do Departamento', dept_name AS department_name FROM employees.departments;
-- Seleciona da coluna dept_no o numero do departamento e imprime em uma nova coluna "Nome do Departamento", também
-- pôe a coluna dept_name, vinda da database employees e tabela departments, renomeada como department_name e imprime-as lado a lado.
