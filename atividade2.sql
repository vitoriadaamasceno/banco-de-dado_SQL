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

-- 1 Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
SELECT titulo,valorKindle,autor 
FROM Tabela.Livros
WHERE valorKindle <40.0;

 -- 2 Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT titulo,autor 
FROM Tabela.Livros
WHERE anoPubli>2017 AND editora = 'Sextante' AND sexo = 'Feminino';

-- 3 - Trazer o nome do livro e editora de livros com mais de 200 páginas;
SELECT titulo,editora 
FROM Tabela.Livros
WHERE paginas >200;

-- 4 - Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT titulo,paginas,autor 
FROM Tabela.Livros
WHERE autor LIKE "C%";

-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT autor,editora,anoPubli
FROM Tabela.Livros
WHERE sexo = "Masculino" AND editora = "Alta Books";

-- 6- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT titulo, autor,paginas,editora,anoPubli,valorCapa
FROM Tabela.Livros
WHERE valorCapa > 50.0;

-- 7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT titulo,editora, valorCapa
FROM Tabela.Livros
WHERE autor LIKE "Nathalia%";

-- 8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT titulo,autor, paginas
FROM Tabela.Livros
WHERE anoPubli <=2017;

-- 9 Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT autor
FROM Tabela.Livros
WHERE editora = "Sextante" AND paginas >200;

-- 10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT titulo, autor, valorCapa
FROM Tabela.Livros
WHERE valorCapa >30 AND editora = 'Sextante';






