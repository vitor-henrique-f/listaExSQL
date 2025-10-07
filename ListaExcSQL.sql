-- LISTA 1

-- Criação de tabelas

create table clientes(
id_cliente int auto_increment primary key,
nome_cliente varchar(100),
email_cliente varchar(150),
data_nascimento date,
telefone_cliente varchar(15)
);

desc clientes;

create table produtos(
id_produto int primary key,
nome_produto varchar(100) not null unique,
preço_produto decimal(8,2)
);

desc produtos;

create table faturas(
id_fatura int primary key,
data_criacao date default current_timestamp,
valor_fatura decimal(10,2)
);

desc faturas;

-- Inserção de dados

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (1, 'João Silva', 'joao.silva@email.com', '1990-05-10', '+5511998765432'); 

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (2, 'Maria Oliveira', 'maria.oliveira@email.com', '1988-07-22', '+5511987654321');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (3, 'Carlos Souza', 'carlos.souza@email.com', '1995-03-15', '+5511912345678');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (4, 'Ana Costa', 'ana.costa@email.com', '1985-10-25', '+5511923456789');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (5, 'Fernanda Lima', 'fernanda.lima@email.com', '2000-01-30', '+5511934567890');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (6, 'Paulo Mendes', 'paulo.mendes@email.com', '1972-12-20', '+5511945678901');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (7, 'Mariana Pereira', 'mariana.pereira@email.com', '1999-04-05', '+5511956789012');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (8, 'Roberto Santos', 'roberto.santos@email.com', '1987-11-19', '+5511967890123.');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (9, 'Gabriela Dias', 'gabriela.dias@email.com', '1993-09-14', '+5511978901234');

insert into clientes(id_cliente, nome_cliente, email_cliente, data_nascimento, telefone_cliente)
values (10, 'Lucas Ribeiro', 'lucas.ribeiro@email.com', '1996-08-02', '+5511989012345');

select * from clientes;

insert into produtos(id_produto, nome_produto, preço_produto)
values (1, 'Coxinha', '5.50');

insert into produtos(id_produto, nome_produto, preço_produto)
values (2, 'Pastel de Queijo', '4.75');

insert into produtos(id_produto, nome_produto, preço_produto)
values (3, 'Refrigerante 350ml', '3.00');

insert into produtos(id_produto, nome_produto, preço_produto)
values (4, 'Suco Natural', '4.00');

insert into produtos(id_produto, nome_produto, preço_produto)
values (5, 'Pão de Queijo', '2.50');

insert into produtos(id_produto, nome_produto, preço_produto)
values (6, 'Bolo de Cenoura', '6.00');

insert into produtos(id_produto, nome_produto, preço_produto)
values (7, 'Esfirra de Carne', '4.50');

insert into produtos(id_produto, nome_produto, preço_produto)
values (8, 'Sanduíche Natural', '7.25');

insert into produtos(id_produto, nome_produto, preço_produto)
values (9, 'Salgado de Frango', '5.25');

insert into produtos(id_produto, nome_produto, preço_produto)
values (10, 'Água Mineral 500ml', '2.00');

select * from produtos;

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (1, '2009-08-01', '150.75');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (2, '2009-08-02', '320.50');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (3, '2009-08-03', '450.00');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (4, '2009-08-04', '275.25');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (5, '2009-08-05', '125.00');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (6, '2009-08-06', '600.80');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (7, '2009-08-07', '800.00');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (8, '2009-08-08', '230.45');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (9, '2009-08-09', '145.99');

insert into faturas(id_fatura, data_criacao, valor_fatura)
values (10, '2009-08-10', '385.20');

select * from faturas;


-- LISTA 2


-- Criação do banco de dados

create database biblioteca;

-- Criação de tabelas

create table usuarios(
id_usuario int auto_increment primary key,
nome varchar(100),
email varchar(150) unique,
data_cadastro date
);

desc usuarios;

create table livros(
id_livro int auto_increment primary key,
titulo varchar(70),
autor varchar(30),
ano_publicacao year
);

desc livros;

create table categorias(
id_categoria int auto_increment primary key,
nome_categoria varchar(30)
);

alter table livros
add column id_editora int not null;

alter table livros
add constraint editora_id_editora
foreign key (id_editora) references editoras (id_editora);

desc categorias;

create table emprestimos(
id_emprestimo int auto_increment primary key,
data_emprestimo date,
data_devolucao date,
id_usuario int not null,
id_livro int not null
);

alter table emprestimos
add constraint usuarios_id_usuario
foreign key (id_usuario) references usuarios (id_usuario);

alter table emprestimos
add constraint livros_id_livro
foreign key (id_livro) references livros (id_livro);

desc emprestimos;

create table editoras(
id_editora int auto_increment primary key,
nome_editora varchar(30)
);

desc editoras;

create table livros_categorias(
id_livros_categorias int primary key,
id_livro int not null,
id_categoria int not null
);

alter table livros_categorias
add constraint livros2_id_livro
foreign key (id_livro) references livros (id_livro);

alter table livros_categorias
add constraint categorias_id_categoria
foreign key(id_categoria) references categorias (id_categoria);

desc

-- Inserção de dados

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (1, 'João Silva', 'joao@exemplo.com', '2024-01-15');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (2, 'Maria Oliveira', ' maria@exemplo.com', '2024-02-20');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (3, 'Ana Costa', 'ana@exemplo.com', '2024-03-12');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (4, 'Eduarda Santos', 'eduarda@exemplo.com', '2024-05-06');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (5, 'Vitor Henrique', 'vitor@exemplo.com', '2023-10-14');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (6, 'julia Tavares', 'julia@exemplo.com', '2024-08-19');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (7, 'Pedro Martins', 'pedro@exemplo.com', '2025-02-01');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (8, 'Gabriel Braga', 'gabriel@exemplo.com', '2022-05-12');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (9, 'Arthur Oliveira', 'arthur@exemplo.com', '2023-11-03');

insert into usuarios (id_usuario, nome, email, data_cadastro)
values (10, 'Nicole Ferreira', 'nicole@exemplo.com', '2024-12-05');

select * from usuarios;

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (1, 'O Senhor dos Anéis', 'J.R.R. Tolkien', '1954');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (2, '1984', 'George Orwell', '1949');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (3, 'Dom Casmurro', 'Machado de Assis', '1899');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (4, 'Pelas Entranhas', 'Triz Parizotto', '2024');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (5, 'A Biblioteca da Meia-noite', 'Matt Haig', '2020');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (6, 'O Ceifador', 'Neal Shusterman', '2016');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (7, 'Heartstopper', 'Alice Oseman', '2019');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (8, 'Enquanto Eu Não Te Encontro', 'Pedro rhuas', '2021');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (9, 'Vermelho, Branco e Sangue Azul', 'Casey McQuiston', '2019');

insert into livros (id_livro, titulo, autor, ano_publicacao)
values (10, 'Alice no País das Maravilhas (edição pesadelo)', 'Lewis Carroll', '2024');

select * from livros;

insert into categorias (id_categoria, nome_categoria)
values (1, 'Ficção');

insert into categorias (id_categoria, nome_categoria)
values (2, 'Clássicos');

insert into categorias (id_categoria, nome_categoria)
values (3, 'Fantasia');

insert into categorias (id_categoria, nome_categoria)
values (4, 'Horror');

insert into categorias (id_categoria, nome_categoria)
values (5, 'Romance');

insert into categorias (id_categoria, nome_categoria)
values (6, 'Ação');

insert into categorias (id_categoria, nome_categoria)
values (7, 'Biografia');

insert into categorias (id_categoria, nome_categoria)
values (8, 'Religião');

insert into categorias (id_categoria, nome_categoria)
values (9, 'História');

insert into categorias (id_categoria, nome_categoria)
values (10, 'Saúde');

select * from categorias;

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (1, '2024-08-01', '2024-08-15', '1', '1');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (2, '2024-08-02', 'NULL', '4', '2');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (3, '2024-05-14', '2024-05-20', '2', '6');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (4, '2024-06-10', '2024-06-15', '6', '9');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (5, '2024-08-05', 'NULL', '7', '7');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (6, '2024-01-20', '2024-01-28', '4', '10');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (7, '2024-03-19', '2024-03-23', '5', '4');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (8, '2024-08-03', 'NULL', '10', '5');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (9, '2024-08-04', 'NULL', '9', '3');

insert into emprestimos (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro)
values (10, '2024-07-09', '2024-07-19', '8', '8');

select * from emprestimos;

insert into editoras (id_editora, nome_editora)
values (1, 'Editora Aventura');

insert into editoras (id_editora, nome_editora)
values (2, 'Editora Pioneira');

insert into editoras (id_editora, nome_editora)
values (3, 'Editora Maquinária');

insert into editoras (id_editora, nome_editora)
values (4, 'Editora Kapulana');

insert into editoras (id_editora, nome_editora)
values (5, 'Editora Mostarda');

insert into editoras (id_editora, nome_editora)
values (6, 'Editora Biruta');

insert into editoras (id_editora, nome_editora)
values (7, 'Editora Abacatte');

insert into editoras (id_editora, nome_editora)
values (8, 'Editora Projeto');

insert into editoras (id_editora, nome_editora)
values (9, 'Editora Malê');

insert into editoras (id_editora, nome_editora)
values (10, 'Editora Bom tempo');

select * from editoras;

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (1, '1', '3');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (2, '2', '1');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (3, '6', '1');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (4, '8', '5');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (5, '10', '3');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (6, '7', '5');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (7, '9', '5');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (8, '5', '1');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (9, '3', '5');

insert into livros_categorias (id_livros_categorias, id_livro, id_categoria)
values (10, '4', '4');

select * from livros_categorias;


-- LISTA 3

-- Atualizações

update usuarios set nome = 'João Souza' where id_usuario = 1;

update usuarios set email = 'maria.oliveira@exemplo.com' where id_usuario = 2;

select * from usuarios;

update livros set titulo = 'Mil Novecentos e Oitenta e Quatro' where id_livro = 2;

select * from livros;

update categorias set nome_categoria = 'Literatura Clássica' where id_categoria = 2;

select * from categorias;

update emprestimos set data_devolucao = '2024-08-10' where id_emprestimo = 2;

select * from emprestimos;

update livros set ano_publicacao = '1900' where id_livro = 3;

select * from livros;

update editoras set nome_editora = 'Editora Literária' where id_editora = 1;

select * from editoras;

update livros_categorias set id_categoria = '8' where id_livros_categorias = 1;

select * from livros_categorias;

update usuarios set data_cadastro = '2024-05-15' where id_usuario = 3;

select * from usuarios;


-- Exclusões


ALTER TABLE emprestimos
DROP FOREIGN KEY usuario_id_usuario;

ALTER TABLE emprestimos
ADD CONSTRAINT usuario_id_usuario
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
ON DELETE CASCADE;

DELETE FROM usuarios WHERE id_usuario = 1;

select * from usuarios;

ALTER TABLE emprestimos
DROP FOREIGN KEY livro_id_livro;

ALTER TABLE emprestimos
ADD CONSTRAINT livro_id_livro
FOREIGN KEY (id_livro) REFERENCES livros (id_livro)
ON DELETE CASCADE;

ALTER TABLE livros_categorias
DROP FOREIGN KEY livros2_id_livro;

ALTER TABLE livros_categorias
ADD CONSTRAINT livro2_id_livro
FOREIGN KEY (id_livro) REFERENCES livros (id_livro)
ON DELETE CASCADE;

DELETE FROM livros WHERE id_livro = 3;

ALTER TABLE livros_categorias
DROP FOREIGN KEY categorias_id_categoria;

ALTER TABLE livros_categorias
ADD CONSTRAINT categoria_id_categoria
FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
ON DELETE CASCADE;

DELETE FROM categorias WHERE id_categoria = 3;

select * from categorias;

DELETE FROM emprestimos
WHERE data_devolucao IS NOT NULL;

select * from emprestimos;

ALTER TABLE livros
DROP FOREIGN KEY editoras_id_editora;

ALTER TABLE livros
ADD CONSTRAINT editoras_id_editora
FOREIGN KEY (id_editora) REFERENCES editoras (id_editora)
ON DELETE CASCADE;

DELETE FROM editoras WHERE id_editora = 2;

select * from editoras;