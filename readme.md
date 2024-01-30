
# Projeto de Containers - Curso de DevOps - Vem Ser Tech Ada

## Aluno:
- Juan Soto Sotelo

## Tarefa

- Procurar uma aplicação web de exemplo (na linguagem de preferencia de vocês)

- Trabalhar nesse app com Dockerfile e docker-compose.yaml

- O compose precisa conter 1 banco de dados (mysql ou postgresql)

- Compose precisar conter pelo menos 2 serviços
  
- banco de dados com Volume

- Network (criar e referenciar uma network no compose)

- O serviço de app precisa ter dependencia do serviço de banco. Ou seja o o banco precisa subir primeiro que o app

- Mostrar a aplicação funcionando na porta 80 localmente.

- Plus: Criar stack no swarm com mais de 1 replica.

# Solução:
---------

Neste projeto construimos de uma aplicação web Flask com integração a um banco de dados MySQL, usando  o poder do Docker-compose.

Seguindo as instruções do doker-compose, será construido um banco de dados "quadrinhos" e uma tabela "hq".

A aplicação acessará a tabela hq que contem os registros de personagens de história em quadrinhos:  Personagem, Autor,Título da primeira publicação,e data de publicação.
A saida será mostrada no localhost, na porta 5000.


## Estrutura do projeto
```
tree 
.
|-- app
|   |-- Dockerfile 
|   |-- app.py 
|   |-- requirements.txt 
|-- db 
|   |-- init.sql 
-- docker-compose.yml
```

## Configuração

Verifique se o Docker e o Docker Compose estão instalados na máquina.

## Execução

Na raiz do projeto, execute o comando :

docker-compose up -d

## Testando o Projeto

Abra um browser, e acesse a porta 5000: 

http://localhost:5000

![localhost](/files/localhost.png)
