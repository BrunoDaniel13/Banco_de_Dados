CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id_estudante BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    turma VARCHAR(10),
    nota_final DECIMAL(4,2),
    situacao VARCHAR(20),
    PRIMARY KEY (id_estudante)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota_final, situacao)
VALUE
("Ana Beatriz", 15, "9A", 8.5, "Aprovado"),
("Lucas Silva", 14, "8B", 6.0, "Reprovado"),
("Mariana Costa", 16, "9B", 9.0, "Aprovado"),
("João Pedro", 15, "9A", 7.5, "Aprovado"),
("Camila Rocha", 13, "8A", 5.8, "Reprovado"),
("Felipe Nunes", 14, "8C", 7.8, "Aprovado"),
("Isabela Martins", 15, "9B", 6.9, "Reprovado"),
("Bruno Martins", 14, "8B", 8.2, "Aprovado");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;


UPDATE tb_estudantes SET nota_final = 7.00 WHERE id_estudante = 7;
UPDATE tb_estudantes SET situacao = "Aprovado" WHERE id_estudante = 7;