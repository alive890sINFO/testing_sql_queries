--create table reparti(
--id int identity(1,1) primary key,
--reparto varchar(50) not null,
--)

--create table dipendenti(
--idDipendente int identity(1,1) primary key,
--cognome varchar(50) not null,
--nome varchar(50) not null,
--email varchar(50),
--dataAssunzione date default(getdate()),
--stipendio float ,
--idTutor int null foreign key references dipendenti(idDipendente),
--idReparto int not null foreign key references reparti(id),
--constraint check_stipendio check(stipendio>0)
--)

--tutor e dipendente corrispondente
select d1.idDipendente as 'id dipendente',d1.nome as 'nome dipendente',d2.idDipendente as 'id tutor', d2.nome as 'nome_tutor' from dipendenti d1,dipendenti d2 where d1.idDipendente=d2.idTutor