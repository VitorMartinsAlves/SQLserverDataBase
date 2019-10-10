create database Boletim;

-- Definindo que  as alterações serão feitas no banco de dados Boletim, se não, ele usa o banco master
use Boletim;

-- Criando a tabela Aluno
create table Aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	NomeAluno VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT
);

-- Criando a tabela Materia
create table Materia(
    IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
    Materia VARCHAR(50)
            );

            -- criando a tabela Trabalho com chaves estrangeiras
            create table Trabalho(
                IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
                Nota DECIMAL,
                -- Chaves estrangeiras
                IdMateria INT FOREIGN KEY (IdMateria) REFERENCES Materia(IdMateria),
                IdAluno INT FOREIGN KEY (IdAluno) REFERENCES Aluno(IdAluno)
            );

/* Alterando uma tabela */
alter table Materia
ADD Teste VARCHAR(2);

/* Excluir coluna */
alter table Materia
drop column Teste;

/*Inserindo dado na tabela Aluno*/
INSERT INTO Aluno (NomeAluno, Ra, Idade) VALUES ('Larissa', 'R123', 20);

/*Inserindo dado na tabela Materia*/
INSERT INTO Materia (Materia) VALUES ('Banco de dados');

/* Mostra dados especificos de um aluno */
--  puxa pelo   id os dados referentes ao aluno
select * from aluno where IdAluno = 2;

-- puxa o determinado nome usando "like" e "%" para definir se o que vem antes ou dps do nome interfere
select * from aluno where nome like '%Bruna%';


-- Ordenar por nome do aluno de forma ascendente
select * from aluno order by Nome asc; 

-- Ordenar por nome do aluno de forma decrescente
select * from aluno order by Nome desc;

-- Exibir todos os dados da tabela que você juntou
-- aluno refere-se a tabela aluno e id aluno se refere ao numero do aluno e trabaho puxa pela tabela idaluno a nota do trabalho
inner join aluno on aluno.IdAluno = trabalho.IdAluno;

-- Juntamos as 3 tabelas usando inner  join 
-- deixamos somentes os dados que nos interessam
Select
	aluno.Nome,
	aluno.Ra,
	aluno.IDADE,
	materia.Nota
from tabalho
inner join materia on materia.IdMateria = trabalho.IdMateria
inner join aluno on aluno.IdAluno = trabalho.IdAluno;


-- apaga todos os registros de uma tabela
truncate table NomeDepartamento;

select * from aluno;

-- Utlizamos a função nativa count para retornar o numero de registros na minha tabela

select count (*) from aluno;

-- usamos alias "as" para renomear a coluna
select count (*) as total_registros from aluno;

/* Pegamos a idade maxima dos alunos */
select max(idade) as idade_maxima from aluno;

/*Pegamos a idade minima dos alunos */
select min(idade) as idade_minima from aluno;

/*pegamos a media de idades dos alunos */
select avg(idade) as media_de_idades from aluno;

/* Somamos as idades */
select sum(idade) as soma_das_idades from aluno;

/*Juntamos todas as funçoes em uma unica consulta */
select 
	count(*) as total,
	max(idade) as idade_maxima,
	min(idade) as idade_minima,
	avg(idade) as media_das_idades,
	sum(idade) as soma_das_idades
from aluno;

-- substring , atributo "Nome" , valor "2" (pega apartir do segundo caractere),valor 3 (pega do 2 até o terceiro caractere )
select SUBSTRING(Nome,3,6) as cortado from aluno;

/*upper
Deixa tudo minusculo*/
select upper(nome) as nome from aluno;

/* lower 
deixa as letras minusculas */
select lower(nome) as nome from aluno;