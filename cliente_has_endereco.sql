CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Clientes(
	id INT NOT NULL PRIMARY KEY auto_increment,
    nome varchar(255) not null,
    dataNascimento date,
    telefone varchar(22)
);

CREATE TABLE Endereco(
	id INT NOT NULL PRIMARY KEY auto_increment,
    logradouro varchar(255) not null,
    numero varchar(10),
    cidade varchar(45)
);

CREATE TABLE Clientes_has_Endereco(
	id INT NOT NULL PRIMARY KEY auto_increment,
    clienteId INT,
    enderecoId INT,
    foreign key  (clienteId) REFERENCES Clientes(id),
    foreign key  (enderecoId) REFERENCES Endereco(id)
);

INSERT INTO Clientes(nome, dataNascimento,telefone)
VALUES
    ('Maria Vitoria', '2002-05-01', '7198522-9999'),
    ('Matheus Lima', '1999-05-01','719997-9999'),
    ('Matheus Gundes','2003-05-01', '7198869-5892'),
    ('Matheus Bacteria','1999-09-01', '719991-7777'),
    ('Macita', '2005-05-01', '7198587-5888');
    
INSERT INTO Endereco(logradouro, numero,cidade)
VALUES
    ('Rua 1', 'E', 'Salvador'),
    ('Rua 2', '9','Salvador'),
    ('Rua 3','21', 'Salvador'),
    ('Rua 4','6F', 'Salvador'),
    ('Rua 5', '8', 'Salvador');
    
insert into Clientes_has_Endereco(clienteId, enderecoId)
values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);
    
SELECT
C.nome AS 'Nome',
E.logradouro AS 'Logradouro'
FROM Clientes C
Inner Join  Clientes_has_Endereco H on C.id = H.clienteId
Inner join Endereco E on H.enderecoId = E.id
ORDER BY C.nome;

