create database compra; 

use compra; 

create table compra( 
numCompra int primary key, 
dataCompra date, 
descProduto varchar(40), 
codProduto int, 
codigoFornecedor int 
); 

drop table compra; 

insert into compra (numCompra, dataCompra, descProduto, codProduto, codigoFornecedor) values  
(101,'2023-12-17', 'Galaxy S20', 1, 1010), 
(102,'2024-10-02', 'Iphone 12', 2, 1011), 
(103,'2024-11-23', 'Galaxy S21', 3, 1012), 
(104,'2024-12-01', 'Iphone 11', 4, 1013), 
(105,'2024-12-19', 'Moto G', 5, 1014), 
(106, '2024-01-15', 'Redmi Note 10', 6, 1015),  
(107, '2024-02-20', 'Galaxy A52', 7, 1016),  
(108, '2024-03-30', 'Iphone SE', 8, 1017),  
(109, '2024-04-10', 'OnePlus 9', 9, 1018),  
(110, '2024-05-05', 'Pixel 5', 10, 1019),  
(111, '2024-06-18', 'Nokia G20', 11, 1020),  
(112, '2024-07-21', 'Huawei P30', 12, 1021),  
(113, '2024-08-13', 'Sony Xperia 5', 13, 1022),  
(114, '2024-09-09', 'Asus Zenfone 8', 14, 1023),  
(115, '2024-10-28', 'Motorola Edge', 15, 1024);


select dataCompra, numCompra 
from compra, produto 
where codProduto = codigoProduto;  

  
select c.numCompra, c.dataCompra, p.descricaoProduto, f.nomeFornecedor  
from compra as c, produto as p, fornecedor as f 
where c.codProduto = p.codigoProduto and  
c.codigoFornecedor = f.codFornecedor; 
  

select produto.descricaoProduto, fornecedor.nomeFornecedor 
from produto inner join fornecedor 
on produto.codigoProduto = fornecedor.codigProduto;  

  

select p.descricaoProduto, f.nomeFornecedor 
from produto as p right join fornecedor as f 
on codigoProduto = codigProduto;  


create table produto( 
codigoProduto int primary key, 
descricaoProduto varchar(40), 
codFornecedor int 
); 

  

insert into produto (codigoProduto, descricaoProduto, codFornecedor) values  
(1, 'Galaxy S20', 1010), 
(2, 'Iphone 12', 1011), 
(3, 'Galaxy S21', 1012), 
(4, 'Iphone 11', 1013), 
(5, 'Moto G', 1014),
(6, 'Redmi Note 10', 1015),  
(7, 'Galaxy A52', 1016),  
(8, 'Iphone SE', 1017),  
(9, 'OnePlus 9', 1018),  
(10, 'Pixel 5', 1019),  
(11, 'Nokia G20', 1020),  
(12, 'Huawei P30', 1021),  
(13, 'Sony Xperia 5', 1022),  
(14, 'Asus Zenfone 8', 1023),  
(15, 'Motorola Edge', 1024);

drop table produto; 

  

select*from produto; 

  

create table fornecedor( 
codFornecedor int primary key, 
nomeFornecedor varchar(40), 
enderecoFornecedor varchar(40), 
emailFornecedor varchar(40),  
codigProduto int 
); 

  

insert into fornecedor (codFornecedor, nomeFornecedor, enderecoFornecedor, emailFornecedor, codigProduto ) values  
(1010, 'João Pedro', 'rua julio paiva, 36', 'Jpedro3@gmail.com', 1), 
(1011, 'Maria Aparecida', 'rua Laura Cardoso, 342', 'Maparecida2@gmail.com', 2), 
(1012, 'José Almeida', 'rua Humberto Gessinger, 101', 'Jalmeida7@gmail.com', 3), 
(1013, 'Arnaldo Antunes', 'rua Pedro Calais, 123', 'Aantunes4@gmail.com', 4), 
(1014, 'Fernando Reis', 'rua Otavio Zani, 77', 'Freis@gmail.com', 5),
(1015, 'Luciana Castro', 'rua Afonso Pena, 58', 'Lcastro5@gmail.com', 6),  
(1016, 'Carlos Eduardo', 'rua Marques de Souza, 90', 'Ceduardo6@gmail.com', 7),  
(1017, 'Patrícia Lemos', 'rua Américo Vespúcio, 142', 'Plemos7@gmail.com', 8),  
(1018, 'Ricardo Silva', 'rua Coronel Franco, 29', 'Rsilva8@gmail.com', 9),  
(1019, 'Beatriz Santos', 'rua Dom Pedro II, 46', 'Bsantos9@gmail.com', 10),  
(1020, 'Gustavo Moura', 'rua Padre Cícero, 32', 'Gmoura10@gmail.com', 11),  
(1021, 'Ana Carolina', 'rua Fernando Pessoa, 83', 'Acarolina11@gmail.com', 12),  
(1022, 'Felipe Rocha', 'rua Castro Alves, 21', 'Frocha12@gmail.com', 13),  
(1023, 'Renata Barros', 'rua Dr. Arnaldo, 67', 'Rbarros13@gmail.com', 14),  
(1024, 'Eduardo Gama', 'rua Anita Garibaldi, 55', 'Egama14@gmail.com', 15);

 

select*from fornecedor; 



create database recibos;
use recibos;

create table recibo(
numNF int primary key,
serie varchar(40),
qtdComprada int,
codProduto int,
codCliente int,
dataEmissao date, 
vTotalCompra decimal(10,2),
vTotalQtd decimal(10,2)
);

INSERT INTO recibo (numNF, serie, qtdComprada, codProduto, codCliente, dataEmissao, vTotalCompra, vTotalQtd) VALUES
(1010, 'A142', 1, 101, 1, '2024-10-10', 1100.00, 1100.00),
(1011, 'B123', 1, 102, 2, '2024-05-12', 2000.00, 2000.00),
(1012, 'C321', 3, 103, 3, '2024-02-20', 3900.00, 1300.00),
(1013, 'D567', 2, 104, 4, '2023-12-23', 3000.00, 1500.00),
(1014, 'E765', 4, 105, 5, '2022-10-15', 4800.00, 1200.00),
(1015, 'F981', 2, 106, 6, '2024-03-18', 2200.00, 1100.00),
(1016, 'G432', 5, 107, 7, '2023-11-10', 7500.00, 1500.00),
(1017, 'H221', 1, 108, 8, '2024-01-29', 800.00, 800.00),
(1018, 'I009', 3, 109, 9, '2023-09-14', 4500.00, 1500.00),
(1019, 'J785', 4, 110, 10, '2023-07-22', 6800.00, 1700.00),
(1020, 'K678', 2, 111, 11, '2024-04-11', 2400.00, 1200.00),
(1021, 'L334', 6, 112, 12, '2023-12-05', 7200.00, 1200.00),
(1022, 'M123', 1, 113, 13, '2024-06-20', 1500.00, 1500.00),
(1023, 'N999', 3, 114, 14, '2023-08-30', 3300.00, 1100.00),
(1024, 'O456', 5, 115, 15, '2024-02-14', 5000.00, 1000.00);


CREATE TABLE cliente (
codigoCliente INT PRIMARY KEY,
nomeCliente VARCHAR(40),
enderecoCliente VARCHAR(50),
telCliente VARCHAR(15)
);

drop table cliente;

INSERT INTO cliente (codigoCliente, nomeCliente, enderecoCliente, telCliente) VALUES
(1, 'Julio Silva', 'rua geraldo souza almeida, 153', '993128879'),
(2, 'Amanda Soares', 'rua aroldo santos bastos, 138', '912145642'),
(3, 'Maria Clara', 'rua silvio silva santos, 144', '94419661'),
(4, 'Rafael Henrique', 'rua jose julio, 97', '927398234'),
(5, 'Abner Moreira', 'rua caio bonfim, 20', '992127745'),
(6, 'Carlos Eduardo', 'rua das laranjeiras, 45', '991234567'),
(7, 'Patrícia Gomes', 'av. rio branco, 120', '981234567'),
(8, 'Fernando Silva', 'rua das flores, 78', '971234567'),
(9, 'Luciana Costa', 'av. brasil, 22', '961234567'),
(10, 'Tiago Almeida', 'rua do sol, 56', '951234567'),
(11, 'Beatriz Souza', 'av. dos bandeirantes, 101', '941234567'),
(12, 'João Pedro', 'rua alameda dos anjos, 32', '931234567'),
(13, 'Larissa Freitas', 'av. paulista, 123', '921234567'),
(14, 'Ricardo Oliveira', 'rua da paz, 77', '911234567'),
(15, 'Gabriela Santos', 'av. dom pedro, 98', '901234567');


CREATE TABLE produto (
codigoProduto int PRIMARY KEY,
descProduto varchar(40),
valorUnitario decimal(10,2),
qtdEstoque int
);

INSERT INTO produto (codigoProduto, descProduto, valorUnitario, qtdEstoque) VALUES
(101, 'Galaxy S20', 1100.00, 10),
(102, 'Iphone 12', 2000.00, 15),
(103, 'Galaxy S21', 1300.00, 8),
(104, 'Iphone 11', 1500.00, 20),
(105, 'Moto G', 1200.00, 25),
(106, 'Tablet X', 1100.00, 12),
(107, 'Laptop Pro', 1500.00, 18),
(108, 'Smartwatch Y', 800.00, 30),
(109, 'Camera Z', 1500.00, 10),
(110, 'Monitor HD', 1700.00, 5),
(111, 'Teclado Mecânico', 1200.00, 20),
(112, 'Mouse Gamer', 1200.00, 25),
(113, 'Fone Bluetooth', 1500.00, 15),
(114, 'SSD 1TB', 1100.00, 40),
(115, 'Memória RAM 16GB', 1000.00, 8);

select recibo.vTotalCompra, recibo.codProduto, cliente.nomeCliente
from recibo inner join cliente 
on recibo.codCliente = cliente.codigoCliente;  

select p.descProduto, r.codCliente 
from produto as p left join recibo as r
on codigoProduto = codProduto;  

select p.valorUnitario, r.qtdComprada, r.vTotalCompra
from produto as p right join recibo as r
on codigoProduto = codProduto;  

create database aluno;
use aluno;

CREATE TABLE aluno (
    numAluno INT PRIMARY KEY,
    nomeAluno VARCHAR(40),
    numCurso INT
);

INSERT INTO aluno (numAluno, nomeAluno, numCurso) VALUES
(101, 'Gustavo Viana', 102),
(102, 'Bruno Henrique', 101),
(103, 'Guilherme Silva', 103),
(104, 'Helena Gouveia', 104),
(105, 'Ana Julia', 105),
(106, 'Lucas Almeida', 108),
(107, 'Fernanda Lopes', 107),
(108, 'Mateus Braga', 111),
(109, 'Beatriz Souza', 112),
(110, 'Paulo César', 115),
(111, 'Camila Reis', 106),
(112, 'Marcos Paulo', 102),
(113, 'Sofia Oliveira', 103),
(114, 'João Vitor', 104),
(115, 'Larissa Gomes', 110);

CREATE TABLE curso (
numeroCurso INT PRIMARY KEY,
nomeCurso VARCHAR(40),
numerAlunos INT,
inicioCurso DATE
);

drop table curso;

INSERT INTO curso (numeroCurso, nomeCurso, numerAlunos, inicioCurso) VALUES
(101, 'Medicina', 10, '2023-04-25'),
(102, 'Sistema de Informação', 15, '2025-04-05'),
(103, 'Engenharia de Software', 25, '2024-02-03'),
(104, 'Banco de Dados', 35, '2024-09-20'),
(105, 'Desenvolvimento de Sistemas', 30, '2023-12-10'),
(106, 'Matemática Aplicada', 20, '2024-03-15'),
(107, 'Física Médica', 12, '2023-06-18'),
(108, 'Engenharia Ambiental', 28, '2023-07-11'),
(109, 'Ciência da Computação', 30, '2024-01-25'),
(110, 'Química Industrial', 18, '2024-05-05'),
(111, 'Economia', 22, '2023-09-14'),
(112, 'Direito', 40, '2025-02-20'),
(113, 'Enfermagem', 35, '2023-11-30'),
(114, 'Psicologia', 15, '2024-08-22'),
(115, 'Administração', 45, '2025-03-10');

CREATE TABLE professor (
    numProfessor INT PRIMARY KEY,
    nomeProfessor VARCHAR(40)
);

INSERT INTO professor (numProfessor, nomeProfessor) VALUES
(1, 'profª Vanessa'),
(2, 'profª Carla'),
(3, 'profª Fabiana'),
(4, 'profº Israel'),
(5, 'profº Leandro'),
(6, 'profª Helena'),
(7, 'profº Tiago'),
(8, 'profº Caio'),
(9, 'profª Ana Paula'),
(10, 'profº João'),
(11, 'profª Lívia'),
(12, 'profº Rafael'),
(13, 'profª Marina'),
(14, 'profº Eduardo'),
(15, 'profª Gabriela');

CREATE TABLE materiaCurso (
    numeCurso INT PRIMARY KEY,
    materiaCurso VARCHAR(40)
);

INSERT INTO materiaCurso (numeCurso, materiaCurso) VALUES
(101, 'Software Básico'),
(102, 'Banco de Dados'),
(103, 'Imunologia'),
(104, 'Filosofia e Geral e do Direito'),
(105, 'Bioquímica'),
(106, 'Álgebra Linear'),
(107, 'Física Experimental'),
(108, 'Ecologia Aplicada'),
(109, 'Inteligência Artificial'),
(110, 'Química Orgânica'),
(111, 'Macroeconomia'),
(112, 'Direito Civil'),
(113, 'Anatomia'),
(114, 'Psicologia Social'),
(115, 'Gestão de Negócios');

CREATE TABLE materiaProfessor (
    numerProfessor INT PRIMARY KEY,
    materiaProfessor VARCHAR(40)
);

INSERT INTO materiaProfessor (numerProfessor, materiaProfessor) VALUES
(1, 'Software Básico'),
(2, 'Banco de Dados'),
(3, 'Redes e Segurança'),
(4, 'Bioquímica'),
(5, 'Engenharia de Software'),
(6, 'Matemática Aplicada'),
(7, 'Física Médica'),
(8, 'Engenharia Ambiental'),
(9, 'Ciência da Computação'),
(10, 'Química Industrial'),
(11, 'Economia'),
(12, 'Direito'),
(13, 'Enfermagem'),
(14, 'Psicologia'),
(15, 'Administração');


select curso.nomeCurso, aluno.nomeAluno 
from curso inner join aluno 
on curso.numeroCurso = aluno.numCurso;  

  

select c.numerAlunos, m.materiaCurso 
from curso as c left join materiaCurso as m 
on numeCurso = numeroCurso;  







