SELECT * FROM esamef.cliente;

insert into cliente (`id_cliente`, `cognome`, `email`, `nome`, `telefono`)values
    
	
	(3	,"CORIZIO	","corizio@libero.it	 ","CARLO	    ","06/76547648 "),
(4	,"FRANCINI	","francini@gmail.com","  CASSANDRA	","06/76586548 "),
(5	,"MARTORANO	","martorano@yahho.it","  MARCO	    ","06/543326565"),
(6	,"FIORULLO	","fiorullo@hotmail.it","  ERIKA	    ","06/98765762 "),
(7	,"GRASSO	","grasso@yahoo.it	 ","    IVAN	","06/5483678  "),
(8	,"BERTUTTI	","bertutti@gmail.com","  FABRIZIO	","06/5367548  "),
(9	,"CERTORINI	","certorini@libero.it","  GIANNA	","06/53645872 "),
(10	,"RADERI	","raderi@yahoo.it	 ","    ANTONIO	","06/78363459 "),
(11	,"PAGLINO	","paglino@tiscali.it","  ALESSIO	","06/67598721 "),
(12	,"RORESTI	","roresti@tiscali.it","  VERONICA	","06/3678465  "),
(13	,"VIONETTI	","vionetti@gmail.com","  ARRIGO	    ","06/34254367 "),
(14	,"SARTIRO	","sartiro@yahoo.it	 ","SIMONE	    ","06/845673865");

INSERT INTO teatro (cod_teatro, nome,indirizzo, citta,provincia,telefono,posti )
VALUES
("T001"	,"Teatro Agorà", 	        "Via della Penitenza, 33",	        "ROMA",	"RM",	"06 6874167",	"265"),
("T002"	,"Teatro Argentina",	    "Largo di Torre Argentina, 52", 	"ROMA",	"RM",	"06 6840 00314",	"405"),
("T003"	,"Teatro Ambra Jovinelli",	"Via Guglielmo Pepe, 43"	   ,         "ROMA",	"RM",	"06 83082884",	"392");

insert into spettacolo (`cod_spettacolo`, `titolo`, `autore`, `regista`, `prezzo`,`cod_teatro`)values
("S001",	"Cats"                          ,"Andrew Lloyd Webber","Trevor Nunn"    , "50", 	"T001"),
("S002",	"Titanic"                       ,"Peter Stone"	,"Maury Yeston"    , "50", 	"T001"),
("S003",	"Peter Pan"                     ,"Mark Moose Charlap",	"Jerome Robbins"	   , "65", 	"T002"),
("S004",	"Oliver!"                       ,"Charles Dickens",	"Susan Stroman"    , "65", 	"T002"),
("S005",	"Anastasia"                     ,"Terrence McNally",	"Darko Tresnjak"    , "30", 	"T003"),
("S006",	"Colazione da Tiffany"	        ,"Truman Capote","Joseph Anthony"    , "30", 	"T003");




insert into replica(cod_replica,cod_spettacolo,data_replica) values
("R001",    	"S001",     	"2018-10-05"),
("R002",    	"S001",         "2018-10-06"),
("R003",    	"S001",         "2018-10-07"),
("R004",    	"S001",         "2018-10-08"),
("R005",    	"S001",         "2018-10-09"),
("R006",    	"S002",     	"2018-11-12"),
("R007",    	"S002",     	"2018-11-13"),
("R008",    	"S002",     	"2018-11-14"),
("R009",    	"S002",     	"2018-11-15"),
("R010",    	"S002",     	"2018-11-16"),
("R011",    	"S003",     	"2019-01-05"),
("R012",    	"S003",     	"2019-01-06"),
("R013",    	"S003",     	"2019-01-07"),
("R014",    	"S003",     	"2019-01-08"),
("R015",    	"S003",     	"2019-01-09"),
("R016",    	"S004",     	"2019-01-12"),
("R017",    	"S004",     	"2019-01-13"),
("R018",    	"S004",     	"2019-01-14"),
("R019",    	"S004",     	"2019-01-15"),
("R020",    	"S004",     	"2019-01-16"),
("R021",    	"S005",         "2018-11-05"),
("R022",    	"S005",         "2018-10-06"),
("R023",    	"S005",         "2018-10-07"),
("R024",    	"S005",     	"2018-11-18"),
("R025",    	"S005",     	"2018-11-19"),
("R026",    	"S006",     	"2018-12-12"),
("R027",    	"S006",     	"2018-12-13"),
("R028",    	"S006",     	"2018-12-14"),
("R029",    	"S006",     	"2018-12-15"),
("R030",    	"S006",     	"2018-12-16");


select *
from replica, spettacolo, teatro
where replica.cod_spettacolo=spettacolo.cod_spettacolo and teatro.cod_teatro=spettacolo.cod_teatro;


 