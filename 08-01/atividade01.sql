
 CREATE DATABASE db_empresa;
 
 USE db_empresa;
 
 CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    cargo VARCHAR(255) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cpf, data_nascimento, salario, cargo)
VALUES ("Isabelli C Pereira", "12345678900", "2001-05-07", 15000.00, "Desenvolvedora FullStack Sr"),
("Julio Souza", "56749294201", "1973-04-12", 25000.00, "Desenvolvedor Backend Sr"),
("Joana da Silva", "12365487633", "1999-02-12", 5000.00, "Desenvolvedora FrontEnd Jr"),
("Maria Pereira", "56782345609", "1995-11-08", 12000.00, "Analista de sistemas"),
("Fernanda Souza", "67309213407", "2003-12-23", 1500.00, "Gestora");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 8000.00 WHERE id = 5;





