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