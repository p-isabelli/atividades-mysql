CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

create table  tb_categorias(
	id int auto_increment primary key,
    nome varchar(50),
    descricao varchar(255)
);

create table tb_produtos(
	id int auto_increment primary key,
    nome varchar(50),
    descricao varchar(255),
    preco decimal(10,2),
    qnt_estoque int,
    validade date,
    fabricante varchar(50),
    id_categoria int,
    foreign key (id_categoria) references tb_categorias(id)
);

insert into tb_categorias (nome, descricao) values
('Medicamentos', 'Medicamentos e Fármacos'),
('Higiene Pessoal', 'Itens de cuidado e higiene pessoal'),
('Cosméticos', 'Produtos de beleza'),
('Dermocosméticos', 'Cosméticos para pele'),
('Cuidados Infantis', 'Produtos para cuidados infantis');

INSERT INTO tb_produtos (nome, descricao, preco, qnt_estoque, validade, fabricante, id_categoria) VALUES
('Paracetamol', 'Analgésico', 10.50, 200, '2023-12-31', 'Farmacorp', 1),
('Sabonete Líquido', 'Limpeza e higiene corporal', 5.99, 150, '2023-11-30', 'Cuidados & Limpeza', 2),
('Protetor Solar FPS 50', 'Proteção contra raios UVA/UVB', 30.75, 100, '2024-06-30', 'BelaPele', 3),
('Hidratante Facial', 'Hidratação e cuidados com a pele', 22.00, 120, '2023-10-31', 'BelaCosméticos', 4),
('Shampoo Infantil', 'Hipoalergênico para crianças', 15.90, 80, '2023-09-30', 'BabyCare', 5),
('Gel Dental', 'Pasta de dente com flúor', 8.25, 180, '2024-01-31', 'SorrisoPerfeito', 2),
('Perfume Floral', 'Fragrância floral para mulheres', 55.50, 60, '2023-08-31', 'EssênciaViva', 3),
('Gel Antibacteriano', 'Desinfecção para mãos', 12.00, 100, '2024-03-31', 'CleanHands', 2);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 5.00 and 60.00;
select * from tb_produtos where nome like '%C%';
select * from tb_produtos inner join tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;
select * from tb_produtos
inner join tb_categorias on tb_produtos.id_categoria = tb_categorias.id
where tb_categorias.nome = 'Cosméticos';
    