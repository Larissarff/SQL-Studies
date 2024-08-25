-- Prompt para pedir a IA um teste de exercícios:
-- Aja como um cientista da computação. Me dê uma lista de 10 queries para treinar meu SQL com queries práticas e comumente usadas no dia a dia do tratamento de dados.
-- Após isso, enviarei minhas respoats e corrija-as, me dê meu score e correções.

Vamos praticar com alguns exercícios para formar queries em SQL. Vou te dar os cenários e você pode tentar escrever as consultas. Depois, eu corrigo suas respostas.

Cenário 1: Tabela "Customers"
Suponha que você tenha uma tabela chamada Customers com as seguintes colunas:

CustomerID: Número inteiro, chave primária
FirstName: Texto
LastName: Texto
City: Texto
Country: Texto
Age: Número inteiro
Exercícios:
1. Selecione todos os registros da tabela Customers.
2. Selecione os nomes (FirstName e LastName) e as cidades (City) de todos os clientes que moram no país 'Brazil'.
3. Selecione todos os registros da tabela Customers onde a idade (Age) é maior que 30.
4. Conte quantos clientes existem na tabela Customers que vivem na cidade de 'São Paulo'.
5. Atualize a cidade (City) de todos os clientes que moram no país 'USA' para 'New York'.
6. Adicione um novo cliente à tabela Customers com os seguintes dados:
CustomerID: 101
FirstName: 'Carlos'
LastName: 'Silva'
City: 'Rio de Janeiro'
Country: 'Brazil'
Age: 28
7. Exclua todos os clientes da tabela Customers que têm menos de 18 anos.
8. Selecione os países distintos onde os clientes residem.
9. Selecione todos os registros da tabela Customers ordenados por LastName em ordem alfabética.
10. Selecione todos os clientes que moram no país 'Brazil' ou 'Argentina', e cuja idade é maior que 25.


  -- MINHAS RESPOSTAS:
1 - SELECT * FROM Customers;
2- SELECT FirstName, LastName, City FROM Customers WHERE Country = 'Brazil';
3- SELECT * FROM Customers WHERE Age > 30;
4- SELECT COUNT(CustomerID) FROM Customers WHERE City = 'São Paulo'; 
5- UPDATE Customers SET City = 'New York' WHERE Country = 'USA'
6- INSERT INTO Customers (CustomerID, FirstName, LastName, City, Country, Age) VALUES (101, 'Carlos', 'Silva', 'Rio de Janeiro', 'Brazil', 28); -- Colocar o nome das colunas mesmo preenchendo todas
7- DELETE FROM Customers WHERE Age < 18; -- DELETE não usa *
8- SELECT DISTINCT Country FROM Customers;
9- SELECT * FROM Customers ORDER BY LastName ASC;
10- SELECT * FROM Customers WHERE (Country = 'Brazil' OR Country = 'Argentina') AND (Age > 25);
-- meu score: 8/10 perfeitas, uma podia melhorar (6) e uma errada (7) 

-- IA Generativa como ferramenta útil para estudo próprio
