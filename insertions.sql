INSERT INTO cidades (nome) VALUES
('São Paulo'),
('Rio de Janeiro'),
('Belo Horizonte'),
('Curitiba'),
('Porto Alegre');

INSERT INTO categorias (nome) VALUES
('Eletrônicos'),
('Roupas'),
('Livros'),
('Brinquedos'),
('Alimentos');

INSERT INTO clientes (nome, cidade_id) VALUES
('João Silva', 1),
('Maria Oliveira', 2),
('Carlos Souza', 3),
('Ana Lima', 4),
('Pedro Santos', 5);


INSERT INTO produtos (nome, categoria_id) VALUES
('Smartphone', 1),
('Notebook', 1),
('Camiseta', 2),
('Livro de JavaScript', 3),
('Boneca', 4),
('Chocolate', 5),
('Mouse', 1),
('Calça Jeans', 2);

INSERT INTO pedidos (cliente_id, criado_em, total) VALUES
(1, '2025-11-01 10:30:00', 3500.00),
(2, '2025-11-02 14:15:00', 120.00),
(3, '2025-11-03 09:20:00', 75.50),
(4, '2025-11-04 19:45:00', 250.00),
(5, '2025-11-05 11:10:00', 600.00);

INSERT INTO itens (pedido_id, produto_id, qtd, preco_unitario) VALUES
(1, 1, 1, 2500.00),
(1, 2, 1, 1000.00),
(2, 3, 2, 60.00),
(3, 4, 1, 75.50),
(4, 5, 2, 125.00),
(5, 6, 5, 120.00),
(5, 7, 1, 300.00);

INSERT INTO transacoes (conta_id, valor, ts) VALUES
(101, 1500.00, '2025-11-01 10:00:00'),
(102, -200.00, '2025-11-01 11:15:00'),
(103, 500.00, '2025-11-02 09:30:00'),
(101, -350.00, '2025-11-03 15:45:00'),
(104, 1200.00, '2025-11-04 17:10:00');


INSERT INTO cotacoes (ativo_id, ts, preco) VALUES
(1, '2025-11-01 10:00:00', 32.50),
(1, '2025-11-02 10:00:00', 33.10),
(2, '2025-11-01 10:00:00', 125.75),
(2, '2025-11-02 10:00:00', 130.00),
(3, '2025-11-03 10:00:00', 87.20),
(3, '2025-11-04 10:00:00', 89.00);
