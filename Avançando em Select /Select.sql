-- Operadores SQL
-- >, <, =, >=, <=
-- BETWEEN: seleção entre um intervalo
-- LIKE: obtemos seleção de padrôes.
-- IN: seleção entre valores específicos
-- WHERE: obtemos filtros específicos. WHERE id = 0;

-- Testes de estudo e exploração:
USE employees;

SELECT * FROM employees WHERE last_name = 'Koblick'; --  182 row(s) returned

SELECT * FROM employees WHERE emp_no = 491008; -- 1 row(s) returned

SELECT * FROM salaries WHERE salary >= 6000;  -- 2844047 row(s) returned

SELECT * FROM salaries WHERE salary <= 65000; -- 1660667 row(s) returned

SELECT * FROM salaries WHERE salary >= 155000; -- 7 row(s) returned

SELECT * FROM titles WHERE emp_no >= 11500; -- 441086 row(s) returned

-- Utilizando operadores lógicos para aumentar a eficiência do refino de pesquisa
SELECT * FROM titles WHERE emp_no >= 11500 || title = 'Staff'; -- 441646 row(s) returned

SELECT * FROM salaries WHERE salary >=15000 AND from_date > "1980-08-01"; -- 2844047 row(s) returned

-- Comando DISTINCT - retorna tudo que for diferente de <condição>

SELECT DISTINCT emp_no FROM employees; -- 300024 row(s) returned

SELECT DISTINCT gender FROM employees; -- 2 row(s) returned (M e F)

-- Saber quantos títulos/cargos a empresa tem
SELECT DISTINCT title FROM titles; -- 7 row(s) returned

