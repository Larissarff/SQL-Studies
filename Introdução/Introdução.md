# Conceitos teóricos importantes
### O que é SQL 
Struture Query Language (SQL) é uma linguagem utilizada para bancos de dados relacionais
 - Bancos de dados relacionais: MySQL, PostgreSQL, SQL Server.
  
SQL - Linguagem estruturada de consulta - é pautada em Queries (INSERT, UPDATE, SELECT);
 - Sua grande finalidade é criar e manipular bancos de dados.

### SQL X MySQL 
SQL é a `linguagem` e MySQL é o `Sistema Gerenciador de Banco de Dados - SGBD`

### O que é um banco de dados:
Onde armazenamos dados no nosso sistema
- são criados por meio do `SQL`.
- `MySQL` nos permite gerenciar.
- Bancos de dados possuem entidades fundamentais como tabelas.
- As tabelas guardam os `dados` em categorias.
- `Colunas` estão presentes nas tabelas e contém os tipos de informações.
- `Diagrama do Banco`: é o projeto do banco, presente em projetos profissionais, como uma documentação e planejamento.

# Como instalar MySQL Atualizado:

Será o passo a passo para a instalação em windows.
Buscar MySQL no google, em instalação para windows como:
         
         - https://www.mysql.com/downloads/
clicar em ``MySQL Communit (GPL) Downloads >>`` e seguirá para uma tela com possibilidades de download para diferentes casos, 
eu optei pelo `MySQL Installer for Windows`

- Prefira a segunda opção de Download por ser mais completa, a `Windows (x86, 32-bit), MSI Installer`
- se não quiser criar a conta de cara, clique em "No thanks, just start my download" e prossiga

### Opções para escolher para o setup 
- optar pelo `Developer Default`
- seguir e instalar os produtos indicados clicando em `execute`
### Type and Networking 
- Após a instalação, se atentar á porta de conectividade, que não pode trazer conflito com ourtras portas ja usadas no dispositivo,
- mas dê preferência á porta padrão `3306`
- Deve-se criar sua conta, cadastrando um novo usuário, ou apenas incluir a  conta que você já possua.

### Instalei com o auxílio do passo a passo da alura: 
    - https://www.alura.com.br/artigos/mysql-instalacao-configuracao?utm_term=&utm_campaign=%5BSearch%5D+%5BPerformance%5D+-+Dynamic+Search+Ads+-+Artigos+e+Conte%C3%BAdos&utm_source=adwords&utm_medium=ppc&hsa_acc=7964138385&hsa_cam=11384329873&hsa_grp=164240702375&hsa_ad=703853654617&hsa_src=g&hsa_tgt=aud-527303763294:dsa-2276348409543&hsa_kw=&hsa_mt=&hsa_net=adwords&hsa_ver=3&gad_source=1&gclid=Cj0KCQjw1qO0BhDwARIsANfnkv9wxxTB7vIyxwwZnuq9GlQk7Yr5GFrp6xfxnkTKdKv9iPKOnoQeyhcaAgc7EALw_wcB#instalando-no-windows

### Comandos utéis para MySQL    
![image](https://github.com/Larissarff/SQL-Studies/assets/164913651/a5984a03-d181-4740-a099-c75374b6a6b3)

### SQL Workbench 
Uma 

### Buscar a pasta bin
Vá nos arquivos do computador no caminho:
      
        - C:\Program Files\MySQL\MySQL Server 8.0\bin
Ou no caminho que você encontre sua pasta bin e copie esse caminho.

Após isso, clique no ícone do windows do teclado e busque "editar variáveis do sistema" >
vá em Avançado > 
variáveis de ambiente >
variáveis de uso > 
pasta Path e dê dois cliques > 
clique em Novo e adicione o caminho da pasta bin que copiamos anteriormente e salve.

Abra o seu terminal, eu utilizei o power shell e escreva:
       
       - mysql --version
Veja se a saída é algo como:

     - C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe  Ver 8.0.38 for Win64 on x86_64 (MySQL Community Server - GPL)

Se sim, a instalação está ok! Se não, busque refazer o passo anterior de modificar as variáveis do sistema.




