CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    valor DECIMAL(10, 2),
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES 
('Salgada', 'Pizzas salgadas'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas especiais'),
('Clássica', 'Pizzas tradicionais');

INSERT INTO tb_pizzas (nome, valor, ingredientes, id_categoria) VALUES
('Margherita', 50.00, 'Molho de tomate, queijo, manjericão', 1),
('Calabresa', 40.00, 'Molho de tomate, queijo, calabresa', 1),
('Brigadeiro', 35.00, 'Chocolate, leite condensado, granulado', 2),
('Quatro Queijos', 55.00, 'Molho de tomate, queijo mussarela, parmesão, gorgonzola, provolone', 1),
('Mista', 48.00, 'Molho de tomate, queijo, presunto, cogumelos, azeitonas', 5),
('Portuguesa', 45.00, 'Molho de tomate, queijo, presunto, ovos, cebola, azeitonas', 5),
('Frango com Catupiry', 60.00, 'Molho de tomate, queijo, frango desfiado, catupiry', 4),
('Vegetariana', 65.00, 'Molho de tomate, queijo, abobrinha, berinjela, pimentão, cebola', 3);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id 
WHERE tb_categorias.nome = 'Doce';
