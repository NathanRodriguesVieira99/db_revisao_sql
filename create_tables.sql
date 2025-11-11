CREATE TABLE cidades (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade_id INT REFERENCES cidades(id)
);

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria_id INT REFERENCES categorias(id)
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(id),
    criado_em TIMESTAMP DEFAULT NOW(),
    total NUMERIC(10,2) NOT NULL
);


CREATE TABLE itens (
    id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(id),
    produto_id INT REFERENCES produtos(id),
    qtd INT NOT NULL CHECK (qtd > 0),
    preco_unitario NUMERIC(10,2) NOT NULL CHECK (preco_unitario >= 0)
);


CREATE TABLE transacoes (
    id SERIAL PRIMARY KEY,
    conta_id INT NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    ts TIMESTAMP DEFAULT NOW()
);


CREATE TABLE cotacoes (
    id SERIAL PRIMARY KEY,
    ativo_id INT NOT NULL,
    ts TIMESTAMP DEFAULT NOW(),
    preco NUMERIC(10,2) NOT NULL
);



