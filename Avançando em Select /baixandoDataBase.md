# Baixando DATABASE 

### Acesse o link:
    https://github.com/datacharmer/test_db
- Clique em Code > Dowload Zip, baixe na sua máquina, extraia as pastas e abra no code a pasta gerada " Test_db Master"

# Baixando Database pelo terminal:

1. Abrir a pasta pelo VSCode
2. Manter o MySQL em Start no SGBD que utilizar, uso o XAMPP
3. Selecionar o terminal e executar:  mysql -u root
4. Tendo conexão ok, execute:

        CREATE DATABASE employees;
        USE employees;
5. Agora baixe o banco de dados na database criada, para isso, execute:

       source employees.sql
6. Após isso, com sucesso, sua database está devidamente baixada e disponível para uso e manipulação! :)
