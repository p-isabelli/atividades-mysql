CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES 
('Guerreiro', 'Classe especializada em combate corpo a corpo'),
('Mago', 'Classe focada em magias poderosas'),
('Arqueiro', 'Classe habilidosa com arco e flecha'),
('Domador', 'Classe que possui um animal que ajuda em combate'),
('Mercenário', 'Classe ágil e furtiva');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
("Mario", 1600, 2500, 1),
("Luigi", 2500, 1600, 3),
("Toad", 3500, 1000, 2),
("Princesa Peach", 2500, 2200, 4), 
("Yoshi", 2500, 1000, 5),
("Wario", 1300, 2000, 1), 
("Bowser", 2600, 1500, 3),
("Toadette", 3500, 1200, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;
SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id 
WHERE tb_classes.nome = 'Arqueiro';