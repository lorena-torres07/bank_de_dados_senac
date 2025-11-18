CREATE DATABASE LorenaTechDB;
USE LorenaTechDB;

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT DEFAULT 0
);

CREATE TABLE Servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(100),
    preco_mao_de_obra DECIMAL(10, 2)
);


INSERT INTO Clientes (nome_completo, email, telefone) VALUES 
('João da Silva', 'joao.silva@email.com', '(81) 99999-1111'),
('Maria Oliveira', 'maria.o@email.com', '(81) 98888-2222'),
('Carlos Souza', 'carlos.dev@email.com', '(11) 97777-3333');


INSERT INTO Produtos (nome_produto, preco, quantidade_estoque) VALUES 
('SSD Kingston 480GB', 250.00, 15),
('Memória RAM 8GB DDR4', 180.00, 30),
('Fonte Corsair 500W', 350.00, 10);


INSERT INTO Servicos (nome_servico, preco_mao_de_obra) VALUES 
('Formatação e Backup', 120.00),
('Limpeza Interna e Troca de Pasta Térmica', 80.00),
('Montagem de PC Gamer', 200.00);


SET SQL_SAFE_UPDATES = 0;

UPDATE Servicos SET preco_mao_de_obra = 130.00 WHERE nome_servico = 'Formatação e Backup';


DELETE FROM Produtos WHERE nome_produto = 'Fonte Corsair 500W';

SET SQL_SAFE_UPDATES = 1;
