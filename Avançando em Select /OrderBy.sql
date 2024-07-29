-- ORDER BY é uma instrução para ordenação de resultados. Tpo ascendente (ASC) e descrescente (DESC)

SELECT * FROM salaries ORDER BY salary DESC; 
-- ordena de forma decrescente os saláros presentes na tabela salaries

-- EXERCÍCO:
-- Selecionar a tabela titles em todas as colunas, ordenando os títulos por ordem descrescente

SELECT * FROM titles ORDER BY title DESC;

-- LIMIT: limta o numero de resultados

SELECT * FROM salaries ORDER BY salary DESC LIMT 10;
-- Selecionando os 10 maiores salários da empresa 

 
SELECT * FROM employees ORDER BY hire_date DESC LIMIT 10;
-- Selecionando os 10 funcionários com a data de admissão "maior", ou seja, mais recente. Desse modo, se pode seleciona-los para receber um email de boas vindas por exemplo :)


SELECT * FROM employees WHERE gender = 'F' ORDER BY hire_date DESC LIMIT 5;
-- Selecionando as 5 mulheres mais novas da empresa.

