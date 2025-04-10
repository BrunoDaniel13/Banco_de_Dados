use rh_empresa;

CREATE TABLE tb_colaborador(
id_colaborador BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255), 
salario DECIMAL(6,2),              
data_validade DATE, 
PRIMARY KEY (id_colaborador)
);

SELECT * FROM tb_colaborador;

ALTER TABLE tb_colaborador CHANGE data_inico data_inicio DATE;

INSERT INTO tb_colaborador(nome,cargo, salario, data_inicio)
VALUE
("João da Silva", "Técnico", 1800.00, "2025-04-09" ),
("Pedro Henrique", "Desenvolvedor junior",3000.00, "2023-06-09" ),
("Rafaela Ferreira","Especialista em RH",6800.00, "2024-10-17" ),
("Thalita Alves", "Estagiária de TI", 1500.00, "2025-02-06"),
("Luiz Araujo", "Auxiliar Técnico", 1650, "2023-09-05");      

SELECT * FROM tb_colaborador WHERE salario > 2000.00;

SELECT * FROM tb_colaborador WHERE salario < 2000.00;

UPDATE tb_colaborador SET salario = 3300.500 WHERE id_colaborador = 3;
