CREATE DATABASE DB_CIDADE_DOS_VEGETAIS;

USE DB_CIDADE_DOS_VEGETAIS;

CREATE TABLE TB_CATEGORIAS(
	ID BIGINT AUTO_INCREMENT,
    TIPO VARCHAR(255),
    DESCRICAO VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    NOME VARCHAR(255),
    PRECO DECIMAL(6,2),
    QUANTIDADE BIGINT,
    ESTADO VARCHAR(255),
    CATEGORIAS_ID BIGINT,
    PRIMARY KEY(ID),
    FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS(ID)
);

INSERT INTO TB_CATEGORIAS (TIPO, DESCRICAO)
VALUES ("Fruta","Frutos doces e comestíveis."),
("Verdura","Plantas comestíveis, em geral."),
("Legume","Frutos salgados e comestíveis.");

INSERT INTO tb_produtos (NOME, PRECO, QUANTIDADE, ESTADO, CATEGORIAS_ID)
VALUES ("Acerola", 12.00,5,"Saudável",1),
("Maçã",7.00,8,"Saudável",1),
("Brócolis",6.00,10,"Saudável",2),
("Gengibre",18.00,5,"Saudável",3),
("Quiabo",15.00,10,"Saudável",3),
("Melão",9.00,4,"Saudável",1),
("Espinafre",5.00,12,"Saudável",2),
("Laranja",13.00,14,"Saudável",1);


SELECT * FROM TB_CATEGORIAS;
SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 10.00;

SELECT * FROM TB_PRODUTOS WHERE PRECO BETWEEN 5.00 AND 10.00;

SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID;

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID WHERE TIPO = "Fruta";

