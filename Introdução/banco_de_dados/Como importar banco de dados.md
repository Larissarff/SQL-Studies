### Importar banco de dados pelo VSCODE

1º- baixar o banco, colocar numa pasta e abrir no vscode
2º- Selecione o arquivo no "explorer" do vscode, no lado esquerdo, e clique com o botão direito e selecione "Open in integraded terminal"
3º- Faça os seguintes comandos:

- Para realizar a conexão com MySQL:

       mysql -u root

- Para criar a base de dados empresa:

          CREATE empresa;
- Para verificar se foi criada

         SHOW DATABASES;
- Para usar a database criada:

         USE empresa;

- Para copiar o que está no arquivo empresa.sql:

       source empresa.sql

### Após isso, atualize seu workbench e veja nas SCHEMAS a nova database e as duas tabelas já criadas.
