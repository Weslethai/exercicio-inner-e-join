use alunos_e_cidades;
create table Cidades ( -- tabela criada referente a cidades
id int primary key ,
Nome varchar (60)	not null,
populacao int 
);
insert into Cidades values	-- valores referente a tabela cidades
(1,'Arraial dos Tucanos', 42632),
(2,'Springfield'        , 13820),
(3,'Hill Valley'		, 27383),
(4,'Coruscant'			, 19138),
(5,'Minas Tirith'		, 31394);

-- a tabela abaixo sera criada referente a entidade alunos
CREATE table Alunos( 
id 			int 				PRIMARY KEY,
nome 		varchar (60)		not null,
data_nasc	date,
cidade_id 	int,
 FOREIGN key(cidade_id) REFERENCES Cidades(id)
);
insert into Alunos values 	-- valores das colunas referente da tabela alunos
(1,		'Immanuel Kant'		, date('1724-04-22'),	4),
(2,		'Alan Turing'		, date('1912-06-23'),	3),
(3,		'George Boole'		, date('2002-01-01'),	1),
(4,		'Lynn Margulis'		, date('1991-08-12'), 3),
(5,		'Nicola Tesla'		, date('2090-01-08'),	NULL),
(6,		'Ada Lovelace'		, date('1978-05-28'),	4),
(7,		'Claude Shannon'	, date('1982-10-15'),	3),
(8,		'Charles Darwin'	, date('2010-02-06'),	NULL),
(9,		'Marie Curie'		, date('2007-07-12'),	3),
(10,	'Carl Sagan'		, date('2000-11-20'),	1),
(11,	'Tim Berners-lee'	, date('1973-12-05'),	4),
(12,	'Richard Feynman'	, date('1982-09-12'),1);
-- abaixo sera utilizado o comando inner e join.
select*from Alunos inner 
join Cidades
on Cidades.id = Alunos.cidade_id;