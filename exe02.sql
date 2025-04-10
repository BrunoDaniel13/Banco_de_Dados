CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255),
preco DECIMAl(6,2),
estoque INT,
PRIMARY KEY (id_produto)
);

SELECT * FROM tb_produtos; 

INSERT INTO tb_produtos(nome,descricao,preco,estoque)
VALUE 
("Cadeira Gamer", "Ergonômica, preta com vermelho",899.00,30 ),
("Mouse Gamer", "16000 DPI,  6 botões programáveis – Preto/Vermelho.",450.00, 25 ),
("Fone Bluetooth", "Som potente, bateria 24h", 499.90, 30 ),
("Impressora", "Multifuncional, com wifi",599.00,15 ),
("Monitor", "32 polegadas, resoluçao QHD",2200.00, 10 ),
("Teclado Mecânico", "Switch blue", 349.00, 20 ),
("Cabo HDMI", "60 centímetros",49.00, 50 ),
("Celular Smartphone", "128GB, câmera triple",2200.00, 10 );

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERe preco < 500.00;

UPDATE tb_produtos SET preco = 29.00 WHERE id_produto = 7;