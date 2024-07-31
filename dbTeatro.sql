create table spettacoli(
id int auto_increment primary key,
titolo varchar(255),
genere varchar(20),
durata smallint
);

create table teatri(
id int auto_increment primary key,
nome varchar(30),
indirizzo varchar(100),
città varchar(50)
);

create table repliche(
id int auto_increment primary key,
id_spettacolo int,
id_teatro int,
data_ora datetime,
constraint repliche_spett foreign key(id_spettacolo) references spettacoli(id),
constraint repliche_teatri foreign key(id_teatro) references teatri(id)
);

INSERT INTO teatri (nome, indirizzo, città)
VALUES
('Teatro alla Scala', 'Via Filodrammatici, 2', 'Milano'),
('Teatro San Carlo', 'Via San Carlo, 98', 'Napoli'),
('Teatro La Fenice', 'Campo San Fantin, 1965', 'Venezia'),
('Teatro di San Carlo', 'Piazza del Plebiscito, 1', 'Napoli');

-- Inserimento dati di prova per la tabella Spettacoli
INSERT INTO spettacoli (titolo, genere, durata)
VALUES
('Il Barbiere di Siviglia', 'Commedia Musicale', 150),
('La Traviata', 'Opera', 180),
('Romeo e Giulietta', 'Dramma', 120),
('Il lago dei cigni', 'Balletto', 135),
('La Bohème', 'Opera', 165);

-- Inserimento dati di prova per la tabella Repliche
INSERT INTO repliche (id_spettacolo, id_teatro, data_ora)
VALUES
(1, 1, '2024-04-01 19:00:00'),
(2, 2, '2024-04-02 20:30:00'),
(3, 3, '2024-04-03 18:00:00'),
(4, 4, '2024-04-04 17:30:00'),
(5, 1, '2024-04-05 19:30:00'),
(1, 2, '2024-04-06 20:00:00'),
(2, 3, '2024-04-07 19:15:00'),
(3, 4, '2024-04-08 18:45:00'),
(4, 1, '2024-04-09 20:20:00'),
(5, 2, '2024-04-10 19:45:00');




select * from repliche;


-- 1 Trova tutti i teatri situati a Milano.
select *
from teatri
where città="milano";

-- 2 Mostra l'elenco di tutti gli spettacoli ordinati per durata decrescente
select *
from spettacoli 
order by durata desc;

-- 3 Calcola il numero totale di repliche per ciascun teatro
select count(id_spettacolo) as numeroRepliche, nome, città
from teatri, repliche
where teatri.id=repliche.id_teatro
group by nome,città;

-- 4 Trova lo spettacolo con il maggior numero di repliche



select id_spettacolo,
from repliche 
group by id_spettacolo
having count(*)=(
		select count(*) as numeroRepl
		from repliche        
		group by id_spettacolo)as mn;   




-- 5 Aggiorna la durata di uno spettacolo.

-- 6 Trova il teatro che ospita il maggior numero di spettacoli.

-- 7 Conta quanti spettacoli diversi sono stati rappresentati in totale.

-- 8 segnala come "prima" il primo spettacolo e come "replica" tutti gli altri







