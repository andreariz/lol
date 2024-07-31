CREATE TABLE Docenti (
  CodDocente int,
  Nome varchar(50),
  Cognome varchar(50),
  Email varchar(100),
  PRIMARY KEY (CodDocente)
);

CREATE TABLE Corsi (
  CodCorso int,
  NomeCorso varchar(100),
  Crediti tinyint,
  CodDocente int,
  PRIMARY KEY (CodCorso),
  KEY CodDocente (CodDocente),
  CONSTRAINT corsi_docenti FOREIGN KEY (CodDocente) REFERENCES Docenti (CodDocente)
);

CREATE TABLE Studenti (
  Matricola int,
  Nome varchar(50),
  Cognome varchar(50),
  DataNascita date,
  PRIMARY KEY (Matricola)
);

CREATE TABLE Esami (
  Matricola int,
  CodCorso int,
  Data date,
  Voto tinyint,
  PRIMARY KEY (Matricola,CodCorso),
  KEY CodCorso (CodCorso),
  CONSTRAINT esami_studenti FOREIGN KEY (Matricola) REFERENCES Studenti (Matricola),
  CONSTRAINT esami_corsi FOREIGN KEY (CodCorso) REFERENCES Corsi (CodCorso)
);

INSERT INTO Docenti VALUES (201,'Paolo','Mazzoni','paolo.mazzoni@gmail.it'),(202,'Laura','Ferrari','laura.ferrari@universita.it'),(203,'Marco','Ricci','marco.ricci@universita.it'),(204,'Elena','Galli','elena.galli@universita.it'),(205,'Mauro','De Rosa','mderosa@gmail.com');

INSERT INTO Corsi VALUES (101,'Matematica',6,201),(102,'Informatica',9,202),(103,'Fisica',6,203),(104,'Chimica',9,204),(105,'Biologia',7,201),(106,'Storia dell\'arte',8,202),(107,'Letteratura',10,203),(108,'Economia',7,204);

INSERT INTO Studenti VALUES (1001,'Mario','Rossi','2000-01-01'),(1002,'Luca','Verdi','1999-02-02'),(1003,'Anna','Bianchi','2000-03-03'),(1004,'Sara','Neri','1999-04-04'),(1005,'Giovanni','Gialli','2000-05-05'),(1006,'Chiara','Rosa','1999-06-06'),(1007,'Alessandro','Marroni','2000-07-07'),(1008,'Elisa','Viola','1999-08-08'),(1009,'Paolo','Rossi','2001-11-12');

INSERT INTO Esami VALUES (1001,101,'2020-01-10',28),(1001,102,'2020-01-15',30),(1002,101,'2020-01-10',25),(1002,103,'2020-01-20',27),(1003,101,'2020-01-10',30),(1003,104,'2020-01-25',26),(1004,102,'2020-01-15',24),(1004,103,'2020-01-20',29),(1005,101,'2020-01-10',26),(1006,101,'2020-01-10',29),(1006,102,'2020-01-15',28),(1006,104,'2020-01-25',29),(1007,101,'2020-01-10',25),(1007,104,'2020-01-20',28),(1008,102,'2020-01-15',27),(1008,103,'2020-01-20',30);



-- 1. Elenco di tutti i docenti con i relativi corsi

-- 2. Elenco di tutti gli studenti con i voti ottenuti negli esami

-- 3. Elenco degli esami superati da uno studente specifico (ad esempio, Mario Rossi)
select NomeCorso, e.Voto
from corsi c, esami e, studenti s
where c.CodCorso=e.CodCorso and s.Matricola=e.Matricola and nome="mario" and cognome="rossi";

select * 
from studenti;

-- 4. Media dei voti di ogni studente, arrotondati a 2 cifre decimali


-- 5. Numero di esami sostenuti per ogni corso
select count(c.codcorso  ) as numeroEsami, nomecorso
from esami e, corsi c
where e.codCorso=c.CodCorso
group by nomecorso;



-- 6. Elenco dei docenti che non hanno corsi assegnati
select nome,cognome, NomeCorso
from docenti d
left join corsi c
on d.CodDocente=c.CodDocente where c.CodDocente is null;

select nome, cognome
from docenti
where CodDocente not in( select codDocente
						from corsi);




-- 7. Studenti che hanno superato un esame con un voto maggiore di 28

-- 8. Elenco dei corsi con i relativi docenti e il numero di studenti che hanno sostenuto l'esame




