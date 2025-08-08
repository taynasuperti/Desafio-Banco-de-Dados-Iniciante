CREATE DATABASE loja
USE loja
GO

CREATE TABLE Produto 
(
	id INT IDENTITY PRIMARY KEY NOT NULL,
	nome_produto varchar(200) NOT NULL,
	valor_custo numeric(6,2) NOT NULL,
	valor_venda numeric(6,2) NOT NULL,
);

INSERT INTO Produto (nome_produto, valor_custo, valor_venda) VALUES
('Smartphone', 200, 400),
('Notebook', 1500.00, 2200.00),
('Café', 25, 10),
('Impressora', 500.00, 450.00),
('Cadeira Gamer', 700.00, 1200.00),
('Monitor', 400.00, 600.00),
('Teclado', 80.00, 120.00),
('Webcam Full HD', 120.00, 200.00),
('Mouse Gamer', 70.00, 150.00),
('Fone de Ouvido', 50.00, 90.00);

UPDATE Produto
SET valor_venda = 15
WHERE nome_produto = 'Café'

SELECT TOP 5 nome_produto, valor_venda
FROM Produto 
ORDER BY valor_venda DESC

DELETE FROM Produto
WHERE valor_venda < valor_custo

SELECT * FROM Produto