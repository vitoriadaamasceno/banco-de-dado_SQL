# Criar Tabela
CREATE DATABASE Tabela;

-- Mostrar o Banco
SHOW DATABASES;

-- Acessar o Banco
USE Tabela;

-- Criar Tabela no Banco
CREATE TABLE Tabela.Livros(
	id int auto_increment,
    titulo varchar(50) not null,
    autor varchar(255) not null,
    sexo varchar(11) not null,
    paginas int not null,
    editora varchar(50) not null,
    valorCapa double not null,
    valorKindle double not null,
    anoPubli int not null,
    PRIMARY KEY(Id)
);

-- Inserir Registros na Tabela
INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Pai Rico Pai Pobre',
'Robert T. Kiyosaki',
'Masculino',
336,
'Alta Books',
61.53,
58.45,
2018);

INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Mindset',
'Carol S. Dweck',
'Feminino',
312,
'Objetiva',
38.99,
14.95,
2017);

INSERT INTO Tabela.Livros(titulo,autor,sexo,paginas,editora,valorCapa,valorKindle,anoPubli)
VALUES('Como fazer amigos e influenciar pessoas',
'Dale Carnegie',
'Masculino',
256,
'Sextante',
38.99,
33.24,
2019),

('A Cabana',
'William P. Young',
'Masculino',
240,
'Arqueira',
35.99,
17.90,
2008),

('O Poder do Hábito',
'Charles Duhigg',
'Masculino',
408,
'Objetiva',
42.99,
29.90,
2012),

('Código Limpo',
'Robert C. Marin',
'Masculino',
425,
'Alta Books',
91.99,
87.39,
2009),

('Essencialismo',
'Greg McKeown',
'Masculino',
272,
'Sextante',
53.58,
33.24,
2015),

('Me Poupe!',
'Nathalia Arcuri',
'Feminino',
176,
'Sextante',
32.86,
17.09,
2018),

('Comece pelo Porquê',
'Simon Sinek',
'Masculino',
256,
'Sextante',
50.58,
24.90,
2018),

('O Alquimista',
'Paulo Coelho',
'Masculino',
206,
'Paralela',
24.70,
14.70,
2017);

-- SELECIONAR E EXIBIR TABELA
SELECT * FROM Tabela.Livros;