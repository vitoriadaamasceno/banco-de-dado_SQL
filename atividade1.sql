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
SELECT * FROM Tabela.Livros
WHERE editora LIKE "Sextante";

-- 1- Trazer todos os dados
SELECT * FROM Tabela.Livros;

-- 2 - Trazer o nome do livro e nome da editora;
SELECT titulo,editora FROM Tabela.Livros WHERE id;

-- 3 - Trazer o nome do livro, editora e autores do sexo masculino;
SELECT titulo,editora, sexo FROM Tabela.Livros WHERE sexo LIKE "%Masculino";

-- 4 - Trazer o nome do livro, número de páginas do livro e autores do sexo feminino;
SELECT titulo,paginas,autor, sexo FROM Tabela.Livros WHERE sexo LIKE "%Feminino";


-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017;
SELECT autor,editora,anoPubli FROM Tabela.Livros WHERE anoPubli>= 2017 ;

-- 6 - Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Alta Books;
SELECT autor FROM Tabela.Livros WHERE editora="Sextante" OR editora="Alta Books";

-- 7 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum;
SELECT titulo,autor,paginas,editora,anoPubli,valorCapa FROM Tabela.Livros;

-- 8 - Trazer o nome do livro, autor, número de páginas e valor no Kindle;

SELECT titulo,autor,paginas,valorKindle FROM Tabela.Livros;

-- 9 Trazer o nome dos autores com livros publicados pela editora Sextante;

SELECT autor FROM Tabela.Livros WHERE editora = "Sextante";

--  Trazer o nome do livro, autores, valor com capa comum e valor no Kindle.
SELECT titulo,autor, valorCapa, valorKindle FROM Tabela.Livros;