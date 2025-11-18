# 🖥️ Banco de Dados - Lorena Tech

Este repositório contém o projeto de banco de dados relacional desenvolvido para a **Lorena Tech**, um negócio fictício especializado em suporte de TI e venda de hardware.

## 🎯 Objetivo do Projeto
O objetivo desta atividade foi aplicar conceitos fundamentais de SQL, criando um banco de dados do zero. Durante o desenvolvimento, aprendi a:
* Estruturar tabelas relacionais (Entidades como Clientes, Produtos e Serviços).
* Diferenciar e aplicar comandos de definição (DDL) e manipulação (DML).
* Solucionar erros comuns de sintaxe e travas de segurança do MySQL.

---

## 📚 Conteúdo Educacional: DDL vs DML

Para gerenciar o banco de dados da Lorena Tech, utilizamos dois grupos essenciais de comandos SQL:

### 1. DDL (Data Definition Language)
A **Linguagem de Definição de Dados** é responsável pela estrutura do banco. É com ela que criamos as tabelas e definimos os tipos de dados (como números, textos ou valores decimais).

* **Principais Comandos:** `CREATE`, `ALTER`, `DROP`.
* **Exemplo Prático (Do script `script_lorena_tech.sql`):**
    Abaixo, o comando utilizado para criar a tabela de estoque da loja:
    ```sql
    CREATE TABLE Produtos (
        id_produto INT AUTO_INCREMENT PRIMARY KEY,
        nome_produto VARCHAR(100) NOT NULL,
        preco DECIMAL(10, 2) NOT NULL,
        quantidade_estoque INT DEFAULT 0
    );
    ```

### 2. DML (Data Manipulation Language)
A **Linguagem de Manipulação de Dados** é usada para interagir com os dados dentro das tabelas. É o que usamos no dia a dia da loja para registrar vendas ou novos clientes.

* **Principais Comandos:** `INSERT`, `UPDATE`, `DELETE`.
* **Exemplo Prático (Do script `script_lorena_tech.sql`):**
    Aqui, o comando usado para cadastrar um novo SSD no sistema:
    ```sql
    INSERT INTO Produtos (nome_produto, preco, quantidade_estoque) 
    VALUES ('SSD Kingston 480GB', 250.00, 15);
    ```

---

## 📂 Estrutura do Repositório

* `/sql_scripts`: Pasta contendo o código fonte (`script_lorena_tech.sql`) pronto para execução.

## 🚀 Como executar
1. Acesse a pasta `sql_scripts` neste repositório.
2. Baixe ou copie o código SQL.
3. Execute em um gerenciador de banco de dados (como MySQL Workbench).
