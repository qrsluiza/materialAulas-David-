create database filme;
use filme;

CREATE TABLE streaming (
    cod INT,
    NOME VARCHAR(50),
    VALOR double,
    PRIMARY KEY (cod)
);

CREATE TABLE categoria (
    cod INT,
    nome VARCHAR(50),
    PRIMARY KEY (cod)
);

CREATE TABLE filme (
    titulo VARCHAR(50),
    ano INT,
    cod INT,
    resumo VARCHAR(150),
     FK_categoria_cod INT,
    PRIMARY KEY (cod),
    FOREIGN KEY (FK_categoria_cod)
        REFERENCES categoria (cod)
);

CREATE TABLE ator (
    nasc INT,
    cod INT,
    nome VARCHAR(50),
    nacio VARCHAR(20),
    PRIMARY KEY (cod)
);

CREATE TABLE StreFilm (
    FK_Streaming_cod INT,
    FK_Filme_cod INT,
    FOREIGN KEY (FK_Streaming_cod)
        REFERENCES streaming (cod),
    FOREIGN KEY (FK_Filme_cod)
        REFERENCES filme (cod)
);

CREATE TABLE AtorFilme (
    FK_Ator_cod INT,
    FK_Filme_cod INT,
    FOREIGN KEY (FK_Ator_cod)
        REFERENCES ator (cod),
    FOREIGN KEY (FK_Filme_cod)
        REFERENCES filme (cod)
);
 CREATE TABLE idioma (
 FK_Filme_cod int,
 idioma varchar(50),
    FOREIGN KEY (FK_Filme_cod)
        REFERENCES filme (cod)
);





