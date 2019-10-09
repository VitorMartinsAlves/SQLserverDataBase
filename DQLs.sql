/* Exibe os dados da tabela Aluno*/
select * from Aluno;

/* Exibindo os dados da tabela Materia*/
select * from Materia;

/* Alterando dados*/
update Aluno SET 
    NomeAluno = 'Larissa Santos', 
	Idade = 21
WHERE IdAluno = 1;

/* IMPORTANTE */
/* Delete ou Update, sempre com where */

/* Exclui um campo da tabela onde o Id seja 2 */
DELETE FROM materia
WHERE IdMateria = 2;


