CREATE DATABASE IF NOT EXISTS db_discoteca2
COLLATE utf8mb4_general_ci
CHARSET utf8mb4;

USE db_discoteca2;

CREATE TABLE IF NOT EXISTS tb_genero (
	id_genero INT PRIMARY KEY NOT NULL,
    nome VARCHAR(20) NOT NULL
);

ALTER TABLE tb_genero ADD
CONSTRAINT uq_nome_genero UNIQUE (nome);

CREATE TABLE IF NOT EXISTS tb_gravadora (
	id_gravadora INT PRIMARY KEY NOT NULL,
    nome VARCHAR(20) NOT NULL,
CONSTRAINT uq_nome_gravadora UNIQUE (nome)
);

CREATE TABLE IF NOT EXISTS tb_artista (
	id_artista INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_disco(
	id_disco INT PRIMARY KEY NOT NULL,
	titulo_disco VARCHAR(100) NOT NULL,
	tempo_disco FLOAT NOT NULL,
	ano_lancamento YEAR NOT NULL,
    id_artista INT NOT NULL,
    id_gravadora INT NOT NULL,
    id_genero INT NOT NULL,
CONSTRAINT fk_id_artista FOREIGN KEY (id_artista) REFERENCES tb_artista (id_artista),
CONSTRAINT fk_id_gravadora FOREIGN KEY (id_gravadora) REFERENCES tb_gravadora (id_gravadora),
CONSTRAINT fk_id_genero FOREIGN KEY (id_genero) REFERENCES tb_genero (id_genero)
);


CREATE TABLE IF NOT EXISTS tb_musica (
	id_musica INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR (50) NOT NULL,
    tempo_musica FLOAT,
    id_disco INTEGER NOT NULL,
CONSTRAINT fk_id_disco FOREIGN KEY (id_disco) REFERENCES tb_disco (id_disco)
);

ALTER TABLE tb_musica
DROP CONSTRAINT fk_id_disco;

ALTER TABLE tb_disco
DROP CONSTRAINT fk_id_artista,
DROP CONSTRAINT fk_id_genero,
DROP CONSTRAINT fk_id_gravadora;


ALTER TABLE tb_disco
MODIFY id_disco INTEGER NOT NULL AUTO_INCREMENT,
MODIFY id_artista INTEGER NOT NULL DEFAULT '1',
MODIFY id_genero INTEGER NOT NULL DEFAULT '1',
MODIFY id_gravadora INTEGER NOT NULL DEFAULT '1';

ALTER TABLE tb_musica
MODIFY id_musica INTEGER NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_gravadora
MODIFY id_gravadora INTEGER NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_genero
MODIFY id_genero INTEGER NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_artista
MODIFY id_artista INTEGER NOT NULL AUTO_INCREMENT;

ALTER TABLE tb_musica
ADD CONSTRAINT fk_id_disco FOREIGN KEY (id_disco) REFERENCES tb_disco (id_disco);

ALTER TABLE tb_disco
ADD CONSTRAINT fk_id_artista FOREIGN KEY (id_artista) REFERENCES tb_artista (id_artista),
ADD CONSTRAINT fk_id_genero FOREIGN KEY (id_genero) REFERENCES tb_genero (id_genero),
ADD CONSTRAINT fk_id_gravadora FOREIGN KEY (id_gravadora) REFERENCES tb_gravadora (id_gravadora);

INSERT INTO tb_artista (nome, idade) VALUES('Desconhecido','0');
INSERT INTO tb_gravadora (nome) VALUES ('Desconhecida');
INSERT INTO tb_genero (nome) VALUES ('Ecletico');

USE db_discoteca2;

INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Aaron Wiley",17),
  ("Dylan Kim",20),
  ("Victoria Ortega",65),
  ("Hector Sanford",76),
  ("Abdul Morton",76),
  ("Rhoda Alston",29),
  ("Brenda Baldwin",79),
  ("Bruce Lopez",23),
  ("Stewart Velez",86),
  ("Macon Fulton",59);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Savannah Heath",42),
  ("Martina Benton",52),
  ("Illiana Taylor",29),
  ("Allistair Irwin",60),
  ("Jael Anthony",72),
  ("Igor Prince",89),
  ("Oprah Mendoza",78),
  ("Vaughan Parker",60),
  ("Ariel Anderson",94),
  ("Chancellor O'brien",86);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Audrey Morris",14),
  ("Lane Stevens",102),
  ("Jarrod Maddox",83),
  ("Sarah Cameron",20),
  ("Mariam Rhodes",20),
  ("Jordan Carrillo",99),
  ("Benjamin Quinn",60),
  ("Jaime Cash",23),
  ("Neve Lawrence",21),
  ("Samantha Chandler",41);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Eve Rollins",96),
  ("Tad Trujillo",22),
  ("Jeremy Michael",78),
  ("Fallon Finley",77),
  ("Lila Combs",20),
  ("Jeanette Pratt",51),
  ("Althea Lott",96),
  ("Alisa Quinn",99),
  ("Drew Mckay",65),
  ("Colleen Sexton",26);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Timothy Bolton",19),
  ("Hilda Shepherd",75),
  ("Magee Palmer",42),
  ("Keith Delacruz",35),
  ("Vanna Green",56),
  ("Ali Bullock",28),
  ("Yvonne Young",73),
  ("Giacomo Maldonado",38),
  ("Jorden Cunningham",52),
  ("Nayda Alexander",100);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Cedric Banks",63),
  ("Keely Dixon",78),
  ("Dalton Jensen",103),
  ("Colin Warren",29),
  ("Noel Valenzuela",45),
  ("Harlan Bartlett",102),
  ("Iris Roberson",12),
  ("Aquila Munoz",62),
  ("Jeremy Mcbride",61),
  ("Unity Dyer",39);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Tad Guthrie",68),
  ("Rana Anderson",22),
  ("Joan Mcdonald",62),
  ("Phelan Stephenson",59),
  ("Veda Strong",74),
  ("Declan Lane",13),
  ("Alexander Simmons",24),
  ("Veda Savage",92),
  ("Francesca Ford",20),
  ("Marshall Russo",57);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Caldwell Lloyd",90),
  ("Kalia Morton",18),
  ("Roth Hansen",30),
  ("Burton Bowen",48),
  ("Nell Mendez",98),
  ("Marvin Moran",84),
  ("Zachery Albert",90),
  ("Kameko Thornton",57),
  ("Risa Maxwell",92),
  ("Keegan Lawson",44);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Gil Glass",81),
  ("Tyrone Nixon",95),
  ("Karly Rollins",77),
  ("Avye Lopez",58),
  ("Xander Bright",25),
  ("Bert Preston",38),
  ("Hiroko Kirby",22),
  ("Vielka Lott",51),
  ("Jonah Donovan",76),
  ("Savannah Solis",81);
INSERT INTO tb_artista (`nome`,`idade`)
VALUES
  ("Orlando Alston",101),
  ("Alvin Cervantes",92),
  ("Xena Griffith",40),
  ("Deanna Guzman",89),
  ("Joseph Green",66),
  ("Murphy Parks",36),
  ("Drew Horne",38),
  ("Nadine Shepard",82),
  ("Tanner Sykes",99),
  ("Gary Mccarty",49);
  
  USE db_discoteca2;

ALTER TABLE tb_gravadora
MODIFY nome VARCHAR(255) NOT NULL;

INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Ipsum Phasellus Vitae Corporation"),
  ("Tellus Sem Mollis Foundation"),
  ("Nullam Institute"),
  ("Tortor Dictum Incorporated"),
  ("Urna Nec Luctus Limited"),
  ("Eu Augue Porttitor Institute"),
  ("Iaculis Enim Sit LLP"),
  ("Quam Dignissim Pharetra Institute"),
  ("Phasellus In Felis LLP"),
  ("Nulla Corp.");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Ut Inc."),
  ("Ultricies Corporation"),
  ("Elit Curabitur Inc."),
  ("Nam Nulla Magna Inc."),
  ("Fringilla Est Mauris Inc."),
  ("Donec Egestas Corp."),
  ("Gravida PC"),
  ("Vestibulum Massa Rutrum Inc."),
  ("Lectus Pede Ltd"),
  ("Ac Company");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Nullam Vitae Corp."),
  ("Id Enim Curabitur Ltd"),
  ("Orci Lobortis Limited"),
  ("Orci Sem Eget Inc."),
  ("Sem Magna Corporation"),
  ("Nunc Limited"),
  ("Dignissim Pharetra LLP"),
  ("Purus Ac Inc."),
  ("Mauris Eu LLP"),
  ("Cum Sociis Corporation");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Viverra Donec Corporation"),
  ("Mollis Integer Industries"),
  ("A Dui Corp."),
  ("Donec Feugiat Inc."),
  ("Scelerisque Sed LLP"),
  ("Dictum Mi Corporation"),
  ("Quisque Fringilla PC"),
  ("Auctor Odio LLP"),
  ("Suspendisse Dui Associates"),
  ("Non Associates");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Semper Auctor Foundation"),
  ("Accumsan Convallis Corporation"),
  ("Congue Elit Sed Corporation"),
  ("Porttitor Vulputate Incorporated"),
  ("Consectetuer Inc."),
  ("Ligula Nullam Enim Foundation"),
  ("Laoreet Lectus Limited"),
  ("Quisque Varius Ltd"),
  ("Est Mauris Rhoncus Foundation"),
  ("Ornare Industries");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Risus At Ltd"),
  ("Fusce Dolor Quam Inc."),
  ("Interdum Enim Associates"),
  ("Aliquam Fringilla Associates"),
  ("Quis Company"),
  ("Montes Foundation"),
  ("Lectus Rutrum Industries"),
  ("Pharetra Industries"),
  ("Eu Corporation"),
  ("Mus Proin Vel Institute");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Aliquet Odio Foundation"),
  ("Lacus Vestibulum Institute"),
  ("Proin Ultrices Inc."),
  ("Purus In Inc."),
  ("Ac Mattis Ltd"),
  ("Nunc Sollicitudin Corporation"),
  ("Nisi LLP"),
  ("Sem Egestas Corporation"),
  ("Sem Elit Inc."),
  ("Magna PC");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Cursus In Company"),
  ("Non Egestas Associates"),
  ("Elementum At Egestas Corporation"),
  ("Tincidunt Nunc Foundation"),
  ("Neque Sed Sem Incorporated"),
  ("Ac Limited"),
  ("Vel Ltd"),
  ("Arcu Et Associates"),
  ("Non Magna PC"),
  ("Tempus Scelerisque Ltd");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("In Sodales Foundation"),
  ("Sed Pharetra Felis Foundation"),
  ("Auctor Nunc Corporation"),
  ("Maecenas Mi Institute"),
  ("Molestie Pharetra Foundation"),
  ("Ut Pharetra Inc."),
  ("Sagittis Nullam Vitae Inc."),
  ("Fermentum Arcu Vestibulum Limited"),
  ("Arcu Ac Orci Associates"),
  ("Nibh Quisque Corp.");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Ultricies Dignissim Lacus Industries"),
  ("Enim Company"),
  ("Gravida Aliquam Industries"),
  ("Nunc Ullamcorper Corp."),
  ("Sit Amet LLC"),
  ("In Consequat Foundation"),
  ("Aliquam Rutrum Industries"),
  ("Vehicula Risus Nulla Limited"),
  ("Ipsum Dolor Sit Limited"),
  ("Fringilla Euismod Enim Limited");

INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Morbi Limited"),
  ("Ut LLC"),
  ("Rutrum Justo Institute"),
  ("Aliquam Vulputate Incorporated"),
  ("Non Nisi Ltd"),
  ("Elementum Lorem LLC"),
  ("Cras Convallis Associates"),
  ("Varius Incorporated"),
  ("Natoque Corp."),
  ("Luctus Et Corp.");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("In Condimentum Institute"),
  ("Non Ltd"),
  ("Sed Pede Nec Corp."),
  ("Mauris Blandit Mattis LLP"),
  ("Magna Tellus Faucibus Corporation"),
  ("Volutpat Ornare Facilisis Associates"),
  ("Enim LLP"),
  ("Cursus In Corp."),
  ("Praesent Eu LLP"),
  ("At Iaculis Quis PC");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Lectus Pede Et LLP"),
  ("Auctor Non Incorporated"),
  ("Morbi Vehicula LLP"),
  ("Scelerisque Neque Industries"),
  ("Nulla Donec LLC"),
  ("Ultrices A PC"),
  ("Facilisis Facilisis Corporation"),
  ("Nulla In Institute"),
  ("Vitae Dolor Donec Institute"),
  ("Suspendisse Tristique LLP");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Tempor Erat Inc."),
  ("Commodo Ipsum Suspendisse Foundation"),
  ("Ut Aliquam PC"),
  ("Semper LLC"),
  ("Fringilla Purus Mauris Associates"),
  ("Dictum Eu Ltd"),
  ("Tempus Mauris Institute"),
  ("Interdum Sed Auctor Associates"),
  ("Elementum Sem Vitae Corp."),
  ("Tincidunt Nibh Phasellus LLC");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Convallis Ligula Donec LLP"),
  ("Consectetuer Euismod Est LLC"),
  ("Vitae Aliquet Corp."),
  ("Faucibus Orci Industries"),
  ("Malesuada Fringilla Associates"),
  ("Lectus Pede Incorporated"),
  ("Vestibulum Massa LLC"),
  ("Placerat Augue Foundation"),
  ("Felis Adipiscing Fringilla LLC"),
  ("Magnis Dis Parturient PC");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Augue Ac LLP"),
  ("Id Mollis Nec Institute"),
  ("Vel Corporation"),
  ("Ac Risus Morbi Ltd"),
  ("Sed Pede Institute"),
  ("Non Enim Commodo Ltd"),
  ("Mauris Erat Institute"),
  ("Ac Orci Corp."),
  ("Auctor PC"),
  ("Porttitor Vulputate LLC");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Neque Et Associates"),
  ("Rhoncus Nullam LLP"),
  ("Eros Incorporated"),
  ("Placerat Incorporated"),
  ("At Pretium Limited"),
  ("At Augue Corp."),
  ("Eu Enim Etiam Foundation"),
  ("Vitae Velit Company"),
  ("Maecenas Iaculis Aliquet Incorporated"),
  ("Ridiculus LLP");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Vitae Mauris Corporation"),
  ("Sed Pede Cum Corp."),
  ("Sit Amet Ltd"),
  ("Augue Corp."),
  ("Cursus Integer Limited"),
  ("Eget Magna Company"),
  ("Mi Ac Institute"),
  ("Integer Sem Institute"),
  ("Nibh Dolor Associates"),
  ("Orci Tincidunt Inc.");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Non Massa Institute"),
  ("Ac Mi Corp."),
  ("Eu Accumsan Foundation"),
  ("Tellus Phasellus Inc."),
  ("Rhoncus Donec Industries"),
  ("Tempor Arcu Corporation"),
  ("Odio Phasellus Institute"),
  ("Pharetra Ut LLP"),
  ("Metus Aenean Sed Foundation"),
  ("Vel Venenatis Corporation");

INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Nequae Et Associates"),
  ("Rhoncaus Nullam LLP"),
  ("Eros Iancorporated"),
  ("Placeraat Incorporated"),
  ("At Pretiaum Limited"),
  ("At Augue aCorp."),
  ("Eu Enim Etaiam Foundation"),
  ("Vitae Velita Company"),
  ("Maecenas Iacaulis Aliquet Incorporated"),
  ("Ridiculus LLPa");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Vitae Maurisa Corporation"),
  ("Sed Pede Cum aCorp."),
  ("Siat Amet Ltd"),
  ("Augaue Corp."),
  ("Cursaus Integer Limited"),
  ("Eget aMagna Company"),
  ("Mi Ac aInstitute"),
  ("Integera Sem Institute"),
  ("Nibh Dolaor Associates"),
  ("Orci Tincaidunt Inc.");
INSERT INTO tb_gravadora (`nome`)
VALUES
  ("Non Massa aInstitute"),
  ("Aca Mi Corp."),
  ("Eu aAccumsan Foundation"),
  ("Tellaus Phasellus Inc."),
  ("Rhoncaus Donec Industries"),
  ("Tempora Arcu Corporation"),
  ("Odio Phaasellus Institute"),
  ("Pharetraa Ut LLP"),
  ("Metus Aenaean Sed Foundation"),
  ("Vel Venenaatis Corporation");
  
  USE db_discoteca2;

INSERT INTO tb_genero (nome) VALUES	
    ('Rock'),
    ('Forró'),
    ('Sertanejo'),
    ('KPOP'),
    ('Pop'),
    ('MPB'),
    ('Funk'),
    ('Brega'),
    ('Samba'),
    ('Pagode'),
    ('eletronica');
    
USE db_discoteca2;

INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Arsenio Riggs",22,2015,216,178,8),
  ("Davis Rodgers",61,2009,168,12,9),
  ("Dolan Merritt",39,2013,154,130,5),
  ("Paula Torres",63,1977,220,154,2),
  ("Merrill Cortez",47,1975,60,20,7),
  ("Kasimir Buckner",120,1997,93,103,5),
  ("Travis Hebert",85,2021,116,68,6),
  ("Reagan Dunlap",58,1999,162,198,8),
  ("Reece Buck",25,1993,138,66,9),
  ("Keegan Woodard",78,1975,50,111,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Castor Lawrence",70,2005,116,164,7),
  ("Melvin Burke",46,1996,145,24,8),
  ("Ignatius Bruce",47,2021,143,157,8),
  ("Abbot Walter",56,1994,87,105,9),
  ("Sasha Parsons",103,1981,139,79,7),
  ("September Morgan",106,2007,158,129,8),
  ("Kevin Knapp",28,2005,192,89,8),
  ("Eliana Robles",36,1981,228,174,7),
  ("Cameron Cline",40,1999,105,176,5),
  ("Alana Espinoza",111,2002,113,9,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Brynne Phillips",55,1981,47,28,2),
  ("Mufutau White",117,2006,177,172,4),
  ("Cassidy Martinez",94,1983,52,81,6),
  ("Darryl Gonzalez",22,2018,67,45,4),
  ("Jenna Byers",28,1996,108,71,2),
  ("Rashad Hammond",49,2019,157,110,3),
  ("Bevis Berg",72,1999,184,6,9),
  ("Sean Ferrell",59,2018,176,152,10),
  ("Carol Griffith",64,2017,20,172,8),
  ("Jason Langley",81,2013,116,107,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Raven Mcmahon",44,2006,48,56,5),
  ("Iona Barlow",23,2020,211,186,7),
  ("Nero Gentry",107,1972,60,87,8),
  ("Arthur Atkinson",31,2013,194,158,3),
  ("Lance Nelson",111,1992,151,194,6),
  ("Curran Macias",92,2004,163,137,3),
  ("Talon Wheeler",80,1991,106,31,4),
  ("Palmer Cole",112,1973,72,11,5),
  ("Asher Rivera",52,1988,134,162,7),
  ("Haviva Cote",32,2008,180,63,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Clio Stephens",60,2014,85,194,6),
  ("Elijah Galloway",120,2006,200,116,8),
  ("Brenda Mcmahon",62,2013,203,38,6),
  ("Kylie West",91,1974,46,79,8),
  ("Brynn Peck",60,1972,148,78,8),
  ("Ariel Ayers",29,1988,53,97,8),
  ("Harding Mcfadden",69,1981,115,175,4),
  ("Arthur Downs",103,1984,100,79,8),
  ("Orson Mcconnell",26,2021,87,160,7),
  ("Willa Johnston",88,1996,46,18,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Neve Charles",120,2021,29,87,4),
  ("Mollie Alexander",102,2010,68,62,8),
  ("Lilah Haley",80,2020,29,60,6),
  ("Magee Wolfe",94,1980,35,144,3),
  ("Nigel Stephenson",81,2011,62,179,2),
  ("Rama Lawson",114,2002,19,115,8),
  ("Eleanor Sanchez",109,2011,120,60,6),
  ("Ray Black",21,2003,91,124,6),
  ("Gabriel Mccray",58,1987,70,39,7),
  ("Wylie Jacobs",26,1997,214,114,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Juliet Velasquez",113,1986,219,122,7),
  ("Timon Reid",22,2008,194,132,3),
  ("Dillon Mays",85,1993,92,43,6),
  ("Bernard Boyd",49,1983,128,161,8),
  ("Kamal Oneal",71,1985,112,58,9),
  ("Colton Wilkins",56,1972,94,74,4),
  ("Clio Holder",44,2022,143,142,7),
  ("Davis Byers",48,1987,78,4,5),
  ("Rigel Dudley",26,1973,64,40,7),
  ("Gannon Cash",77,2003,114,111,2);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jacqueline Hebert",79,2013,95,85,8),
  ("Callum Walker",41,2010,143,120,8),
  ("Cecilia Vinson",100,2008,132,168,8),
  ("Jack Ray",105,2015,155,20,8),
  ("Rafael Fuller",30,1987,199,99,6),
  ("Kevin Howell",110,1998,136,26,4),
  ("Joshua Le",100,1972,198,126,5),
  ("Sydney Michael",45,2007,71,44,5),
  ("Fay Shields",101,2022,173,157,4),
  ("Melissa Pickett",40,1993,237,135,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Keefe Workman",67,2001,235,21,8),
  ("Leo Delgado",54,2021,104,90,8),
  ("Shafira Velasquez",65,2017,124,82,2),
  ("Maisie Benton",96,2008,98,167,4),
  ("Buckminster Kirkland",105,2021,148,134,10),
  ("Colt David",37,1983,156,54,6),
  ("Erin Mullen",33,1978,196,38,3),
  ("Peter Guzman",23,2012,139,42,2),
  ("Charde Cooley",71,2020,36,3,5),
  ("Rana Atkins",49,1976,162,32,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lucas Haley",116,2015,175,4,4),
  ("Harrison Ware",76,1998,172,89,2),
  ("Violet Sellers",29,1985,147,11,2),
  ("Marvin Meyer",31,1988,107,198,4),
  ("Nehru Townsend",22,2016,101,181,9),
  ("May Buckley",103,1998,235,2,7),
  ("Kirestin Pena",94,1973,150,52,3),
  ("Desiree Williams",90,1980,92,159,5),
  ("Amanda Hendrix",51,2021,101,152,8),
  ("Jarrod Russell",101,1993,70,9,8);


INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Sebastian Tran",75,1999,107,127,3),
  ("Cally Copeland",29,1997,112,88,7),
  ("Palmer Miller",82,1976,195,12,8),
  ("Dana Flowers",65,1972,88,90,6),
  ("Doris Frank",76,1975,180,164,8),
  ("Hilary Mccarthy",83,1976,52,9,10),
  ("Isaac Simpson",116,2009,65,30,3),
  ("Alfreda Rhodes",37,2001,64,24,5),
  ("Marny Knapp",76,1996,18,16,5),
  ("Brock Ford",35,2010,35,91,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Karly Moon",50,1994,101,17,6),
  ("Callum Little",96,2017,176,24,10),
  ("Nathaniel Mullen",76,1977,59,130,10),
  ("Maris Little",82,2005,41,4,5),
  ("Yoko Savage",91,1997,77,55,8),
  ("Amela Garrett",57,1990,113,7,7),
  ("Chava Mays",24,2021,104,116,9),
  ("Orson Ballard",52,2006,162,67,7),
  ("Bruno Patterson",71,1975,71,159,2),
  ("Upton Avila",23,1994,156,24,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Gisela Roth",59,1976,43,116,4),
  ("MacKensie Sparks",39,1973,28,41,4),
  ("Molly Harding",71,2023,183,102,3),
  ("Hanae Fitzpatrick",57,1992,71,173,9),
  ("Bryar Vinson",56,1997,130,132,2),
  ("Ross Holmes",52,2008,169,102,4),
  ("Arthur Blanchard",116,1979,74,3,6),
  ("Tanek Norton",108,1983,205,13,6),
  ("Ursa Coffey",97,2013,198,60,9),
  ("Mark Mcclure",40,2000,190,54,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cassandra Roth",92,2021,132,136,8),
  ("Seth Medina",94,2011,178,60,8),
  ("Erasmus Mckinney",34,1988,211,175,5),
  ("Dexter Nunez",72,1986,58,40,8),
  ("Suki Campbell",89,2013,185,37,8),
  ("Madeline Strickland",35,1988,222,152,4),
  ("Mariko Underwood",32,1972,220,135,7),
  ("Daryl Roberson",52,1983,60,66,5),
  ("Hayden Harrington",107,2009,175,40,6),
  ("Norman Michael",39,2010,170,79,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wyatt Spencer",26,2018,108,153,6),
  ("Hanae Bell",92,1991,156,109,2),
  ("Ila Combs",101,1991,168,113,10),
  ("Lee Baxter",66,1990,42,192,7),
  ("Rafael Pena",82,2010,87,84,7),
  ("Dante Snyder",46,1999,21,145,6),
  ("Phoebe Dominguez",53,2003,210,97,4),
  ("Abra Carson",113,1974,239,18,3),
  ("Victoria Harding",111,2020,101,2,7),
  ("Dahlia Carlson",100,1994,177,185,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Desirae Camacho",75,1993,178,106,10),
  ("Richard Wiggins",26,2006,117,21,5),
  ("Yasir Ochoa",45,2022,16,25,2),
  ("Mohammad Combs",23,2014,190,177,3),
  ("Celeste Parrish",113,2000,112,159,8),
  ("Heather Mendoza",120,1981,141,155,7),
  ("Hop Vincent",36,2011,73,49,4),
  ("Ifeoma Baldwin",90,1994,89,106,6),
  ("Elijah Stevenson",63,1999,48,141,8),
  ("Orlando Sargent",29,1981,117,65,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madeson Kramer",81,2006,28,130,5),
  ("Rae Sharpe",119,1998,235,160,4),
  ("Brielle Wood",54,1986,197,49,6),
  ("Xantha Glass",87,1980,195,112,8),
  ("Dale Lowery",67,2012,169,122,9),
  ("Amery Carlson",29,2010,135,118,8),
  ("Shoshana Jordan",77,2010,90,69,3),
  ("August Shepherd",103,2022,163,126,9),
  ("Raja Conner",28,1977,162,184,4),
  ("Addison Greer",47,1986,19,23,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Meredith Branch",89,2016,167,95,9),
  ("Bertha Patel",40,1992,59,8,8),
  ("Martin Baldwin",54,2004,74,194,6),
  ("Kirsten Guy",69,1979,94,36,7),
  ("Lance Burton",106,2010,111,65,2),
  ("Maris Gillespie",55,1982,180,9,8),
  ("Joelle Shelton",42,1995,162,129,8),
  ("Kirby Whitley",63,2005,12,36,3),
  ("Kessie Schneider",71,1996,169,68,4),
  ("Aladdin Sheppard",50,2010,53,78,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Melyssa Bass",78,2010,222,7,3),
  ("Tad Finley",81,2001,16,149,6),
  ("Raphael Hodge",35,2001,179,163,8),
  ("Linda Frederick",42,1976,138,151,5),
  ("Erich Wiley",49,1991,53,72,7),
  ("Laura Drake",106,2009,68,131,4),
  ("Darius Lindsay",81,2018,42,21,8),
  ("Wyatt Neal",79,1977,70,78,4),
  ("Vance Vega",75,1977,218,79,3),
  ("Carl Norris",24,1975,72,4,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Aurora Rasmussen",100,2014,127,167,4),
  ("Rhiannon Curtis",36,1981,105,143,3),
  ("Wallace Dyer",33,1972,51,94,6),
  ("Russell Bates",69,1988,33,185,6),
  ("Idola Smith",115,2011,174,174,3),
  ("Deborah Mccoy",38,2022,49,199,3),
  ("Kessie Marshall",46,1976,111,97,7),
  ("Karyn Duke",99,1987,123,42,8),
  ("Alyssa Lyons",72,2007,141,169,4),
  ("Pandora Lee",53,1976,196,191,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lila Glass",110,1986,81,148,7),
  ("Gary Berger",55,1988,153,42,7),
  ("Marny Johnston",62,2018,28,41,3),
  ("Mary Hartman",65,2008,175,49,3),
  ("Nathan Jensen",97,1981,236,82,9),
  ("Travis Gamble",48,1995,195,165,4),
  ("Quin Sheppard",118,2003,34,134,9),
  ("Brent Kline",65,2001,114,146,9),
  ("Harriet Hinton",56,1983,84,154,4),
  ("Stephanie Hobbs",56,1987,21,126,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cadman Zimmerman",57,2002,65,163,3),
  ("Noah Christian",24,2016,50,103,4),
  ("Jennifer Green",111,2013,150,130,4),
  ("Griffith Mcleod",83,1981,36,122,6),
  ("Kasimir Coffey",116,1986,206,132,10),
  ("Mikayla Bennett",37,1977,74,22,9),
  ("Nolan Woodward",50,2021,175,105,3),
  ("Phoebe Foley",90,2014,85,69,8),
  ("Yvette Cook",66,1980,198,8,8),
  ("Ivana Chapman",44,1982,76,115,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Myra Good",52,1998,125,126,6),
  ("Gannon Carter",31,1989,175,124,3),
  ("Quinlan Stevens",54,1986,189,166,3),
  ("Samantha Bradford",112,1990,226,181,9),
  ("Sophia Houston",84,1981,32,97,2),
  ("Todd Gibbs",110,2018,221,85,4),
  ("Shelly Dudley",22,1993,154,19,7),
  ("Samantha Vazquez",102,1972,153,55,4),
  ("David Sims",89,2004,168,34,4),
  ("Lilah Buckner",31,1983,86,129,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mariam Reese",90,1994,129,88,7),
  ("Jada Harrison",21,1972,112,66,9),
  ("Reuben Dixon",49,1989,115,75,6),
  ("Amy Long",107,2017,188,180,2),
  ("Jillian Shelton",111,1999,153,88,5),
  ("Tiger Shelton",108,1982,208,50,6),
  ("Medge Reyes",96,2020,195,194,8),
  ("Amos Lindsey",91,1990,201,41,7),
  ("Nehru Vaughan",28,1981,114,28,2),
  ("Kenneth Whitney",32,1983,98,51,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Fulton Heath",55,1992,48,70,8),
  ("Ryan Myers",45,2003,217,138,3),
  ("Lois Fitzgerald",77,1993,210,155,8),
  ("Malcolm Moody",84,2023,23,181,8),
  ("Camden Velasquez",108,1992,196,105,4),
  ("Shaeleigh Barlow",43,2018,131,44,3),
  ("Joelle Huffman",47,1996,69,14,9),
  ("Hillary Crawford",62,1988,85,129,6),
  ("Jerry Solis",70,1981,182,147,6),
  ("Hoyt Ingram",58,1997,42,15,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Uriel Ryan",55,2004,23,180,9),
  ("Serina Branch",72,2005,188,63,7),
  ("David Bender",70,1993,157,141,10),
  ("Aline Stark",90,2019,22,116,2),
  ("Willow Wall",105,1997,126,107,7),
  ("Illiana Sellers",46,1990,237,82,6),
  ("Knox Lindsay",72,2018,16,19,4),
  ("Hammett Houston",39,2021,203,11,9),
  ("Jena Kirby",90,1976,117,91,6),
  ("Grady Lowery",67,1986,146,7,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("May Petersen",62,1994,29,175,8),
  ("Sopoline Finch",101,1992,32,191,5),
  ("Hamilton Holcomb",56,1986,105,72,9),
  ("Levi O'donnell",88,1994,222,162,4),
  ("Stephen Alexander",100,1994,47,104,8),
  ("Clark Gay",57,1976,203,7,9),
  ("Regan Pena",65,1977,201,71,7),
  ("Iris Young",34,2004,99,111,8),
  ("Sacha Parrish",78,1996,227,18,8),
  ("India Merritt",65,2000,169,162,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jane Cooke",117,2012,201,132,6),
  ("Natalie Haney",117,1997,120,70,5),
  ("Dillon Conrad",106,2017,17,49,7),
  ("Ferdinand Gallagher",66,1974,137,32,3),
  ("Rhiannon Harding",75,2008,155,132,7),
  ("Ayanna Talley",81,1992,24,114,7),
  ("Naida Bradley",44,2002,77,163,9),
  ("Kuame Sharpe",23,2008,89,193,3),
  ("Fallon Bond",102,2021,27,52,6),
  ("Joel Townsend",107,2010,182,135,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Olympia Weber",30,2022,103,40,4),
  ("Timothy Reid",88,1995,148,192,4),
  ("Ava Combs",107,2003,102,195,6),
  ("Cruz Cooley",32,2006,126,125,3),
  ("Stone David",21,1979,102,93,9),
  ("Quynn Pacheco",89,1976,203,136,4),
  ("Meghan Chaney",42,1988,141,155,4),
  ("Patricia Dickson",90,2000,34,200,9),
  ("Norman Henderson",37,2009,190,48,7),
  ("Macey Logan",96,1984,198,145,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Valentine Curtis",81,2020,182,6,4),
  ("Jesse Heath",32,2011,227,172,6),
  ("Murphy Harrell",28,2012,105,23,6),
  ("Ebony Henderson",98,1991,229,21,4),
  ("Kerry Rose",23,1986,190,60,8),
  ("Kiayada Melton",100,2009,233,167,5),
  ("Jaquelyn Zamora",86,1988,89,22,2),
  ("Sigourney Collins",40,1996,167,23,10),
  ("Chloe Briggs",39,1993,63,90,7),
  ("William Travis",21,1976,131,11,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Larissa Moss",68,2015,171,29,7),
  ("Phoebe Ellis",98,1993,183,46,6),
  ("Josephine O'Neill",77,2006,26,179,6),
  ("Vanna Yates",73,1990,121,112,8),
  ("Brendan Moses",26,2020,151,118,7),
  ("Jesse Justice",40,2007,238,103,9),
  ("Florence Carrillo",20,2008,226,161,5),
  ("Yeo Ballard",69,2016,167,121,5),
  ("Dennis Shepard",34,1979,131,9,9),
  ("Candice Guerrero",78,2004,164,166,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jason Skinner",40,2011,116,4,6),
  ("Sylvia Roach",59,1974,167,150,9),
  ("Mona Higgins",103,1985,178,18,10),
  ("Briar Brady",23,1993,223,110,2),
  ("Peter Harper",62,1989,112,70,3),
  ("Isabelle Rowe",107,2011,203,166,3),
  ("Tanner Langley",83,1992,49,75,4),
  ("Nigel Harris",95,1978,38,104,7),
  ("Bo Zamora",98,1974,137,74,5),
  ("Uta Leon",41,2018,90,83,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Seth Ware",87,1972,56,182,3),
  ("Megan Ramsey",79,2019,13,13,4),
  ("Maisie Willis",56,2010,168,113,5),
  ("Raya Goff",108,1982,151,189,3),
  ("Mallory Cantu",101,1999,107,138,3),
  ("Jackson Albert",48,2018,231,19,4),
  ("Mona Garner",96,2000,159,162,5),
  ("Shaeleigh Robinson",32,2018,146,142,7),
  ("Blaze Banks",82,1999,178,13,3),
  ("Quon Blair",83,1973,235,28,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Drew Snider",67,2011,227,54,3),
  ("Rudyard Pate",56,1990,42,101,5),
  ("Colt Middleton",104,1988,42,176,7),
  ("Giselle Hendrix",57,2006,46,130,4),
  ("Priscilla Hood",75,1998,40,117,8),
  ("Candice West",56,1985,33,44,4),
  ("Kato Best",99,1998,173,36,3),
  ("Irene Slater",24,1977,135,135,8),
  ("Constance Cox",55,2017,101,2,6),
  ("Tyrone Leach",48,1996,225,57,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lance Pacheco",45,1981,142,189,2),
  ("Aileen Delacruz",61,1999,54,54,8),
  ("Lacota Marshall",59,2021,22,100,4),
  ("Amanda Haley",41,2000,177,53,6),
  ("Olivia French",102,1984,65,39,9),
  ("Sopoline Holman",91,1980,37,139,9),
  ("Daryl Melendez",41,2001,210,98,7),
  ("Quinn Stokes",63,1974,211,48,5),
  ("Lyle Willis",20,1991,236,38,9),
  ("Trevor Fields",41,2002,127,180,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Grant",87,2001,96,91,2),
  ("Dillon Dillon",51,2021,236,17,3),
  ("Christine Oneil",87,1979,190,186,3),
  ("Jakeem Price",44,1974,93,55,4),
  ("Janna Alvarado",103,1989,182,172,3),
  ("Joy Santiago",76,1994,48,43,10),
  ("Rina Riggs",43,2002,93,108,8),
  ("Richard Mcfarland",115,2003,15,41,9),
  ("Tyrone Gordon",25,1992,51,87,9),
  ("Willa Estrada",82,1999,113,107,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Patience Gordon",99,2020,184,83,7),
  ("Hamish Lang",46,1985,143,156,2),
  ("Rajah Osborne",78,1993,197,162,5),
  ("Nerea Barton",59,2017,71,122,4),
  ("Jescie Meadows",101,1989,123,64,9),
  ("Jena Cannon",22,1983,67,130,7),
  ("Adrienne Brewer",90,2003,71,58,4),
  ("Bethany Crawford",81,2010,148,157,8),
  ("Barry Sexton",96,2022,46,171,9),
  ("Quemby Lara",44,2013,61,50,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madaline Morse",44,1987,43,29,5),
  ("Jasmine Keith",50,2003,170,99,9),
  ("Caleb Berger",47,2004,100,194,3),
  ("Octavius Gay",99,2012,11,108,5),
  ("Joshua Osborn",85,1980,203,65,3),
  ("Aileen Gonzales",90,1990,140,11,5),
  ("Drake Gibson",32,1976,226,4,7),
  ("Driscoll Hutchinson",93,2021,102,151,5),
  ("Shelby Walker",109,1996,77,128,5),
  ("Lois Patterson",56,2020,26,114,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Bevis Kirk",40,2003,200,148,4),
  ("Dante Ford",30,1993,68,179,8),
  ("Cora Rios",119,1977,141,18,4),
  ("Ralph Lindsay",44,1983,83,44,7),
  ("James Horne",27,2014,112,32,6),
  ("Sara Franco",26,2006,161,198,9),
  ("Sarah Curry",26,1973,164,41,2),
  ("Ashton Brewer",41,2003,67,141,3),
  ("Alea Ramos",39,2010,41,10,8),
  ("Oscar Clarke",67,2018,159,101,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jordan Walton",102,2022,58,65,5),
  ("Jillian Pierce",70,1977,122,156,4),
  ("Vladimir Swanson",52,2010,186,151,6),
  ("Gray Soto",30,1983,133,11,3),
  ("Laura Barlow",94,2016,133,114,4),
  ("Armand Maldonado",70,1985,123,45,8),
  ("Virginia Combs",20,1974,208,161,9),
  ("Derek Lyons",62,2006,144,190,8),
  ("Noelani Pearson",46,1973,221,72,2),
  ("Kuame Byrd",85,2010,112,32,10);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Fox",64,2010,74,17,4),
  ("Amy Barber",89,2008,164,120,3),
  ("Kato Garcia",57,1988,143,177,3),
  ("Lamar Ortiz",62,1984,224,11,3),
  ("Veronica Barnett",81,2009,195,183,6),
  ("Murphy Randolph",53,2022,120,37,5),
  ("Sonia Hardy",95,2021,101,68,3),
  ("Clark Mcguire",108,1974,93,4,4),
  ("Holmes Mayo",83,1988,77,170,6),
  ("Knox Vincent",43,1989,231,28,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jorden Burris",101,2002,49,97,7),
  ("Brett Harper",59,2002,169,11,9),
  ("Rose May",65,1986,156,116,4),
  ("Leigh Snow",35,2018,21,64,6),
  ("Odette Ford",47,1983,86,53,8),
  ("Holmes Pitts",83,1982,56,118,3),
  ("Brock Crosby",64,1993,54,12,4),
  ("Jonah Reynolds",104,1981,82,43,4),
  ("Clinton Harrell",85,1981,218,22,9),
  ("Brenda Stephenson",56,1973,103,191,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zephr French",105,1997,148,88,7),
  ("Donovan Allison",115,2020,21,9,3),
  ("Galvin Ellis",118,1987,56,162,7),
  ("Ulric Hughes",56,1976,38,169,6),
  ("Imani Cherry",107,2009,198,61,6),
  ("Nadine Jenkins",107,2007,90,84,4),
  ("Rigel Webster",104,2004,80,165,8),
  ("Xanthus Ward",22,2006,214,174,8),
  ("Joan Jacobson",114,2013,222,38,10),
  ("Linus Holt",109,1994,45,167,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cain Casey",74,1980,28,165,3),
  ("Karina Palmer",43,2010,111,23,7),
  ("Jessica Witt",115,1997,39,169,8),
  ("Aiko Beck",65,2007,140,122,5),
  ("Briar Palmer",117,1998,35,158,8),
  ("Shelley Flores",110,1978,116,87,7),
  ("Ray Gilmore",24,2021,209,129,5),
  ("Andrew Aguirre",28,1975,195,109,6),
  ("Howard Diaz",62,1979,75,193,6),
  ("Carter Gillespie",80,2018,78,86,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Orli Garrison",111,1997,118,92,7),
  ("Donovan Bender",93,1982,99,42,4),
  ("Tanner Mcdaniel",59,1984,52,197,6),
  ("Vladimir Cash",79,2009,126,64,8),
  ("Elaine Reynolds",41,2022,123,107,3),
  ("Bruce Jimenez",49,1975,137,52,5),
  ("Marah Morales",97,2003,163,100,8),
  ("May Webb",39,2005,105,148,5),
  ("Odysseus Puckett",85,2019,199,136,5),
  ("Axel Gill",87,2001,158,49,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Josiah Conley",34,2004,211,65,4),
  ("Gareth Harrington",31,2015,178,48,3),
  ("Orson O'Neill",71,2000,227,41,9),
  ("Uriah Montoya",106,1996,215,29,7),
  ("Paloma Patrick",88,1998,115,73,7),
  ("Jonah Lindsey",65,2003,23,39,6),
  ("Phelan Weiss",80,2003,140,75,8),
  ("Nina Coleman",110,2006,109,39,8),
  ("Sheila Cameron",74,1999,87,99,6),
  ("Connor Donaldson",83,2000,77,175,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wallace Mcgowan",30,1993,139,162,10),
  ("Cadman Richmond",102,2020,185,109,7),
  ("Nyssa Dominguez",32,2005,171,148,9),
  ("Rahim Garcia",31,1988,126,38,6),
  ("Eliana Pena",104,1986,91,115,5),
  ("Tobias Logan",53,1985,81,21,6),
  ("Charissa Chapman",67,1972,147,10,6),
  ("Rhea Valencia",24,2015,236,111,5),
  ("Owen Rosario",41,1986,120,17,7),
  ("Charlotte Burnett",46,2015,230,46,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mohammad Duncan",88,1990,91,138,9),
  ("Cameron Fuentes",79,1979,120,118,2),
  ("Russell Spears",64,2000,153,124,2),
  ("Norman Love",24,2001,235,102,3),
  ("Rowan Dominguez",110,2005,201,66,9),
  ("Maris Henson",23,1976,95,22,3),
  ("Honorato Nolan",54,2012,41,3,4),
  ("Regina Alexander",67,1990,84,8,6),
  ("Jorden Maldonado",54,2016,219,101,7),
  ("Caesar Todd",106,2007,12,94,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("McKenzie Mcconnell",61,2023,34,200,4),
  ("Kalia Mcbride",44,2022,165,121,5),
  ("Eagan Giles",48,1989,86,171,9),
  ("Tara Leblanc",77,1995,120,65,2),
  ("Isaac Santiago",47,2022,17,132,2),
  ("Moses Jennings",102,1975,230,1,8),
  ("Carl Mullen",64,1978,216,193,8),
  ("Jasmine Hopper",73,2004,187,148,7),
  ("Leonard Leblanc",77,1972,161,18,2),
  ("Bert Berg",72,1973,59,180,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zena Thompson",83,1974,58,171,9),
  ("Germaine Lindsey",36,1973,165,58,5),
  ("Nicole Brock",20,1976,31,163,9),
  ("Grant Lawrence",119,2019,180,27,2),
  ("Scott Miranda",54,2022,233,159,4),
  ("Yetta Fields",81,2000,67,94,9),
  ("Quamar Delacruz",34,1974,133,140,4),
  ("Chancellor Burt",80,1994,169,61,4),
  ("Steel Gross",61,1973,83,193,4),
  ("Linus Soto",47,2001,207,76,3);
  
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Arsenio Riggs",22,2015,216,178,8),
  ("Davis Rodgers",61,2009,168,12,9),
  ("Dolan Merritt",39,2013,154,130,5),
  ("Paula Torres",63,1977,220,154,2),
  ("Merrill Cortez",47,1975,60,20,7),
  ("Kasimir Buckner",120,1997,93,103,5),
  ("Travis Hebert",85,2021,116,68,6),
  ("Reagan Dunlap",58,1999,162,198,8),
  ("Reece Buck",25,1993,138,66,9),
  ("Keegan Woodard",78,1975,50,111,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Castor Lawrence",70,2005,116,164,7),
  ("Melvin Burke",46,1996,145,24,8),
  ("Ignatius Bruce",47,2021,143,157,8),
  ("Abbot Walter",56,1994,87,105,9),
  ("Sasha Parsons",103,1981,139,79,7),
  ("September Morgan",106,2007,158,129,8),
  ("Kevin Knapp",28,2005,192,89,8),
  ("Eliana Robles",36,1981,228,174,7),
  ("Cameron Cline",40,1999,105,176,5),
  ("Alana Espinoza",111,2002,113,9,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Brynne Phillips",55,1981,47,28,2),
  ("Mufutau White",117,2006,177,172,4),
  ("Cassidy Martinez",94,1983,52,81,6),
  ("Darryl Gonzalez",22,2018,67,45,4),
  ("Jenna Byers",28,1996,108,71,2),
  ("Rashad Hammond",49,2019,157,110,3),
  ("Bevis Berg",72,1999,184,6,9),
  ("Sean Ferrell",59,2018,176,152,10),
  ("Carol Griffith",64,2017,20,172,8),
  ("Jason Langley",81,2013,116,107,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Raven Mcmahon",44,2006,48,56,5),
  ("Iona Barlow",23,2020,211,186,7),
  ("Nero Gentry",107,1972,60,87,8),
  ("Arthur Atkinson",31,2013,194,158,3),
  ("Lance Nelson",111,1992,151,194,6),
  ("Curran Macias",92,2004,163,137,3),
  ("Talon Wheeler",80,1991,106,31,4),
  ("Palmer Cole",112,1973,72,11,5),
  ("Asher Rivera",52,1988,134,162,7),
  ("Haviva Cote",32,2008,180,63,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Clio Stephens",60,2014,85,194,6),
  ("Elijah Galloway",120,2006,200,116,8),
  ("Brenda Mcmahon",62,2013,203,38,6),
  ("Kylie West",91,1974,46,79,8),
  ("Brynn Peck",60,1972,148,78,8),
  ("Ariel Ayers",29,1988,53,97,8),
  ("Harding Mcfadden",69,1981,115,175,4),
  ("Arthur Downs",103,1984,100,79,8),
  ("Orson Mcconnell",26,2021,87,160,7),
  ("Willa Johnston",88,1996,46,18,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Neve Charles",120,2021,29,87,4),
  ("Mollie Alexander",102,2010,68,62,8),
  ("Lilah Haley",80,2020,29,60,6),
  ("Magee Wolfe",94,1980,35,144,3),
  ("Nigel Stephenson",81,2011,62,179,2),
  ("Rama Lawson",114,2002,19,115,8),
  ("Eleanor Sanchez",109,2011,120,60,6),
  ("Ray Black",21,2003,91,124,6),
  ("Gabriel Mccray",58,1987,70,39,7),
  ("Wylie Jacobs",26,1997,214,114,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Juliet Velasquez",113,1986,219,122,7),
  ("Timon Reid",22,2008,194,132,3),
  ("Dillon Mays",85,1993,92,43,6),
  ("Bernard Boyd",49,1983,128,161,8),
  ("Kamal Oneal",71,1985,112,58,9),
  ("Colton Wilkins",56,1972,94,74,4),
  ("Clio Holder",44,2022,143,142,7),
  ("Davis Byers",48,1987,78,4,5),
  ("Rigel Dudley",26,1973,64,40,7),
  ("Gannon Cash",77,2003,114,111,2);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jacqueline Hebert",79,2013,95,85,8),
  ("Callum Walker",41,2010,143,120,8),
  ("Cecilia Vinson",100,2008,132,168,8),
  ("Jack Ray",105,2015,155,20,8),
  ("Rafael Fuller",30,1987,199,99,6),
  ("Kevin Howell",110,1998,136,26,4),
  ("Joshua Le",100,1972,198,126,5),
  ("Sydney Michael",45,2007,71,44,5),
  ("Fay Shields",101,2022,173,157,4),
  ("Melissa Pickett",40,1993,237,135,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Keefe Workman",67,2001,235,21,8),
  ("Leo Delgado",54,2021,104,90,8),
  ("Shafira Velasquez",65,2017,124,82,2),
  ("Maisie Benton",96,2008,98,167,4),
  ("Buckminster Kirkland",105,2021,148,134,10),
  ("Colt David",37,1983,156,54,6),
  ("Erin Mullen",33,1978,196,38,3),
  ("Peter Guzman",23,2012,139,42,2),
  ("Charde Cooley",71,2020,36,3,5),
  ("Rana Atkins",49,1976,162,32,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lucas Haley",116,2015,175,4,4),
  ("Harrison Ware",76,1998,172,89,2),
  ("Violet Sellers",29,1985,147,11,2),
  ("Marvin Meyer",31,1988,107,198,4),
  ("Nehru Townsend",22,2016,101,181,9),
  ("May Buckley",103,1998,235,2,7),
  ("Kirestin Pena",94,1973,150,52,3),
  ("Desiree Williams",90,1980,92,159,5),
  ("Amanda Hendrix",51,2021,101,152,8),
  ("Jarrod Russell",101,1993,70,9,8);


INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Sebastian Tran",75,1999,107,127,3),
  ("Cally Copeland",29,1997,112,88,7),
  ("Palmer Miller",82,1976,195,12,8),
  ("Dana Flowers",65,1972,88,90,6),
  ("Doris Frank",76,1975,180,164,8),
  ("Hilary Mccarthy",83,1976,52,9,10),
  ("Isaac Simpson",116,2009,65,30,3),
  ("Alfreda Rhodes",37,2001,64,24,5),
  ("Marny Knapp",76,1996,18,16,5),
  ("Brock Ford",35,2010,35,91,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Karly Moon",50,1994,101,17,6),
  ("Callum Little",96,2017,176,24,10),
  ("Nathaniel Mullen",76,1977,59,130,10),
  ("Maris Little",82,2005,41,4,5),
  ("Yoko Savage",91,1997,77,55,8),
  ("Amela Garrett",57,1990,113,7,7),
  ("Chava Mays",24,2021,104,116,9),
  ("Orson Ballard",52,2006,162,67,7),
  ("Bruno Patterson",71,1975,71,159,2),
  ("Upton Avila",23,1994,156,24,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Gisela Roth",59,1976,43,116,4),
  ("MacKensie Sparks",39,1973,28,41,4),
  ("Molly Harding",71,2023,183,102,3),
  ("Hanae Fitzpatrick",57,1992,71,173,9),
  ("Bryar Vinson",56,1997,130,132,2),
  ("Ross Holmes",52,2008,169,102,4),
  ("Arthur Blanchard",116,1979,74,3,6),
  ("Tanek Norton",108,1983,205,13,6),
  ("Ursa Coffey",97,2013,198,60,9),
  ("Mark Mcclure",40,2000,190,54,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cassandra Roth",92,2021,132,136,8),
  ("Seth Medina",94,2011,178,60,8),
  ("Erasmus Mckinney",34,1988,211,175,5),
  ("Dexter Nunez",72,1986,58,40,8),
  ("Suki Campbell",89,2013,185,37,8),
  ("Madeline Strickland",35,1988,222,152,4),
  ("Mariko Underwood",32,1972,220,135,7),
  ("Daryl Roberson",52,1983,60,66,5),
  ("Hayden Harrington",107,2009,175,40,6),
  ("Norman Michael",39,2010,170,79,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wyatt Spencer",26,2018,108,153,6),
  ("Hanae Bell",92,1991,156,109,2),
  ("Ila Combs",101,1991,168,113,10),
  ("Lee Baxter",66,1990,42,192,7),
  ("Rafael Pena",82,2010,87,84,7),
  ("Dante Snyder",46,1999,21,145,6),
  ("Phoebe Dominguez",53,2003,210,97,4),
  ("Abra Carson",113,1974,239,18,3),
  ("Victoria Harding",111,2020,101,2,7),
  ("Dahlia Carlson",100,1994,177,185,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Desirae Camacho",75,1993,178,106,10),
  ("Richard Wiggins",26,2006,117,21,5),
  ("Yasir Ochoa",45,2022,16,25,2),
  ("Mohammad Combs",23,2014,190,177,3),
  ("Celeste Parrish",113,2000,112,159,8),
  ("Heather Mendoza",120,1981,141,155,7),
  ("Hop Vincent",36,2011,73,49,4),
  ("Ifeoma Baldwin",90,1994,89,106,6),
  ("Elijah Stevenson",63,1999,48,141,8),
  ("Orlando Sargent",29,1981,117,65,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madeson Kramer",81,2006,28,130,5),
  ("Rae Sharpe",119,1998,235,160,4),
  ("Brielle Wood",54,1986,197,49,6),
  ("Xantha Glass",87,1980,195,112,8),
  ("Dale Lowery",67,2012,169,122,9),
  ("Amery Carlson",29,2010,135,118,8),
  ("Shoshana Jordan",77,2010,90,69,3),
  ("August Shepherd",103,2022,163,126,9),
  ("Raja Conner",28,1977,162,184,4),
  ("Addison Greer",47,1986,19,23,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Meredith Branch",89,2016,167,95,9),
  ("Bertha Patel",40,1992,59,8,8),
  ("Martin Baldwin",54,2004,74,194,6),
  ("Kirsten Guy",69,1979,94,36,7),
  ("Lance Burton",106,2010,111,65,2),
  ("Maris Gillespie",55,1982,180,9,8),
  ("Joelle Shelton",42,1995,162,129,8),
  ("Kirby Whitley",63,2005,12,36,3),
  ("Kessie Schneider",71,1996,169,68,4),
  ("Aladdin Sheppard",50,2010,53,78,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Melyssa Bass",78,2010,222,7,3),
  ("Tad Finley",81,2001,16,149,6),
  ("Raphael Hodge",35,2001,179,163,8),
  ("Linda Frederick",42,1976,138,151,5),
  ("Erich Wiley",49,1991,53,72,7),
  ("Laura Drake",106,2009,68,131,4),
  ("Darius Lindsay",81,2018,42,21,8),
  ("Wyatt Neal",79,1977,70,78,4),
  ("Vance Vega",75,1977,218,79,3),
  ("Carl Norris",24,1975,72,4,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Aurora Rasmussen",100,2014,127,167,4),
  ("Rhiannon Curtis",36,1981,105,143,3),
  ("Wallace Dyer",33,1972,51,94,6),
  ("Russell Bates",69,1988,33,185,6),
  ("Idola Smith",115,2011,174,174,3),
  ("Deborah Mccoy",38,2022,49,199,3),
  ("Kessie Marshall",46,1976,111,97,7),
  ("Karyn Duke",99,1987,123,42,8),
  ("Alyssa Lyons",72,2007,141,169,4),
  ("Pandora Lee",53,1976,196,191,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lila Glass",110,1986,81,148,7),
  ("Gary Berger",55,1988,153,42,7),
  ("Marny Johnston",62,2018,28,41,3),
  ("Mary Hartman",65,2008,175,49,3),
  ("Nathan Jensen",97,1981,236,82,9),
  ("Travis Gamble",48,1995,195,165,4),
  ("Quin Sheppard",118,2003,34,134,9),
  ("Brent Kline",65,2001,114,146,9),
  ("Harriet Hinton",56,1983,84,154,4),
  ("Stephanie Hobbs",56,1987,21,126,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cadman Zimmerman",57,2002,65,163,3),
  ("Noah Christian",24,2016,50,103,4),
  ("Jennifer Green",111,2013,150,130,4),
  ("Griffith Mcleod",83,1981,36,122,6),
  ("Kasimir Coffey",116,1986,206,132,10),
  ("Mikayla Bennett",37,1977,74,22,9),
  ("Nolan Woodward",50,2021,175,105,3),
  ("Phoebe Foley",90,2014,85,69,8),
  ("Yvette Cook",66,1980,198,8,8),
  ("Ivana Chapman",44,1982,76,115,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Myra Good",52,1998,125,126,6),
  ("Gannon Carter",31,1989,175,124,3),
  ("Quinlan Stevens",54,1986,189,166,3),
  ("Samantha Bradford",112,1990,226,181,9),
  ("Sophia Houston",84,1981,32,97,2),
  ("Todd Gibbs",110,2018,221,85,4),
  ("Shelly Dudley",22,1993,154,19,7),
  ("Samantha Vazquez",102,1972,153,55,4),
  ("David Sims",89,2004,168,34,4),
  ("Lilah Buckner",31,1983,86,129,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mariam Reese",90,1994,129,88,7),
  ("Jada Harrison",21,1972,112,66,9),
  ("Reuben Dixon",49,1989,115,75,6),
  ("Amy Long",107,2017,188,180,2),
  ("Jillian Shelton",111,1999,153,88,5),
  ("Tiger Shelton",108,1982,208,50,6),
  ("Medge Reyes",96,2020,195,194,8),
  ("Amos Lindsey",91,1990,201,41,7),
  ("Nehru Vaughan",28,1981,114,28,2),
  ("Kenneth Whitney",32,1983,98,51,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Fulton Heath",55,1992,48,70,8),
  ("Ryan Myers",45,2003,217,138,3),
  ("Lois Fitzgerald",77,1993,210,155,8),
  ("Malcolm Moody",84,2023,23,181,8),
  ("Camden Velasquez",108,1992,196,105,4),
  ("Shaeleigh Barlow",43,2018,131,44,3),
  ("Joelle Huffman",47,1996,69,14,9),
  ("Hillary Crawford",62,1988,85,129,6),
  ("Jerry Solis",70,1981,182,147,6),
  ("Hoyt Ingram",58,1997,42,15,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Uriel Ryan",55,2004,23,180,9),
  ("Serina Branch",72,2005,188,63,7),
  ("David Bender",70,1993,157,141,10),
  ("Aline Stark",90,2019,22,116,2),
  ("Willow Wall",105,1997,126,107,7),
  ("Illiana Sellers",46,1990,237,82,6),
  ("Knox Lindsay",72,2018,16,19,4),
  ("Hammett Houston",39,2021,203,11,9),
  ("Jena Kirby",90,1976,117,91,6),
  ("Grady Lowery",67,1986,146,7,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("May Petersen",62,1994,29,175,8),
  ("Sopoline Finch",101,1992,32,191,5),
  ("Hamilton Holcomb",56,1986,105,72,9),
  ("Levi O'donnell",88,1994,222,162,4),
  ("Stephen Alexander",100,1994,47,104,8),
  ("Clark Gay",57,1976,203,7,9),
  ("Regan Pena",65,1977,201,71,7),
  ("Iris Young",34,2004,99,111,8),
  ("Sacha Parrish",78,1996,227,18,8),
  ("India Merritt",65,2000,169,162,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jane Cooke",117,2012,201,132,6),
  ("Natalie Haney",117,1997,120,70,5),
  ("Dillon Conrad",106,2017,17,49,7),
  ("Ferdinand Gallagher",66,1974,137,32,3),
  ("Rhiannon Harding",75,2008,155,132,7),
  ("Ayanna Talley",81,1992,24,114,7),
  ("Naida Bradley",44,2002,77,163,9),
  ("Kuame Sharpe",23,2008,89,193,3),
  ("Fallon Bond",102,2021,27,52,6),
  ("Joel Townsend",107,2010,182,135,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Olympia Weber",30,2022,103,40,4),
  ("Timothy Reid",88,1995,148,192,4),
  ("Ava Combs",107,2003,102,195,6),
  ("Cruz Cooley",32,2006,126,125,3),
  ("Stone David",21,1979,102,93,9),
  ("Quynn Pacheco",89,1976,203,136,4),
  ("Meghan Chaney",42,1988,141,155,4),
  ("Patricia Dickson",90,2000,34,200,9),
  ("Norman Henderson",37,2009,190,48,7),
  ("Macey Logan",96,1984,198,145,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Valentine Curtis",81,2020,182,6,4),
  ("Jesse Heath",32,2011,227,172,6),
  ("Murphy Harrell",28,2012,105,23,6),
  ("Ebony Henderson",98,1991,229,21,4),
  ("Kerry Rose",23,1986,190,60,8),
  ("Kiayada Melton",100,2009,233,167,5),
  ("Jaquelyn Zamora",86,1988,89,22,2),
  ("Sigourney Collins",40,1996,167,23,10),
  ("Chloe Briggs",39,1993,63,90,7),
  ("William Travis",21,1976,131,11,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Larissa Moss",68,2015,171,29,7),
  ("Phoebe Ellis",98,1993,183,46,6),
  ("Josephine O'Neill",77,2006,26,179,6),
  ("Vanna Yates",73,1990,121,112,8),
  ("Brendan Moses",26,2020,151,118,7),
  ("Jesse Justice",40,2007,238,103,9),
  ("Florence Carrillo",20,2008,226,161,5),
  ("Yeo Ballard",69,2016,167,121,5),
  ("Dennis Shepard",34,1979,131,9,9),
  ("Candice Guerrero",78,2004,164,166,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jason Skinner",40,2011,116,4,6),
  ("Sylvia Roach",59,1974,167,150,9),
  ("Mona Higgins",103,1985,178,18,10),
  ("Briar Brady",23,1993,223,110,2),
  ("Peter Harper",62,1989,112,70,3),
  ("Isabelle Rowe",107,2011,203,166,3),
  ("Tanner Langley",83,1992,49,75,4),
  ("Nigel Harris",95,1978,38,104,7),
  ("Bo Zamora",98,1974,137,74,5),
  ("Uta Leon",41,2018,90,83,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Seth Ware",87,1972,56,182,3),
  ("Megan Ramsey",79,2019,13,13,4),
  ("Maisie Willis",56,2010,168,113,5),
  ("Raya Goff",108,1982,151,189,3),
  ("Mallory Cantu",101,1999,107,138,3),
  ("Jackson Albert",48,2018,231,19,4),
  ("Mona Garner",96,2000,159,162,5),
  ("Shaeleigh Robinson",32,2018,146,142,7),
  ("Blaze Banks",82,1999,178,13,3),
  ("Quon Blair",83,1973,235,28,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Drew Snider",67,2011,227,54,3),
  ("Rudyard Pate",56,1990,42,101,5),
  ("Colt Middleton",104,1988,42,176,7),
  ("Giselle Hendrix",57,2006,46,130,4),
  ("Priscilla Hood",75,1998,40,117,8),
  ("Candice West",56,1985,33,44,4),
  ("Kato Best",99,1998,173,36,3),
  ("Irene Slater",24,1977,135,135,8),
  ("Constance Cox",55,2017,101,2,6),
  ("Tyrone Leach",48,1996,225,57,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lance Pacheco",45,1981,142,189,2),
  ("Aileen Delacruz",61,1999,54,54,8),
  ("Lacota Marshall",59,2021,22,100,4),
  ("Amanda Haley",41,2000,177,53,6),
  ("Olivia French",102,1984,65,39,9),
  ("Sopoline Holman",91,1980,37,139,9),
  ("Daryl Melendez",41,2001,210,98,7),
  ("Quinn Stokes",63,1974,211,48,5),
  ("Lyle Willis",20,1991,236,38,9),
  ("Trevor Fields",41,2002,127,180,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Grant",87,2001,96,91,2),
  ("Dillon Dillon",51,2021,236,17,3),
  ("Christine Oneil",87,1979,190,186,3),
  ("Jakeem Price",44,1974,93,55,4),
  ("Janna Alvarado",103,1989,182,172,3),
  ("Joy Santiago",76,1994,48,43,10),
  ("Rina Riggs",43,2002,93,108,8),
  ("Richard Mcfarland",115,2003,15,41,9),
  ("Tyrone Gordon",25,1992,51,87,9),
  ("Willa Estrada",82,1999,113,107,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Patience Gordon",99,2020,184,83,7),
  ("Hamish Lang",46,1985,143,156,2),
  ("Rajah Osborne",78,1993,197,162,5),
  ("Nerea Barton",59,2017,71,122,4),
  ("Jescie Meadows",101,1989,123,64,9),
  ("Jena Cannon",22,1983,67,130,7),
  ("Adrienne Brewer",90,2003,71,58,4),
  ("Bethany Crawford",81,2010,148,157,8),
  ("Barry Sexton",96,2022,46,171,9),
  ("Quemby Lara",44,2013,61,50,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madaline Morse",44,1987,43,29,5),
  ("Jasmine Keith",50,2003,170,99,9),
  ("Caleb Berger",47,2004,100,194,3),
  ("Octavius Gay",99,2012,11,108,5),
  ("Joshua Osborn",85,1980,203,65,3),
  ("Aileen Gonzales",90,1990,140,11,5),
  ("Drake Gibson",32,1976,226,4,7),
  ("Driscoll Hutchinson",93,2021,102,151,5),
  ("Shelby Walker",109,1996,77,128,5),
  ("Lois Patterson",56,2020,26,114,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Bevis Kirk",40,2003,200,148,4),
  ("Dante Ford",30,1993,68,179,8),
  ("Cora Rios",119,1977,141,18,4),
  ("Ralph Lindsay",44,1983,83,44,7),
  ("James Horne",27,2014,112,32,6),
  ("Sara Franco",26,2006,161,198,9),
  ("Sarah Curry",26,1973,164,41,2),
  ("Ashton Brewer",41,2003,67,141,3),
  ("Alea Ramos",39,2010,41,10,8),
  ("Oscar Clarke",67,2018,159,101,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jordan Walton",102,2022,58,65,5),
  ("Jillian Pierce",70,1977,122,156,4),
  ("Vladimir Swanson",52,2010,186,151,6),
  ("Gray Soto",30,1983,133,11,3),
  ("Laura Barlow",94,2016,133,114,4),
  ("Armand Maldonado",70,1985,123,45,8),
  ("Virginia Combs",20,1974,208,161,9),
  ("Derek Lyons",62,2006,144,190,8),
  ("Noelani Pearson",46,1973,221,72,2),
  ("Kuame Byrd",85,2010,112,32,10);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Fox",64,2010,74,17,4),
  ("Amy Barber",89,2008,164,120,3),
  ("Kato Garcia",57,1988,143,177,3),
  ("Lamar Ortiz",62,1984,224,11,3),
  ("Veronica Barnett",81,2009,195,183,6),
  ("Murphy Randolph",53,2022,120,37,5),
  ("Sonia Hardy",95,2021,101,68,3),
  ("Clark Mcguire",108,1974,93,4,4),
  ("Holmes Mayo",83,1988,77,170,6),
  ("Knox Vincent",43,1989,231,28,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jorden Burris",101,2002,49,97,7),
  ("Brett Harper",59,2002,169,11,9),
  ("Rose May",65,1986,156,116,4),
  ("Leigh Snow",35,2018,21,64,6),
  ("Odette Ford",47,1983,86,53,8),
  ("Holmes Pitts",83,1982,56,118,3),
  ("Brock Crosby",64,1993,54,12,4),
  ("Jonah Reynolds",104,1981,82,43,4),
  ("Clinton Harrell",85,1981,218,22,9),
  ("Brenda Stephenson",56,1973,103,191,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zephr French",105,1997,148,88,7),
  ("Donovan Allison",115,2020,21,9,3),
  ("Galvin Ellis",118,1987,56,162,7),
  ("Ulric Hughes",56,1976,38,169,6),
  ("Imani Cherry",107,2009,198,61,6),
  ("Nadine Jenkins",107,2007,90,84,4),
  ("Rigel Webster",104,2004,80,165,8),
  ("Xanthus Ward",22,2006,214,174,8),
  ("Joan Jacobson",114,2013,222,38,10),
  ("Linus Holt",109,1994,45,167,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cain Casey",74,1980,28,165,3),
  ("Karina Palmer",43,2010,111,23,7),
  ("Jessica Witt",115,1997,39,169,8),
  ("Aiko Beck",65,2007,140,122,5),
  ("Briar Palmer",117,1998,35,158,8),
  ("Shelley Flores",110,1978,116,87,7),
  ("Ray Gilmore",24,2021,209,129,5),
  ("Andrew Aguirre",28,1975,195,109,6),
  ("Howard Diaz",62,1979,75,193,6),
  ("Carter Gillespie",80,2018,78,86,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Orli Garrison",111,1997,118,92,7),
  ("Donovan Bender",93,1982,99,42,4),
  ("Tanner Mcdaniel",59,1984,52,197,6),
  ("Vladimir Cash",79,2009,126,64,8),
  ("Elaine Reynolds",41,2022,123,107,3),
  ("Bruce Jimenez",49,1975,137,52,5),
  ("Marah Morales",97,2003,163,100,8),
  ("May Webb",39,2005,105,148,5),
  ("Odysseus Puckett",85,2019,199,136,5),
  ("Axel Gill",87,2001,158,49,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Josiah Conley",34,2004,211,65,4),
  ("Gareth Harrington",31,2015,178,48,3),
  ("Orson O'Neill",71,2000,227,41,9),
  ("Uriah Montoya",106,1996,215,29,7),
  ("Paloma Patrick",88,1998,115,73,7),
  ("Jonah Lindsey",65,2003,23,39,6),
  ("Phelan Weiss",80,2003,140,75,8),
  ("Nina Coleman",110,2006,109,39,8),
  ("Sheila Cameron",74,1999,87,99,6),
  ("Connor Donaldson",83,2000,77,175,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wallace Mcgowan",30,1993,139,162,10),
  ("Cadman Richmond",102,2020,185,109,7),
  ("Nyssa Dominguez",32,2005,171,148,9),
  ("Rahim Garcia",31,1988,126,38,6),
  ("Eliana Pena",104,1986,91,115,5),
  ("Tobias Logan",53,1985,81,21,6),
  ("Charissa Chapman",67,1972,147,10,6),
  ("Rhea Valencia",24,2015,236,111,5),
  ("Owen Rosario",41,1986,120,17,7),
  ("Charlotte Burnett",46,2015,230,46,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mohammad Duncan",88,1990,91,138,9),
  ("Cameron Fuentes",79,1979,120,118,2),
  ("Russell Spears",64,2000,153,124,2),
  ("Norman Love",24,2001,235,102,3),
  ("Rowan Dominguez",110,2005,201,66,9),
  ("Maris Henson",23,1976,95,22,3),
  ("Honorato Nolan",54,2012,41,3,4),
  ("Regina Alexander",67,1990,84,8,6),
  ("Jorden Maldonado",54,2016,219,101,7),
  ("Caesar Todd",106,2007,12,94,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("McKenzie Mcconnell",61,2023,34,200,4),
  ("Kalia Mcbride",44,2022,165,121,5),
  ("Eagan Giles",48,1989,86,171,9),
  ("Tara Leblanc",77,1995,120,65,2),
  ("Isaac Santiago",47,2022,17,132,2),
  ("Moses Jennings",102,1975,230,1,8),
  ("Carl Mullen",64,1978,216,193,8),
  ("Jasmine Hopper",73,2004,187,148,7),
  ("Leonard Leblanc",77,1972,161,18,2),
  ("Bert Berg",72,1973,59,180,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zena Thompson",83,1974,58,171,9),
  ("Germaine Lindsey",36,1973,165,58,5),
  ("Nicole Brock",20,1976,31,163,9),
  ("Grant Lawrence",119,2019,180,27,2),
  ("Scott Miranda",54,2022,233,159,4),
  ("Yetta Fields",81,2000,67,94,9),
  ("Quamar Delacruz",34,1974,133,140,4),
  ("Chancellor Burt",80,1994,169,61,4),
  ("Steel Gross",61,1973,83,193,4),
  ("Linus Soto",47,2001,207,76,3);
  INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Arsenio Riggs",22,2015,216,178,8),
  ("Davis Rodgers",61,2009,168,12,9),
  ("Dolan Merritt",39,2013,154,130,5),
  ("Paula Torres",63,1977,220,154,2),
  ("Merrill Cortez",47,1975,60,20,7),
  ("Kasimir Buckner",120,1997,93,103,5),
  ("Travis Hebert",85,2021,116,68,6),
  ("Reagan Dunlap",58,1999,162,198,8),
  ("Reece Buck",25,1993,138,66,9),
  ("Keegan Woodard",78,1975,50,111,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Castor Lawrence",70,2005,116,164,7),
  ("Melvin Burke",46,1996,145,24,8),
  ("Ignatius Bruce",47,2021,143,157,8),
  ("Abbot Walter",56,1994,87,105,9),
  ("Sasha Parsons",103,1981,139,79,7),
  ("September Morgan",106,2007,158,129,8),
  ("Kevin Knapp",28,2005,192,89,8),
  ("Eliana Robles",36,1981,228,174,7),
  ("Cameron Cline",40,1999,105,176,5),
  ("Alana Espinoza",111,2002,113,9,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Brynne Phillips",55,1981,47,28,2),
  ("Mufutau White",117,2006,177,172,4),
  ("Cassidy Martinez",94,1983,52,81,6),
  ("Darryl Gonzalez",22,2018,67,45,4),
  ("Jenna Byers",28,1996,108,71,2),
  ("Rashad Hammond",49,2019,157,110,3),
  ("Bevis Berg",72,1999,184,6,9),
  ("Sean Ferrell",59,2018,176,152,10),
  ("Carol Griffith",64,2017,20,172,8),
  ("Jason Langley",81,2013,116,107,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Raven Mcmahon",44,2006,48,56,5),
  ("Iona Barlow",23,2020,211,186,7),
  ("Nero Gentry",107,1972,60,87,8),
  ("Arthur Atkinson",31,2013,194,158,3),
  ("Lance Nelson",111,1992,151,194,6),
  ("Curran Macias",92,2004,163,137,3),
  ("Talon Wheeler",80,1991,106,31,4),
  ("Palmer Cole",112,1973,72,11,5),
  ("Asher Rivera",52,1988,134,162,7),
  ("Haviva Cote",32,2008,180,63,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Clio Stephens",60,2014,85,194,6),
  ("Elijah Galloway",120,2006,200,116,8),
  ("Brenda Mcmahon",62,2013,203,38,6),
  ("Kylie West",91,1974,46,79,8),
  ("Brynn Peck",60,1972,148,78,8),
  ("Ariel Ayers",29,1988,53,97,8),
  ("Harding Mcfadden",69,1981,115,175,4),
  ("Arthur Downs",103,1984,100,79,8),
  ("Orson Mcconnell",26,2021,87,160,7),
  ("Willa Johnston",88,1996,46,18,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Neve Charles",120,2021,29,87,4),
  ("Mollie Alexander",102,2010,68,62,8),
  ("Lilah Haley",80,2020,29,60,6),
  ("Magee Wolfe",94,1980,35,144,3),
  ("Nigel Stephenson",81,2011,62,179,2),
  ("Rama Lawson",114,2002,19,115,8),
  ("Eleanor Sanchez",109,2011,120,60,6),
  ("Ray Black",21,2003,91,124,6),
  ("Gabriel Mccray",58,1987,70,39,7),
  ("Wylie Jacobs",26,1997,214,114,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Juliet Velasquez",113,1986,219,122,7),
  ("Timon Reid",22,2008,194,132,3),
  ("Dillon Mays",85,1993,92,43,6),
  ("Bernard Boyd",49,1983,128,161,8),
  ("Kamal Oneal",71,1985,112,58,9),
  ("Colton Wilkins",56,1972,94,74,4),
  ("Clio Holder",44,2022,143,142,7),
  ("Davis Byers",48,1987,78,4,5),
  ("Rigel Dudley",26,1973,64,40,7),
  ("Gannon Cash",77,2003,114,111,2);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jacqueline Hebert",79,2013,95,85,8),
  ("Callum Walker",41,2010,143,120,8),
  ("Cecilia Vinson",100,2008,132,168,8),
  ("Jack Ray",105,2015,155,20,8),
  ("Rafael Fuller",30,1987,199,99,6),
  ("Kevin Howell",110,1998,136,26,4),
  ("Joshua Le",100,1972,198,126,5),
  ("Sydney Michael",45,2007,71,44,5),
  ("Fay Shields",101,2022,173,157,4),
  ("Melissa Pickett",40,1993,237,135,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Keefe Workman",67,2001,235,21,8),
  ("Leo Delgado",54,2021,104,90,8),
  ("Shafira Velasquez",65,2017,124,82,2),
  ("Maisie Benton",96,2008,98,167,4),
  ("Buckminster Kirkland",105,2021,148,134,10),
  ("Colt David",37,1983,156,54,6),
  ("Erin Mullen",33,1978,196,38,3),
  ("Peter Guzman",23,2012,139,42,2),
  ("Charde Cooley",71,2020,36,3,5),
  ("Rana Atkins",49,1976,162,32,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lucas Haley",116,2015,175,4,4),
  ("Harrison Ware",76,1998,172,89,2),
  ("Violet Sellers",29,1985,147,11,2),
  ("Marvin Meyer",31,1988,107,198,4),
  ("Nehru Townsend",22,2016,101,181,9),
  ("May Buckley",103,1998,235,2,7),
  ("Kirestin Pena",94,1973,150,52,3),
  ("Desiree Williams",90,1980,92,159,5),
  ("Amanda Hendrix",51,2021,101,152,8),
  ("Jarrod Russell",101,1993,70,9,8);


INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Sebastian Tran",75,1999,107,127,3),
  ("Cally Copeland",29,1997,112,88,7),
  ("Palmer Miller",82,1976,195,12,8),
  ("Dana Flowers",65,1972,88,90,6),
  ("Doris Frank",76,1975,180,164,8),
  ("Hilary Mccarthy",83,1976,52,9,10),
  ("Isaac Simpson",116,2009,65,30,3),
  ("Alfreda Rhodes",37,2001,64,24,5),
  ("Marny Knapp",76,1996,18,16,5),
  ("Brock Ford",35,2010,35,91,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Karly Moon",50,1994,101,17,6),
  ("Callum Little",96,2017,176,24,10),
  ("Nathaniel Mullen",76,1977,59,130,10),
  ("Maris Little",82,2005,41,4,5),
  ("Yoko Savage",91,1997,77,55,8),
  ("Amela Garrett",57,1990,113,7,7),
  ("Chava Mays",24,2021,104,116,9),
  ("Orson Ballard",52,2006,162,67,7),
  ("Bruno Patterson",71,1975,71,159,2),
  ("Upton Avila",23,1994,156,24,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Gisela Roth",59,1976,43,116,4),
  ("MacKensie Sparks",39,1973,28,41,4),
  ("Molly Harding",71,2023,183,102,3),
  ("Hanae Fitzpatrick",57,1992,71,173,9),
  ("Bryar Vinson",56,1997,130,132,2),
  ("Ross Holmes",52,2008,169,102,4),
  ("Arthur Blanchard",116,1979,74,3,6),
  ("Tanek Norton",108,1983,205,13,6),
  ("Ursa Coffey",97,2013,198,60,9),
  ("Mark Mcclure",40,2000,190,54,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cassandra Roth",92,2021,132,136,8),
  ("Seth Medina",94,2011,178,60,8),
  ("Erasmus Mckinney",34,1988,211,175,5),
  ("Dexter Nunez",72,1986,58,40,8),
  ("Suki Campbell",89,2013,185,37,8),
  ("Madeline Strickland",35,1988,222,152,4),
  ("Mariko Underwood",32,1972,220,135,7),
  ("Daryl Roberson",52,1983,60,66,5),
  ("Hayden Harrington",107,2009,175,40,6),
  ("Norman Michael",39,2010,170,79,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wyatt Spencer",26,2018,108,153,6),
  ("Hanae Bell",92,1991,156,109,2),
  ("Ila Combs",101,1991,168,113,10),
  ("Lee Baxter",66,1990,42,192,7),
  ("Rafael Pena",82,2010,87,84,7),
  ("Dante Snyder",46,1999,21,145,6),
  ("Phoebe Dominguez",53,2003,210,97,4),
  ("Abra Carson",113,1974,239,18,3),
  ("Victoria Harding",111,2020,101,2,7),
  ("Dahlia Carlson",100,1994,177,185,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Desirae Camacho",75,1993,178,106,10),
  ("Richard Wiggins",26,2006,117,21,5),
  ("Yasir Ochoa",45,2022,16,25,2),
  ("Mohammad Combs",23,2014,190,177,3),
  ("Celeste Parrish",113,2000,112,159,8),
  ("Heather Mendoza",120,1981,141,155,7),
  ("Hop Vincent",36,2011,73,49,4),
  ("Ifeoma Baldwin",90,1994,89,106,6),
  ("Elijah Stevenson",63,1999,48,141,8),
  ("Orlando Sargent",29,1981,117,65,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madeson Kramer",81,2006,28,130,5),
  ("Rae Sharpe",119,1998,235,160,4),
  ("Brielle Wood",54,1986,197,49,6),
  ("Xantha Glass",87,1980,195,112,8),
  ("Dale Lowery",67,2012,169,122,9),
  ("Amery Carlson",29,2010,135,118,8),
  ("Shoshana Jordan",77,2010,90,69,3),
  ("August Shepherd",103,2022,163,126,9),
  ("Raja Conner",28,1977,162,184,4),
  ("Addison Greer",47,1986,19,23,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Meredith Branch",89,2016,167,95,9),
  ("Bertha Patel",40,1992,59,8,8),
  ("Martin Baldwin",54,2004,74,194,6),
  ("Kirsten Guy",69,1979,94,36,7),
  ("Lance Burton",106,2010,111,65,2),
  ("Maris Gillespie",55,1982,180,9,8),
  ("Joelle Shelton",42,1995,162,129,8),
  ("Kirby Whitley",63,2005,12,36,3),
  ("Kessie Schneider",71,1996,169,68,4),
  ("Aladdin Sheppard",50,2010,53,78,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Melyssa Bass",78,2010,222,7,3),
  ("Tad Finley",81,2001,16,149,6),
  ("Raphael Hodge",35,2001,179,163,8),
  ("Linda Frederick",42,1976,138,151,5),
  ("Erich Wiley",49,1991,53,72,7),
  ("Laura Drake",106,2009,68,131,4),
  ("Darius Lindsay",81,2018,42,21,8),
  ("Wyatt Neal",79,1977,70,78,4),
  ("Vance Vega",75,1977,218,79,3),
  ("Carl Norris",24,1975,72,4,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Aurora Rasmussen",100,2014,127,167,4),
  ("Rhiannon Curtis",36,1981,105,143,3),
  ("Wallace Dyer",33,1972,51,94,6),
  ("Russell Bates",69,1988,33,185,6),
  ("Idola Smith",115,2011,174,174,3),
  ("Deborah Mccoy",38,2022,49,199,3),
  ("Kessie Marshall",46,1976,111,97,7),
  ("Karyn Duke",99,1987,123,42,8),
  ("Alyssa Lyons",72,2007,141,169,4),
  ("Pandora Lee",53,1976,196,191,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lila Glass",110,1986,81,148,7),
  ("Gary Berger",55,1988,153,42,7),
  ("Marny Johnston",62,2018,28,41,3),
  ("Mary Hartman",65,2008,175,49,3),
  ("Nathan Jensen",97,1981,236,82,9),
  ("Travis Gamble",48,1995,195,165,4),
  ("Quin Sheppard",118,2003,34,134,9),
  ("Brent Kline",65,2001,114,146,9),
  ("Harriet Hinton",56,1983,84,154,4),
  ("Stephanie Hobbs",56,1987,21,126,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cadman Zimmerman",57,2002,65,163,3),
  ("Noah Christian",24,2016,50,103,4),
  ("Jennifer Green",111,2013,150,130,4),
  ("Griffith Mcleod",83,1981,36,122,6),
  ("Kasimir Coffey",116,1986,206,132,10),
  ("Mikayla Bennett",37,1977,74,22,9),
  ("Nolan Woodward",50,2021,175,105,3),
  ("Phoebe Foley",90,2014,85,69,8),
  ("Yvette Cook",66,1980,198,8,8),
  ("Ivana Chapman",44,1982,76,115,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Myra Good",52,1998,125,126,6),
  ("Gannon Carter",31,1989,175,124,3),
  ("Quinlan Stevens",54,1986,189,166,3),
  ("Samantha Bradford",112,1990,226,181,9),
  ("Sophia Houston",84,1981,32,97,2),
  ("Todd Gibbs",110,2018,221,85,4),
  ("Shelly Dudley",22,1993,154,19,7),
  ("Samantha Vazquez",102,1972,153,55,4),
  ("David Sims",89,2004,168,34,4),
  ("Lilah Buckner",31,1983,86,129,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mariam Reese",90,1994,129,88,7),
  ("Jada Harrison",21,1972,112,66,9),
  ("Reuben Dixon",49,1989,115,75,6),
  ("Amy Long",107,2017,188,180,2),
  ("Jillian Shelton",111,1999,153,88,5),
  ("Tiger Shelton",108,1982,208,50,6),
  ("Medge Reyes",96,2020,195,194,8),
  ("Amos Lindsey",91,1990,201,41,7),
  ("Nehru Vaughan",28,1981,114,28,2),
  ("Kenneth Whitney",32,1983,98,51,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Fulton Heath",55,1992,48,70,8),
  ("Ryan Myers",45,2003,217,138,3),
  ("Lois Fitzgerald",77,1993,210,155,8),
  ("Malcolm Moody",84,2023,23,181,8),
  ("Camden Velasquez",108,1992,196,105,4),
  ("Shaeleigh Barlow",43,2018,131,44,3),
  ("Joelle Huffman",47,1996,69,14,9),
  ("Hillary Crawford",62,1988,85,129,6),
  ("Jerry Solis",70,1981,182,147,6),
  ("Hoyt Ingram",58,1997,42,15,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Uriel Ryan",55,2004,23,180,9),
  ("Serina Branch",72,2005,188,63,7),
  ("David Bender",70,1993,157,141,10),
  ("Aline Stark",90,2019,22,116,2),
  ("Willow Wall",105,1997,126,107,7),
  ("Illiana Sellers",46,1990,237,82,6),
  ("Knox Lindsay",72,2018,16,19,4),
  ("Hammett Houston",39,2021,203,11,9),
  ("Jena Kirby",90,1976,117,91,6),
  ("Grady Lowery",67,1986,146,7,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("May Petersen",62,1994,29,175,8),
  ("Sopoline Finch",101,1992,32,191,5),
  ("Hamilton Holcomb",56,1986,105,72,9),
  ("Levi O'donnell",88,1994,222,162,4),
  ("Stephen Alexander",100,1994,47,104,8),
  ("Clark Gay",57,1976,203,7,9),
  ("Regan Pena",65,1977,201,71,7),
  ("Iris Young",34,2004,99,111,8),
  ("Sacha Parrish",78,1996,227,18,8),
  ("India Merritt",65,2000,169,162,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jane Cooke",117,2012,201,132,6),
  ("Natalie Haney",117,1997,120,70,5),
  ("Dillon Conrad",106,2017,17,49,7),
  ("Ferdinand Gallagher",66,1974,137,32,3),
  ("Rhiannon Harding",75,2008,155,132,7),
  ("Ayanna Talley",81,1992,24,114,7),
  ("Naida Bradley",44,2002,77,163,9),
  ("Kuame Sharpe",23,2008,89,193,3),
  ("Fallon Bond",102,2021,27,52,6),
  ("Joel Townsend",107,2010,182,135,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Olympia Weber",30,2022,103,40,4),
  ("Timothy Reid",88,1995,148,192,4),
  ("Ava Combs",107,2003,102,195,6),
  ("Cruz Cooley",32,2006,126,125,3),
  ("Stone David",21,1979,102,93,9),
  ("Quynn Pacheco",89,1976,203,136,4),
  ("Meghan Chaney",42,1988,141,155,4),
  ("Patricia Dickson",90,2000,34,200,9),
  ("Norman Henderson",37,2009,190,48,7),
  ("Macey Logan",96,1984,198,145,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Valentine Curtis",81,2020,182,6,4),
  ("Jesse Heath",32,2011,227,172,6),
  ("Murphy Harrell",28,2012,105,23,6),
  ("Ebony Henderson",98,1991,229,21,4),
  ("Kerry Rose",23,1986,190,60,8),
  ("Kiayada Melton",100,2009,233,167,5),
  ("Jaquelyn Zamora",86,1988,89,22,2),
  ("Sigourney Collins",40,1996,167,23,10),
  ("Chloe Briggs",39,1993,63,90,7),
  ("William Travis",21,1976,131,11,6);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Larissa Moss",68,2015,171,29,7),
  ("Phoebe Ellis",98,1993,183,46,6),
  ("Josephine O'Neill",77,2006,26,179,6),
  ("Vanna Yates",73,1990,121,112,8),
  ("Brendan Moses",26,2020,151,118,7),
  ("Jesse Justice",40,2007,238,103,9),
  ("Florence Carrillo",20,2008,226,161,5),
  ("Yeo Ballard",69,2016,167,121,5),
  ("Dennis Shepard",34,1979,131,9,9),
  ("Candice Guerrero",78,2004,164,166,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jason Skinner",40,2011,116,4,6),
  ("Sylvia Roach",59,1974,167,150,9),
  ("Mona Higgins",103,1985,178,18,10),
  ("Briar Brady",23,1993,223,110,2),
  ("Peter Harper",62,1989,112,70,3),
  ("Isabelle Rowe",107,2011,203,166,3),
  ("Tanner Langley",83,1992,49,75,4),
  ("Nigel Harris",95,1978,38,104,7),
  ("Bo Zamora",98,1974,137,74,5),
  ("Uta Leon",41,2018,90,83,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Seth Ware",87,1972,56,182,3),
  ("Megan Ramsey",79,2019,13,13,4),
  ("Maisie Willis",56,2010,168,113,5),
  ("Raya Goff",108,1982,151,189,3),
  ("Mallory Cantu",101,1999,107,138,3),
  ("Jackson Albert",48,2018,231,19,4),
  ("Mona Garner",96,2000,159,162,5),
  ("Shaeleigh Robinson",32,2018,146,142,7),
  ("Blaze Banks",82,1999,178,13,3),
  ("Quon Blair",83,1973,235,28,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Drew Snider",67,2011,227,54,3),
  ("Rudyard Pate",56,1990,42,101,5),
  ("Colt Middleton",104,1988,42,176,7),
  ("Giselle Hendrix",57,2006,46,130,4),
  ("Priscilla Hood",75,1998,40,117,8),
  ("Candice West",56,1985,33,44,4),
  ("Kato Best",99,1998,173,36,3),
  ("Irene Slater",24,1977,135,135,8),
  ("Constance Cox",55,2017,101,2,6),
  ("Tyrone Leach",48,1996,225,57,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Lance Pacheco",45,1981,142,189,2),
  ("Aileen Delacruz",61,1999,54,54,8),
  ("Lacota Marshall",59,2021,22,100,4),
  ("Amanda Haley",41,2000,177,53,6),
  ("Olivia French",102,1984,65,39,9),
  ("Sopoline Holman",91,1980,37,139,9),
  ("Daryl Melendez",41,2001,210,98,7),
  ("Quinn Stokes",63,1974,211,48,5),
  ("Lyle Willis",20,1991,236,38,9),
  ("Trevor Fields",41,2002,127,180,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Grant",87,2001,96,91,2),
  ("Dillon Dillon",51,2021,236,17,3),
  ("Christine Oneil",87,1979,190,186,3),
  ("Jakeem Price",44,1974,93,55,4),
  ("Janna Alvarado",103,1989,182,172,3),
  ("Joy Santiago",76,1994,48,43,10),
  ("Rina Riggs",43,2002,93,108,8),
  ("Richard Mcfarland",115,2003,15,41,9),
  ("Tyrone Gordon",25,1992,51,87,9),
  ("Willa Estrada",82,1999,113,107,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Patience Gordon",99,2020,184,83,7),
  ("Hamish Lang",46,1985,143,156,2),
  ("Rajah Osborne",78,1993,197,162,5),
  ("Nerea Barton",59,2017,71,122,4),
  ("Jescie Meadows",101,1989,123,64,9),
  ("Jena Cannon",22,1983,67,130,7),
  ("Adrienne Brewer",90,2003,71,58,4),
  ("Bethany Crawford",81,2010,148,157,8),
  ("Barry Sexton",96,2022,46,171,9),
  ("Quemby Lara",44,2013,61,50,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Madaline Morse",44,1987,43,29,5),
  ("Jasmine Keith",50,2003,170,99,9),
  ("Caleb Berger",47,2004,100,194,3),
  ("Octavius Gay",99,2012,11,108,5),
  ("Joshua Osborn",85,1980,203,65,3),
  ("Aileen Gonzales",90,1990,140,11,5),
  ("Drake Gibson",32,1976,226,4,7),
  ("Driscoll Hutchinson",93,2021,102,151,5),
  ("Shelby Walker",109,1996,77,128,5),
  ("Lois Patterson",56,2020,26,114,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Bevis Kirk",40,2003,200,148,4),
  ("Dante Ford",30,1993,68,179,8),
  ("Cora Rios",119,1977,141,18,4),
  ("Ralph Lindsay",44,1983,83,44,7),
  ("James Horne",27,2014,112,32,6),
  ("Sara Franco",26,2006,161,198,9),
  ("Sarah Curry",26,1973,164,41,2),
  ("Ashton Brewer",41,2003,67,141,3),
  ("Alea Ramos",39,2010,41,10,8),
  ("Oscar Clarke",67,2018,159,101,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jordan Walton",102,2022,58,65,5),
  ("Jillian Pierce",70,1977,122,156,4),
  ("Vladimir Swanson",52,2010,186,151,6),
  ("Gray Soto",30,1983,133,11,3),
  ("Laura Barlow",94,2016,133,114,4),
  ("Armand Maldonado",70,1985,123,45,8),
  ("Virginia Combs",20,1974,208,161,9),
  ("Derek Lyons",62,2006,144,190,8),
  ("Noelani Pearson",46,1973,221,72,2),
  ("Kuame Byrd",85,2010,112,32,10);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Maxwell Fox",64,2010,74,17,4),
  ("Amy Barber",89,2008,164,120,3),
  ("Kato Garcia",57,1988,143,177,3),
  ("Lamar Ortiz",62,1984,224,11,3),
  ("Veronica Barnett",81,2009,195,183,6),
  ("Murphy Randolph",53,2022,120,37,5),
  ("Sonia Hardy",95,2021,101,68,3),
  ("Clark Mcguire",108,1974,93,4,4),
  ("Holmes Mayo",83,1988,77,170,6),
  ("Knox Vincent",43,1989,231,28,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Jorden Burris",101,2002,49,97,7),
  ("Brett Harper",59,2002,169,11,9),
  ("Rose May",65,1986,156,116,4),
  ("Leigh Snow",35,2018,21,64,6),
  ("Odette Ford",47,1983,86,53,8),
  ("Holmes Pitts",83,1982,56,118,3),
  ("Brock Crosby",64,1993,54,12,4),
  ("Jonah Reynolds",104,1981,82,43,4),
  ("Clinton Harrell",85,1981,218,22,9),
  ("Brenda Stephenson",56,1973,103,191,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zephr French",105,1997,148,88,7),
  ("Donovan Allison",115,2020,21,9,3),
  ("Galvin Ellis",118,1987,56,162,7),
  ("Ulric Hughes",56,1976,38,169,6),
  ("Imani Cherry",107,2009,198,61,6),
  ("Nadine Jenkins",107,2007,90,84,4),
  ("Rigel Webster",104,2004,80,165,8),
  ("Xanthus Ward",22,2006,214,174,8),
  ("Joan Jacobson",114,2013,222,38,10),
  ("Linus Holt",109,1994,45,167,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Cain Casey",74,1980,28,165,3),
  ("Karina Palmer",43,2010,111,23,7),
  ("Jessica Witt",115,1997,39,169,8),
  ("Aiko Beck",65,2007,140,122,5),
  ("Briar Palmer",117,1998,35,158,8),
  ("Shelley Flores",110,1978,116,87,7),
  ("Ray Gilmore",24,2021,209,129,5),
  ("Andrew Aguirre",28,1975,195,109,6),
  ("Howard Diaz",62,1979,75,193,6),
  ("Carter Gillespie",80,2018,78,86,4);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Orli Garrison",111,1997,118,92,7),
  ("Donovan Bender",93,1982,99,42,4),
  ("Tanner Mcdaniel",59,1984,52,197,6),
  ("Vladimir Cash",79,2009,126,64,8),
  ("Elaine Reynolds",41,2022,123,107,3),
  ("Bruce Jimenez",49,1975,137,52,5),
  ("Marah Morales",97,2003,163,100,8),
  ("May Webb",39,2005,105,148,5),
  ("Odysseus Puckett",85,2019,199,136,5),
  ("Axel Gill",87,2001,158,49,9);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Josiah Conley",34,2004,211,65,4),
  ("Gareth Harrington",31,2015,178,48,3),
  ("Orson O'Neill",71,2000,227,41,9),
  ("Uriah Montoya",106,1996,215,29,7),
  ("Paloma Patrick",88,1998,115,73,7),
  ("Jonah Lindsey",65,2003,23,39,6),
  ("Phelan Weiss",80,2003,140,75,8),
  ("Nina Coleman",110,2006,109,39,8),
  ("Sheila Cameron",74,1999,87,99,6),
  ("Connor Donaldson",83,2000,77,175,5);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Wallace Mcgowan",30,1993,139,162,10),
  ("Cadman Richmond",102,2020,185,109,7),
  ("Nyssa Dominguez",32,2005,171,148,9),
  ("Rahim Garcia",31,1988,126,38,6),
  ("Eliana Pena",104,1986,91,115,5),
  ("Tobias Logan",53,1985,81,21,6),
  ("Charissa Chapman",67,1972,147,10,6),
  ("Rhea Valencia",24,2015,236,111,5),
  ("Owen Rosario",41,1986,120,17,7),
  ("Charlotte Burnett",46,2015,230,46,7);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Mohammad Duncan",88,1990,91,138,9),
  ("Cameron Fuentes",79,1979,120,118,2),
  ("Russell Spears",64,2000,153,124,2),
  ("Norman Love",24,2001,235,102,3),
  ("Rowan Dominguez",110,2005,201,66,9),
  ("Maris Henson",23,1976,95,22,3),
  ("Honorato Nolan",54,2012,41,3,4),
  ("Regina Alexander",67,1990,84,8,6),
  ("Jorden Maldonado",54,2016,219,101,7),
  ("Caesar Todd",106,2007,12,94,3);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("McKenzie Mcconnell",61,2023,34,200,4),
  ("Kalia Mcbride",44,2022,165,121,5),
  ("Eagan Giles",48,1989,86,171,9),
  ("Tara Leblanc",77,1995,120,65,2),
  ("Isaac Santiago",47,2022,17,132,2),
  ("Moses Jennings",102,1975,230,1,8),
  ("Carl Mullen",64,1978,216,193,8),
  ("Jasmine Hopper",73,2004,187,148,7),
  ("Leonard Leblanc",77,1972,161,18,2),
  ("Bert Berg",72,1973,59,180,8);
INSERT INTO tb_disco (`titulo_disco`,`tempo_disco`,`ano_lancamento`,`id_artista`,`id_gravadora`,`id_genero`)
VALUES
  ("Zena Thompson",83,1974,58,171,9),
  ("Germaine Lindsey",36,1973,165,58,5),
  ("Nicole Brock",20,1976,31,163,9),
  ("Grant Lawrence",119,2019,180,27,2),
  ("Scott Miranda",54,2022,233,159,4),
  ("Yetta Fields",81,2000,67,94,9),
  ("Quamar Delacruz",34,1974,133,140,4),
  ("Chancellor Burt",80,1994,169,61,4),
  ("Steel Gross",61,1973,83,193,4),
  ("Linus Soto",47,2001,207,76,3);
  
USE db_discoteca2;

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ferris Jordan","1.25",623),
  ("Abel Pitts","1.51",308),
  ("Griffith Potts","1.03",628),
  ("Tanisha Russell","0.92",6),
  ("Hanae Mcdonald","1.07",302),
  ("Abraham Barton","1.01",543),
  ("Brianna Kirby","1.46",204),
  ("Ima Clark","1.19",482),
  ("Ali Cunningham","1.21",129),
  ("Dennis Ballard","1.27",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Katell Holman","0.76",224),
  ("Ahmed Petersen","1.15",631),
  ("Camden Hughes","0.91",411),
  ("Tarik Crane","0.83",30),
  ("Xantha Velazquez","1.12",215),
  ("Nigel Sloan","0.96",449),
  ("Plato Wood","0.78",356),
  ("Francesca Chapman","1.19",343),
  ("Bo Wheeler","1.32",194),
  ("Aimee Stewart","1.07",349);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aphrodite Warren","1.29",417),
  ("Dillon Fletcher","0.97",163),
  ("Cole Crane","0.76",97),
  ("Nomlanga Tyson","0.74",31),
  ("Lucius Blankenship","1.15",582),
  ("Ora Dorsey","1.04",411),
  ("Sierra Figueroa","1.11",218),
  ("Germane Olsen","0.79",347),
  ("Lila Sharp","0.98",510),
  ("Colton Franklin","1.03",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Nina Deleon","1.25",550),
  ("Brody Lamb","1.14",630),
  ("Demetrius Gonzales","0.75",486),
  ("Stone Albert","0.96",96),
  ("Kasper Parks","0.71",129),
  ("Maisie Saunders","0.70",219),
  ("Mohammad Hess","0.89",243),
  ("Raven Osborn","1.20",284),
  ("Bruno Mason","0.78",68),
  ("Ivana Clark","0.79",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candice Chambers","1.31",559),
  ("Judith Leach","1.30",149),
  ("Quail Hodge","0.62",87),
  ("Kelly Chan","0.86",247),
  ("Kasimir Ryan","1.23",37),
  ("Axel Foley","0.84",186),
  ("Cheyenne Bender","0.70",276),
  ("Heather Rodriguez","0.78",216),
  ("Lamar Whitley","1.46",539),
  ("Sasha Byers","0.64",610);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("India Payne","1.05",72),
  ("Karyn Carney","1.06",590),
  ("Phyllis Cervantes","1.49",67),
  ("Fletcher Herring","0.94",296),
  ("Dieter Farmer","0.95",311),
  ("Destiny Sargent","0.88",289),
  ("Sydnee Burris","1.01",190),
  ("Raja Williams","1.32",450),
  ("Troy Boone","0.93",489),
  ("Hamilton Orr","1.11",483);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Solomon","0.84",614),
  ("Destiny Tanner","1.16",448),
  ("Burke Bennett","0.63",516),
  ("Barrett Briggs","1.19",273),
  ("Russell Solomon","1.05",206),
  ("Luke Watkins","1.42",194),
  ("Alden Parrish","1.15",517),
  ("Prescott Gomez","0.74",384),
  ("Nevada Tyler","1.10",326),
  ("Adara Mercado","0.70",144);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jeremy Sheppard","1.10",503),
  ("Maite Jones","0.99",320),
  ("Jerry Reyes","1.05",401),
  ("Cassady Spencer","1.31",613),
  ("Chaim Warren","1.19",265),
  ("Jeremy Vaughan","1.37",362),
  ("Emma Chan","1.18",113),
  ("Hanae Gibbs","0.48",552),
  ("Laith Stephenson","1.19",416),
  ("Ella Brooks","1.41",600);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kermit Frederick","1.08",169),
  ("Amir Lambert","1.35",300),
  ("Tamekah Odom","1.07",381),
  ("Nola Salinas","0.79",11),
  ("Anjolie Faulkner","1.30",244),
  ("Kimberley William","0.97",498),
  ("Colette Taylor","1.49",407),
  ("Melanie Curtis","0.94",503),
  ("Josephine Hoover","0.94",560),
  ("Tatiana Valencia","0.93",361);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jerry Mayo","0.94",274),
  ("Candice Dorsey","0.35",330),
  ("Deanna Hickman","1.26",32),
  ("Jarrod Underwood","0.82",29),
  ("Irene Powers","1.03",551),
  ("Uriel Wiggins","1.47",343),
  ("Judith Molina","1.24",487),
  ("Reuben Patton","0.28",256),
  ("Lucy Merrill","0.96",551),
  ("Jessamine Bright","0.52",139);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kyle Barrera","1.16",248),
  ("Illana Stephens","1.10",40),
  ("Scott Stone","1.10",437),
  ("Tarik Rodgers","0.82",455),
  ("Cole Osborne","0.98",410),
  ("Tanner Mccarthy","1.35",244),
  ("Autumn Garza","1.13",100),
  ("Dawn Pace","0.59",171),
  ("Macey Rosario","1.37",265),
  ("Gray Pruitt","1.02",4);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Harding","0.97",233),
  ("Steel Cotton","1.04",332),
  ("Ruth Slater","1.37",466),
  ("Anastasia Hunt","0.95",9),
  ("Emery Dillard","1.29",509),
  ("Kieran Curtis","0.95",623),
  ("Gage Castaneda","1.40",612),
  ("Elvis Berg","1.22",431),
  ("Raphael Rice","0.92",470),
  ("Ezra Wyatt","1.37",189);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Grace Fleming","1.13",258),
  ("Emmanuel Huff","0.83",199),
  ("Ignatius Russell","0.85",10),
  ("Isabelle Pugh","1.26",545),
  ("Graham Norman","1.00",302),
  ("Sean Trujillo","0.94",470),
  ("Audrey Owen","1.30",625),
  ("Byron Mcdaniel","0.97",334),
  ("Alfonso Adkins","0.81",544),
  ("Quintessa Blankenship","1.09",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samantha Roman","1.12",248),
  ("Lani Campbell","0.71",68),
  ("Ali Bryant","1.39",311),
  ("McKenzie Dickson","0.92",134),
  ("Rhoda Farmer","1.53",112),
  ("Donovan Valenzuela","0.77",331),
  ("Sean Copeland","0.67",233),
  ("Christen Duke","1.17",243),
  ("Faith Silva","0.88",208),
  ("Dalton Lott","1.20",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Desiree Stein","1.39",419),
  ("Amaya English","1.34",330),
  ("Hyacinth Oneil","1.18",364),
  ("Sonia Hoover","0.92",490),
  ("Denton Sloan","1.01",228),
  ("Nicholas Sloan","1.13",395),
  ("Francis Kramer","0.95",246),
  ("Kirsten Parsons","0.84",9),
  ("Arden Gonzalez","1.09",487),
  ("Maisie Castillo","1.07",171);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Basia Hull","0.94",539),
  ("Adrian Guthrie","1.18",62),
  ("Eliana Ruiz","1.13",334),
  ("Rina Bond","0.83",536),
  ("Quynn Kidd","0.53",12),
  ("Duncan Richard","1.19",279),
  ("Dominic Merritt","0.94",153),
  ("Mollie Benton","0.91",417),
  ("Yael Rich","1.14",363),
  ("Alana Welch","0.66",68);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ross Dillard","1.03",598),
  ("Ulysses Bishop","0.98",295),
  ("Dean Cochran","0.98",261),
  ("Dustin Golden","0.99",226),
  ("Bell Cook","0.80",39),
  ("Dennis Duran","0.96",287),
  ("Leilani Webster","1.38",302),
  ("Vincent Macdonald","0.69",632),
  ("Jerome Goff","1.19",7),
  ("George Dean","1.14",274);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ivana Cunningham","0.80",193),
  ("Kaye Horne","1.04",137),
  ("Moses Good","1.17",525),
  ("Fallon Rodgers","1.55",535),
  ("Caryn Brady","0.84",111),
  ("Gareth Sullivan","1.03",158),
  ("Colton Oneil","1.09",567),
  ("Stone Ewing","1.29",231),
  ("Madison Farley","0.88",268),
  ("Noelani Levy","1.44",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Demetrius Dennis","1.46",184),
  ("Aphrodite Hoover","1.05",256),
  ("Orla Velazquez","0.72",121),
  ("Kasper Chambers","0.96",588),
  ("Ulla Harper","1.06",51),
  ("Whitney Golden","1.02",279),
  ("Hyacinth Cortez","1.15",81),
  ("Morgan Moreno","1.25",226),
  ("Murphy Velasquez","1.37",486),
  ("Candice Rosa","0.88",631);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ori Weaver","0.96",189),
  ("Conan Levy","0.80",147),
  ("Macon Washington","0.66",631),
  ("Herrod Morin","1.01",465),
  ("Adena Olson","0.91",180),
  ("Ori Cameron","1.28",573),
  ("Helen Eaton","1.48",182),
  ("Orlando Brown","1.18",165),
  ("Alec Mejia","1.13",438),
  ("Lawrence Contreras","0.57",64);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kasimir Ramos","1.33",199),
  ("Oleg Ashley","0.60",3),
  ("Oscar Pugh","0.81",622),
  ("Magee Jefferson","1.08",102),
  ("Adria Cervantes","0.98",357),
  ("Melissa Bates","0.88",5),
  ("Dai Hutchinson","0.95",454),
  ("Idola Phelps","1.07",117),
  ("Gil Walters","1.26",161),
  ("Flynn Rhodes","0.74",226);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lev Hodges","0.96",65),
  ("Guinevere Washington","1.12",231),
  ("Dennis Velez","1.00",220),
  ("Alvin Moran","1.00",525),
  ("Aphrodite Holman","0.89",267),
  ("Minerva Johnson","1.11",425),
  ("Gary Bird","1.04",116),
  ("Isabella Thornton","1.12",170),
  ("Zeus Tyson","0.89",114),
  ("Camille Hughes","1.04",515);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bree Lopez","0.93",209),
  ("Lynn Fletcher","1.02",117),
  ("Price Graham","1.01",13),
  ("Aquila Brock","0.91",332),
  ("Nigel Johnston","1.39",234),
  ("Claire Sutton","1.14",224),
  ("Nola Hughes","1.45",317),
  ("Katell Wilkins","0.66",433),
  ("Eric Carey","0.68",479),
  ("Echo Leon","1.24",348);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sybil Avila","0.87",471),
  ("Zenaida Merritt","1.22",617),
  ("Nolan Hancock","0.60",369),
  ("Hilda Spence","1.03",190),
  ("Kaye Workman","1.09",373),
  ("Kelly Walters","0.79",543),
  ("Graiden Fowler","0.55",138),
  ("Leo Norman","1.13",370),
  ("Glenna Coleman","1.10",203),
  ("Alyssa Dodson","0.89",198);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kareem Owens","1.04",24),
  ("Harper Talley","1.15",59),
  ("Forrest Bentley","0.70",360),
  ("Jaden Orr","1.52",111),
  ("Flynn Lynch","0.61",95),
  ("Tobias Fisher","0.98",464),
  ("Mara Murphy","0.91",91),
  ("Orlando House","1.22",314),
  ("Fatima Graham","1.16",28),
  ("Kay Fulton","1.05",502);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Drake Dillon","0.63",430),
  ("Wang Leblanc","1.07",392),
  ("Quinlan House","0.81",43),
  ("Tatiana Mills","1.08",235),
  ("Marvin Rowe","1.56",150),
  ("Petra Santos","0.92",577),
  ("Teegan Mckenzie","0.66",363),
  ("Cyrus Richmond","0.85",632),
  ("Hadley Austin","1.27",624),
  ("Regina Wilkinson","1.12",517);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adara Fields","1.00",219),
  ("Dylan Ayala","0.82",13),
  ("Thaddeus Sykes","1.23",537),
  ("Zelenia Downs","1.00",373),
  ("Lael Johnston","1.18",210),
  ("Hayes Mills","1.08",96),
  ("Andrew Lucas","0.98",287),
  ("Macon Finch","1.07",8),
  ("Kasper Wall","0.93",54),
  ("Malik Bailey","0.96",82);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Claire Smith","0.88",237),
  ("Jamal Houston","1.26",593),
  ("Regina Mckinney","0.80",448),
  ("Nita Benjamin","0.92",431),
  ("Blaze Robertson","0.65",117),
  ("Sara Clark","0.82",477),
  ("Cody Clay","1.47",60),
  ("Teegan Ross","0.96",136),
  ("Hyatt Wilson","0.91",165),
  ("MacKensie James","1.47",427);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Suki Pena","1.23",157),
  ("Olivia Gibson","0.83",556),
  ("Charity Shannon","0.91",107),
  ("Kyle Terry","0.81",576),
  ("Britanney Finley","0.90",547),
  ("Lyle Jimenez","0.91",45),
  ("Hashim Mooney","1.06",337),
  ("Allen Forbes","0.86",485),
  ("Lester Soto","0.92",319),
  ("Roanna White","1.10",193);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Naomi Bean","1.04",291),
  ("Shaeleigh Valencia","0.94",170),
  ("Raja Stanton","0.51",428),
  ("Raya Ellis","1.34",404),
  ("Lev Owen","1.02",463),
  ("Rae Lopez","1.23",328),
  ("Thomas Hill","0.75",202),
  ("Kiona Andrews","1.49",628),
  ("Octavia Houston","1.08",506),
  ("Julie Ford","0.74",157);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Maile Landry","0.60",518),
  ("Emmanuel Barrett","1.20",231),
  ("Allistair Rodriguez","1.03",595),
  ("Luke Knapp","1.32",529),
  ("Cailin Acevedo","1.39",57),
  ("Xenos Hahn","1.42",519),
  ("Noelle Robbins","0.85",90),
  ("Baker Sullivan","0.59",479),
  ("Lee Pollard","0.44",270),
  ("Gareth Mathis","0.98",174);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Warner","0.92",243),
  ("Gage Morris","1.25",462),
  ("Isabella Huffman","0.95",588),
  ("Mari Espinoza","0.68",514),
  ("Tanner Franklin","0.77",494),
  ("Sage Powers","0.79",547),
  ("Lee Soto","0.92",457),
  ("Risa Grant","0.69",77),
  ("Jessica Melton","0.87",638),
  ("Todd Randolph","0.92",520);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Roth Hendrix","0.61",236),
  ("Barclay Mcbride","1.15",26),
  ("Mia Everett","1.24",402),
  ("Kevin Barton","0.75",494),
  ("Tanisha Dickerson","0.74",228),
  ("Winifred Lowery","1.27",558),
  ("Gemma Wooten","1.02",252),
  ("Cleo Hardy","1.40",338),
  ("Celeste Webb","0.95",629),
  ("Stone Mckay","0.92",122);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jared Ellison","1.06",49),
  ("Sade Branch","1.48",389),
  ("Jarrod Stephens","0.88",511),
  ("Thaddeus Allen","0.93",423),
  ("Christian Franks","0.90",572),
  ("Kylynn Sharp","0.90",101),
  ("Emma Schwartz","1.08",416),
  ("Jacob O'Neill","0.92",594),
  ("Ignacia Briggs","0.46",562),
  ("Herman Brennan","0.82",45);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bernard Daugherty","0.88",498),
  ("Rafael Gonzales","0.76",547),
  ("Edward Kirk","1.27",318),
  ("Devin Peterson","1.23",281),
  ("Leroy Banks","1.05",265),
  ("William Jimenez","1.29",618),
  ("Yael Branch","1.22",34),
  ("Riley Mendez","1.04",391),
  ("Skyler Gilbert","0.82",343),
  ("Kasper Marks","0.89",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ian Case","0.85",113),
  ("Elton Alexander","0.85",568),
  ("Ariana Vazquez","0.77",395),
  ("Devin Holder","1.33",120),
  ("Richard Sampson","1.07",240),
  ("Elliott Lowery","1.24",530),
  ("Hollee Harrison","0.60",19),
  ("Avram Strickland","1.22",537),
  ("Nomlanga Barry","0.91",155),
  ("Aaron French","0.84",418);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kay Moss","0.96",297),
  ("Ulla Holcomb","1.07",363),
  ("Jerome Reid","0.94",314),
  ("Malcolm Stevens","0.85",62),
  ("Karleigh Ellis","1.34",418),
  ("Giselle Foley","1.21",625),
  ("Liberty Moreno","1.01",474),
  ("Avram Deleon","0.60",585),
  ("Idona Haley","0.94",236),
  ("Luke House","1.09",236);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alea Roberts","1.03",21),
  ("Jenette Gibson","0.55",190),
  ("Alec Cantrell","1.31",330),
  ("Jermaine Powell","0.84",403),
  ("Joelle Ryan","0.94",127),
  ("Robin Silva","0.84",524),
  ("Dai Adkins","1.57",348),
  ("Rylee Keith","1.00",451),
  ("Amity Trevino","0.92",104),
  ("Bianca Dillard","1.29",634);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Frye","0.96",338),
  ("Petra Benson","0.81",422),
  ("Maia Hays","1.10",195),
  ("Geoffrey Foster","1.22",183),
  ("Ursula Weber","1.05",134),
  ("Beau Phillips","1.07",341),
  ("Kevin Simmons","1.02",456),
  ("Giacomo Mcconnell","1.08",553),
  ("Ori Wolf","0.87",366),
  ("Nehru Crawford","0.72",526);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abbot Davenport","1.17",475),
  ("Ashely Munoz","1.15",476),
  ("Beau Mcclain","1.07",377),
  ("Keane Walters","1.35",296),
  ("Vivian Hogan","0.94",42),
  ("Vaughan Decker","0.77",630),
  ("Yvonne Blanchard","1.12",332),
  ("Brenden Peters","1.11",327),
  ("Camille English","0.45",562),
  ("Alexander Bowen","0.80",424);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ezekiel Mathews","1.13",216),
  ("Brynn Rollins","1.10",485),
  ("Amena Vasquez","1.36",253),
  ("Mia Kelley","1.31",75),
  ("Zachery Lang","0.63",35),
  ("Liberty Wilkinson","0.65",29),
  ("Zenia Rosa","1.00",17),
  ("Nolan Neal","0.96",349),
  ("Brett Hays","1.37",199),
  ("Boris Mooney","0.73",124);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Honorato Levine","1.01",208),
  ("Dara Franklin","0.64",615),
  ("Ila Peters","1.55",503),
  ("Herrod Mooney","0.63",420),
  ("Kennan Huff","1.01",461),
  ("Nicole Santos","1.15",380),
  ("Linus Hood","1.43",517),
  ("Perry Stone","1.02",439),
  ("Glenna Noble","0.99",439),
  ("Libby Wells","0.97",20);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madonna Jackson","1.19",215),
  ("Cleo Farmer","0.53",206),
  ("Clio Schroeder","1.24",512),
  ("Rebecca Perry","1.20",431),
  ("Cody Hooper","1.00",519),
  ("Leila Sanchez","1.02",19),
  ("Ahmed Gutierrez","0.99",108),
  ("Erin Perez","1.04",61),
  ("Patrick Burnett","1.15",452),
  ("Jael Wyatt","0.90",25);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Avram Lyons","1.03",189),
  ("Kevin Nelson","1.11",416),
  ("Mohammad Stein","0.73",433),
  ("Philip Kent","0.67",220),
  ("Lani Rasmussen","0.77",90),
  ("Charles Stark","0.82",580),
  ("Melodie Monroe","1.23",28),
  ("Cheyenne Mckee","1.31",216),
  ("Jana Wheeler","0.98",100),
  ("Aurelia Bruce","1.04",96);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hanae Chan","0.92",360),
  ("Ima Galloway","1.00",324),
  ("Keaton Webb","1.24",178),
  ("Carl Carr","1.06",34),
  ("Len Kennedy","1.11",573),
  ("Remedios Clark","1.22",408),
  ("Wesley Conway","1.20",606),
  ("Halla Best","1.03",22),
  ("Alana Cook","1.30",37),
  ("Hamish Jordan","1.11",463);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedy Burris","0.88",542),
  ("Evan Hickman","0.60",614),
  ("Simon Baker","1.14",492),
  ("Slade Carver","0.67",538),
  ("Burke Stafford","1.14",347),
  ("Branden Reed","0.68",387),
  ("Tanner Townsend","1.21",585),
  ("Brady Russell","1.23",18),
  ("Nichole Sexton","0.71",101),
  ("Bianca Swanson","0.72",152);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Pugh","0.89",553),
  ("Arsenio Vega","1.11",449),
  ("Cassandra Cummings","1.25",99),
  ("Ruby Macdonald","0.83",222),
  ("Nola Wilson","1.42",370),
  ("Russell Knight","0.93",137),
  ("Allen Torres","1.04",267),
  ("Gary Boyd","1.06",330),
  ("Lyle Ingram","1.13",45),
  ("Iliana Stuart","1.09",175);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Axel Malone","1.49",417),
  ("Jamal Barrera","1.28",442),
  ("Jasmine Cochran","1.05",280),
  ("Sean Franklin","0.93",309),
  ("Micah Briggs","0.88",261),
  ("Amity Pruitt","0.66",187),
  ("Allen Williams","0.87",511),
  ("Amena Kidd","0.76",609),
  ("Kellie Simmons","0.74",7),
  ("Kylie Mcknight","0.81",137);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hyatt Duncan","0.74",245),
  ("Risa Hopkins","0.96",283),
  ("Keefe Mercer","0.80",322),
  ("Nigel Cameron","1.11",142),
  ("Walter Huffman","1.32",469),
  ("Forrest Powell","1.33",621),
  ("Doris Stephens","0.67",434),
  ("Adrian Whitley","1.24",515),
  ("Alice Simpson","1.21",541),
  ("Chaney Wells","1.19",229);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tobias Rutledge","1.02",16),
  ("Breanna Mcknight","0.91",498),
  ("Delilah Strong","1.07",68),
  ("Baxter Moran","1.17",621),
  ("Xandra Alvarez","0.82",488),
  ("Camille Cortez","0.92",258),
  ("Melyssa Snow","0.79",310),
  ("Rooney Porter","0.95",305),
  ("Whilemina Barron","0.96",58),
  ("Murphy Jarvis","0.82",428);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ainsley Savage","2.64",72),
  ("Eaton Perez","3.19",51),
  ("Stacey Sampson","2.87",7),
  ("Stuart Maldonado","2.98",626),
  ("Harlan Leon","2.90",405),
  ("Todd Oliver","3.00",540),
  ("Mallory Alston","2.51",590),
  ("Karina Flores","3.50",300),
  ("Ashely Donovan","2.92",625),
  ("Scarlet Holland","3.23",89);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hammett Cross","2.58",192),
  ("Ashton Wright","3.06",367),
  ("Portia Carver","3.56",438),
  ("Tiger Cole","3.44",220),
  ("Kameko Patterson","3.06",449),
  ("Valentine Harding","2.78",549),
  ("Darius Mcneil","3.31",330),
  ("Isadora Contreras","3.15",39),
  ("Briar Bailey","3.38",104),
  ("Piper Bradley","2.95",380);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Finley","3.19",95),
  ("David Parrish","2.86",261),
  ("Chanda Nolan","3.21",487),
  ("Christine Campbell","2.76",285),
  ("Germaine Duffy","3.01",11),
  ("Phelan Mcdaniel","2.92",244),
  ("Malachi Heath","3.02",564),
  ("James Gibson","2.87",424),
  ("Desirae Larson","2.98",359),
  ("Gage Horn","2.67",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mufutau Ross","2.79",629),
  ("Sophia Avery","2.98",86),
  ("Burke Vincent","2.83",230),
  ("Carson Weiss","2.71",151),
  ("Violet Acevedo","2.88",541),
  ("Cameron Petty","2.97",35),
  ("Virginia Rich","2.94",259),
  ("Amal Hays","2.74",523),
  ("Vance Gould","3.47",580),
  ("Alana Gentry","2.99",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amos Sykes","3.25",515),
  ("Scarlett Melendez","3.11",99),
  ("Levi Goodman","3.36",52),
  ("Aiko Parks","2.89",353),
  ("Lacey Sanchez","2.61",303),
  ("Keaton Brewer","2.65",569),
  ("Erich Rivas","2.53",294),
  ("Nathaniel Hess","3.22",566),
  ("Janna Harper","3.01",538),
  ("Irene Le","3.12",42);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jacqueline Bolton","2.54",507),
  ("Sydnee Cantu","2.94",540),
  ("Nathaniel Riley","3.18",403),
  ("Gisela Stuart","2.80",555),
  ("Gavin Payne","3.24",168),
  ("Giacomo Vance","2.58",523),
  ("Zephr Watson","2.80",22),
  ("Kieran Kline","3.00",41),
  ("Nichole Dejesus","3.15",253),
  ("Anne Murray","3.32",60);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Cruz Hamilton","3.15",485),
  ("Daniel Watkins","2.48",628),
  ("Lavinia Heath","2.98",155),
  ("Alexis Tran","2.74",74),
  ("Charity Mccray","3.07",97),
  ("Wendy Mooney","2.64",365),
  ("Adara Lawson","2.73",291),
  ("Reuben Fletcher","3.35",241),
  ("Nola Lynch","2.92",279),
  ("Howard Rivera","3.06",621);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sasha Macdonald","3.09",544),
  ("Clio Adkins","2.70",272),
  ("Meredith Buckner","2.63",424),
  ("Norman Walter","2.56",402),
  ("Merrill Greer","3.01",327),
  ("Nathan Franco","2.64",627),
  ("Desirae Reese","2.67",359),
  ("Byron Blanchard","2.57",407),
  ("Hedy Gates","3.04",612),
  ("Thaddeus Wong","3.18",612);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Justina Petty","2.73",229),
  ("Stewart Savage","2.61",331),
  ("Wendy Fulton","3.25",602),
  ("Eagan Rutledge","3.53",315),
  ("Harriet Mathis","2.59",62),
  ("Fletcher Olsen","3.11",330),
  ("Talon Lawson","2.90",14),
  ("Xenos Sanford","3.14",20),
  ("Timon Martin","3.18",3),
  ("Kadeem Patterson","3.11",55);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Davis Pena","3.03",630),
  ("Richard Ochoa","2.77",96),
  ("Maxine Mccarthy","2.99",586),
  ("Asher Ashley","2.69",523),
  ("Shoshana Kirk","2.87",500),
  ("Salvador Wiggins","2.83",420),
  ("Isaiah Barton","2.93",229),
  ("Ruth Sears","2.89",517),
  ("Carissa Gentry","2.92",319),
  ("Kato Conrad","3.20",392);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joy Moreno","2.75",293),
  ("Kameko Rowland","3.22",585),
  ("Kato Fletcher","2.87",374),
  ("Emma Savage","2.87",537),
  ("Ishmael Wells","2.94",150),
  ("Emerson Reeves","3.22",87),
  ("Brendan Avery","3.08",415),
  ("Jameson Meyers","3.11",279),
  ("Jameson Porter","3.06",328),
  ("Randall Stokes","2.91",243);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barrett Navarro","2.84",398),
  ("Lionel Caldwell","3.14",262),
  ("Adena Harvey","2.94",118),
  ("Alexis Dorsey","3.18",356),
  ("Jin Figueroa","3.06",231),
  ("Denise Owen","2.83",575),
  ("Martena Maynard","3.33",627),
  ("Martina Woods","2.83",426),
  ("Vivian Lloyd","3.05",599),
  ("Quail Rowe","2.92",165);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylan Becker","3.22",267),
  ("Silas Sanford","3.40",105),
  ("Emi Shaw","3.32",572),
  ("Judah Short","3.09",639),
  ("Joseph Soto","2.99",546),
  ("Maisie Horton","3.04",225),
  ("Russell Grant","2.81",17),
  ("Charlotte Barrera","2.82",323),
  ("Damian Torres","3.50",502),
  ("Wynne Strickland","2.70",56);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zephania Moore","3.41",504),
  ("Elmo Hays","2.85",204),
  ("Jack Woodard","3.15",236),
  ("Thaddeus Donovan","3.23",278),
  ("Breanna Morse","2.99",121),
  ("Neville Browning","2.59",218),
  ("Chaim Matthews","3.03",385),
  ("Eliana Mcneil","2.92",465),
  ("Ferris Price","2.98",531),
  ("Adara Kinney","3.07",312);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Upton Collins","2.92",316),
  ("Cameran Brennan","3.14",495),
  ("Genevieve Blanchard","3.02",489),
  ("Nell Everett","2.87",395),
  ("Kylie Baker","2.61",262),
  ("Tad Hobbs","2.83",448),
  ("Amery Vance","3.27",181),
  ("Ciaran Galloway","2.62",635),
  ("Rajah Flores","2.84",512),
  ("Nigel Jordan","2.99",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Prescott Haynes","3.19",32),
  ("Diana Brock","2.47",252),
  ("Nasim Walter","2.85",486),
  ("Noelani Eaton","2.97",19),
  ("Paki Mcintosh","2.97",535),
  ("Cassady Parsons","2.85",429),
  ("Irene Frazier","2.56",59),
  ("Ferdinand May","3.21",216),
  ("Uriah Myers","2.91",588),
  ("Nelle Frank","3.17",614);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Cooley","3.23",179),
  ("Alyssa Johns","2.76",179),
  ("Colt Norton","3.06",387),
  ("Chancellor Bender","3.25",599),
  ("Chadwick Wilder","2.90",113),
  ("Zane Webster","2.54",177),
  ("Shellie Fulton","3.59",67),
  ("Vera Pierce","2.62",256),
  ("Mikayla Hardy","2.54",350),
  ("Odysseus Fitzgerald","2.89",231);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Athena Patel","3.06",482),
  ("Lara Park","3.08",101),
  ("Nyssa Evans","2.50",210),
  ("Wallace England","2.64",552),
  ("Graiden Hamilton","3.32",406),
  ("Forrest Rollins","2.94",372),
  ("Mannix Bradford","3.04",116),
  ("Wyoming Kemp","3.09",580),
  ("Dacey Guzman","2.48",587),
  ("Yardley Ward","3.14",283);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Joelle Juarez","3.17",399),
  ("Demetrius Crane","2.91",558),
  ("Chadwick Mcclure","2.72",114),
  ("Ethan Rogers","2.97",223),
  ("Yoshi Higgins","3.26",72),
  ("Dalton Gordon","3.08",525),
  ("Myra Hubbard","2.78",509),
  ("Carissa Pruitt","3.01",84),
  ("Zachary Wooten","2.94",433),
  ("Eaton Weiss","3.10",232);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Louis Allison","3.12",116),
  ("Yuli Ward","2.95",304),
  ("Michael Foreman","3.03",69),
  ("Gabriel Silva","2.93",184),
  ("Fiona White","3.45",135),
  ("Josephine Barry","2.98",461),
  ("Kane Hurst","3.22",374),
  ("Leandra Dillard","3.09",246),
  ("Roary Rhodes","3.30",275),
  ("Deanna Brooks","2.84",22);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Zachery Duncan","2.73",371),
  ("Rebekah Porter","2.71",381),
  ("Robin Kim","3.24",144),
  ("Daryl Pugh","2.81",316),
  ("Diana Knight","3.43",615),
  ("Joelle Hyde","3.06",415),
  ("Erica Ortega","3.12",118),
  ("Leigh Conley","3.24",421),
  ("Oliver Forbes","2.79",345),
  ("Shay Alston","2.70",6);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Edan Mcfadden","2.97",199),
  ("Macy Carpenter","2.96",446),
  ("Gisela Brock","3.22",497),
  ("Idola Cortez","2.94",555),
  ("Tatyana Hill","2.81",77),
  ("Aidan Nichols","3.03",418),
  ("Nora Nolan","2.77",497),
  ("Minerva Joyce","2.47",552),
  ("Dara Conway","2.83",428),
  ("Kellie Boone","3.02",385);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lisandra Rocha","2.75",328),
  ("Walker Irwin","2.42",90),
  ("Nell Vega","3.38",137),
  ("Azalia Preston","2.65",491),
  ("Fatima Henderson","3.12",595),
  ("Sigourney Cooley","3.04",605),
  ("Harding Mendoza","3.25",397),
  ("Lacota Stevenson","2.69",535),
  ("Ruth Robbins","3.23",196),
  ("Graham Larsen","2.93",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victoria Knox","2.84",92),
  ("Zane Mcbride","2.92",485),
  ("Emerson Dawson","3.30",486),
  ("Chiquita Flores","2.91",438),
  ("Maite Larson","3.03",275),
  ("Whilemina Bowen","2.96",605),
  ("Wallace Lester","2.89",625),
  ("Edan Pollard","3.25",628),
  ("Vance Schroeder","2.74",463),
  ("Tatyana Valencia","3.03",291);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scott Gamble","3.22",78),
  ("Haviva Reed","3.03",572),
  ("Kimberly Walter","2.44",289),
  ("Kuame Dotson","3.29",127),
  ("Colin Newton","2.68",251),
  ("Geoffrey Harding","2.72",448),
  ("Aristotle Grimes","2.80",483),
  ("Buckminster Richards","2.62",556),
  ("Troy Jordan","2.85",270),
  ("Blake Suarez","2.92",178);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Leo Jackson","2.71",623),
  ("Gary Osborn","2.76",85),
  ("Fallon Bradford","2.84",189),
  ("Sara Wheeler","2.99",325),
  ("Russell Mcknight","2.72",546),
  ("Lacy Vance","2.68",59),
  ("Destiny Mendez","2.87",448),
  ("Matthew Lucas","2.79",318),
  ("Baker O'connor","2.74",195),
  ("Perry Foley","2.73",504);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Pamela Wynn","3.53",331),
  ("Chandler Phillips","3.14",44),
  ("Imelda Durham","2.42",456),
  ("Yuli Mayo","3.37",209),
  ("Kerry Lynn","3.21",592),
  ("Zeus Cote","2.74",394),
  ("Castor Leonard","2.68",234),
  ("Seth Dejesus","3.20",381),
  ("Hu Mccoy","2.62",454),
  ("Zenia Page","3.07",462);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Molly Ortiz","3.32",363),
  ("Samuel Andrews","3.25",377),
  ("Amelia Guzman","3.11",438),
  ("Carissa Harrison","3.24",493),
  ("Ronan Davidson","2.44",628),
  ("Shad Moses","3.31",361),
  ("Daniel White","3.08",286),
  ("Amanda Bryant","2.94",87),
  ("Melodie Mccarty","3.27",193),
  ("Hyatt Leblanc","2.81",36);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jamal Sampson","3.57",351),
  ("Philip King","2.80",24),
  ("Orlando Rogers","3.32",10),
  ("Abra Olsen","3.07",56),
  ("Bradley Riggs","2.83",464),
  ("Dean Haley","3.01",403),
  ("Shellie Lambert","2.54",617),
  ("Carolyn Murphy","3.24",164),
  ("Cole Copeland","3.11",506),
  ("Freya Spencer","3.38",73);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Yoshio Baker","2.67",48),
  ("Brittany Park","2.36",236),
  ("Ava Dennis","2.94",70),
  ("Baxter Whitehead","2.87",605),
  ("Echo Stone","2.83",497),
  ("Dalton Espinoza","2.86",283),
  ("Ray Brady","2.80",246),
  ("Alan Roman","3.26",206),
  ("Oren Barron","3.14",37),
  ("Alana Snyder","2.99",450);


INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Shea Lewis","2.80",531),
  ("Nissim Nunez","3.27",193),
  ("Tanner Sheppard","3.21",566),
  ("Abdul Gordon","2.58",186),
  ("Martha Avila","3.31",322),
  ("Zelda Holmes","2.74",321),
  ("Lillian Farmer","3.16",205),
  ("Risa Farmer","3.36",395),
  ("Idona Riggs","2.77",247),
  ("Beck Burgess","3.00",548);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lyle Irwin","3.31",151),
  ("Chancellor Fuentes","3.12",571),
  ("Xyla King","2.75",339),
  ("Jamal Burch","3.36",507),
  ("Hiram Robles","3.23",310),
  ("Ethan Rocha","2.83",598),
  ("Claudia Mosley","3.11",108),
  ("Nathaniel Benton","3.13",219),
  ("Wang Conner","3.05",487),
  ("Clark Burt","2.76",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Libby Norton","3.06",239),
  ("Robin Jones","2.79",640),
  ("Zephania Barton","2.99",269),
  ("Constance Stone","2.88",434),
  ("Clark Hines","3.05",130),
  ("Kelsey England","3.26",235),
  ("Brennan Fleming","2.99",376),
  ("Elliott Dickerson","2.78",71),
  ("Jameson Mosley","2.99",406),
  ("William Sweeney","3.26",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Mccarthy","3.39",250),
  ("Odette Carroll","2.81",595),
  ("Lev Frazier","3.11",523),
  ("Isaac Payne","2.43",514),
  ("Brian Moreno","2.96",428),
  ("Lacey Hansen","3.14",7),
  ("Hiram Berry","3.00",472),
  ("Medge Pickett","2.70",427),
  ("Brendan Morris","2.97",171),
  ("Zephania Brady","2.52",554);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Melyssa Church","2.90",395),
  ("Colin Norton","2.91",6),
  ("Tanisha Key","2.96",253),
  ("Haley Estrada","3.18",223),
  ("Kevin Hamilton","2.92",318),
  ("Alfonso Chandler","3.16",382),
  ("Inez Alford","2.95",315),
  ("Nita Gaines","3.22",486),
  ("Nash Combs","2.90",85),
  ("Alan Hatfield","2.80",123);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jessamine Guzman","3.10",316),
  ("Garrett Henderson","2.97",78),
  ("Willa Blake","3.42",516),
  ("Otto Carpenter","3.12",616),
  ("Ivan Walter","2.68",217),
  ("Francis Faulkner","2.77",262),
  ("Ian Luna","2.88",485),
  ("Zachery Mccray","2.82",49),
  ("Dylan Wood","2.58",307),
  ("Ayanna Shaffer","3.18",93);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Hamilton","2.84",192),
  ("Callum Trujillo","3.08",294),
  ("Ethan Reid","3.25",6),
  ("Kirk Durham","2.97",57),
  ("Alma Duncan","2.55",292),
  ("Jacob Holden","2.99",562),
  ("Emmanuel Mclean","2.95",350),
  ("Cody Solis","2.70",384),
  ("Mohammad Dillard","2.75",142),
  ("Margaret Garcia","3.03",31);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hope Ellis","2.75",387),
  ("Julian Nelson","3.05",110),
  ("Ulysses Hooper","3.30",373),
  ("Marshall Galloway","3.11",382),
  ("Leigh Dillon","2.98",139),
  ("Caleb Santiago","2.67",397),
  ("Alika Fernandez","3.46",211),
  ("Aline Madden","2.70",10),
  ("Veda Koch","3.18",524),
  ("Cailin Phelps","2.62",374);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Diana Lowery","2.98",139),
  ("Rudyard Erickson","3.47",332),
  ("Rinah Velez","2.56",310),
  ("Damian Strickland","3.12",423),
  ("Scott Parsons","2.84",30),
  ("Jerry Underwood","2.72",336),
  ("Sasha Simpson","3.26",195),
  ("Selma Mccray","3.05",523),
  ("Petra Nash","2.73",407),
  ("Zahir Good","2.53",110);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Stacey Mcknight","2.87",581),
  ("Kylan Wheeler","3.13",477),
  ("Roanna Conley","3.21",370),
  ("Hanae Dunlap","3.13",44),
  ("Kermit Hahn","2.75",206),
  ("Deacon Finch","2.98",234),
  ("Ethan Mathis","3.21",262),
  ("Oprah Rojas","2.94",209),
  ("Devin Rivas","2.69",215),
  ("Liberty Berg","2.60",505);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);
 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Samson Santana","5.09",383),
  ("Illana Beach","4.99",255),
  ("Brent Roach","4.59",244),
  ("Colt Dudley","5.02",267),
  ("Guy Bray","5.25",57),
  ("Shelby Irwin","4.86",249),
  ("Gary Mullen","4.73",155),
  ("Kevin Nielsen","5.06",502),
  ("Mia Mooney","5.04",414),
  ("Aurora Simpson","5.65",579);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Aladdin Mccarty","4.92",142),
  ("Winifred Welch","5.22",75),
  ("Jordan Snyder","5.39",202),
  ("Thor Mcleod","4.78",496),
  ("Montana Waters","5.11",364),
  ("Malachi Park","4.78",18),
  ("Stacey Woods","4.63",520),
  ("Lila Howe","4.90",471),
  ("Alexander Hampton","5.39",28),
  ("Malik Skinner","5.51",633);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ina Harris","4.73",98),
  ("Martha Church","5.06",600),
  ("Darius Kelley","5.03",627),
  ("Fuller Michael","4.76",246),
  ("Levi Everett","5.34",65),
  ("Paul Spence","4.90",125),
  ("Miriam England","4.80",126),
  ("Karly Stout","5.20",29),
  ("Vladimir Petty","4.82",602),
  ("Cairo Pollard","4.92",230);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Anthony","4.92",462),
  ("Barrett Conrad","5.12",574),
  ("Elliott Herring","5.48",463),
  ("Anthony Cotton","4.91",599),
  ("Hector Maddox","5.24",284),
  ("Jade Lee","4.96",631),
  ("Benedict Dorsey","4.99",472),
  ("Ainsley Madden","5.24",136),
  ("Ursa Norton","4.89",1),
  ("Robin Curtis","5.07",393);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reuben Wolf","5.13",278),
  ("Gareth Singleton","5.14",91),
  ("Xanthus Gonzalez","4.81",441),
  ("Rebekah Woodward","5.03",457),
  ("Alexander Moore","5.30",125),
  ("Tate Bryan","4.96",277),
  ("Graiden Campbell","5.51",225),
  ("Walker Davidson","4.93",626),
  ("Briar Gilmore","4.96",422),
  ("Ella Pope","4.99",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Bowman","5.11",539),
  ("Brenda Shannon","5.01",46),
  ("Rinah Moss","5.08",530),
  ("Inez Meadows","4.70",286),
  ("Addison Duke","4.89",87),
  ("Grace Chavez","5.03",513),
  ("Kuame Dawson","5.44",133),
  ("Martena Dominguez","5.49",625),
  ("Candice Montoya","4.53",3),
  ("Barclay Hines","5.28",586);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("TaShya Spence","4.67",570),
  ("Unity Burch","4.94",134),
  ("Christen Sosa","4.90",131),
  ("Clare Morris","5.13",469),
  ("Cameran Koch","4.48",309),
  ("Zeph Cortez","4.91",10),
  ("Brenden Mccray","5.23",280),
  ("Neil Sandoval","5.00",252),
  ("Jordan Chan","5.20",489),
  ("Kyle Newman","5.58",518);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lacey Carroll","5.08",439),
  ("Kai Harmon","4.80",292),
  ("Naomi Coffey","5.48",359),
  ("Ross Payne","5.13",479),
  ("Althea Torres","5.00",423),
  ("Idona Mcfadden","5.16",568),
  ("Piper Farrell","5.20",385),
  ("Fatima Haynes","5.53",99),
  ("Jasmine Velazquez","5.21",211),
  ("Stephen Arnold","5.09",185);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hop Rocha","4.97",476),
  ("Vanna Hoover","4.67",222),
  ("Martha Robertson","5.04",434),
  ("Xanthus Wilder","4.69",115),
  ("Aretha Beach","5.29",380),
  ("Geraldine Booker","4.77",297),
  ("Castor Rios","4.65",474),
  ("Basil Mcgee","4.86",10),
  ("Dieter Crosby","4.72",140),
  ("Zeph Wyatt","4.96",404);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gage Day","5.20",390),
  ("Ronan Hammond","4.64",50),
  ("Grace Cherry","5.08",423),
  ("Kaseem Mclaughlin","5.27",111),
  ("Sharon Underwood","5.32",2),
  ("Xavier Blackwell","4.97",211),
  ("Seth Jacobs","5.22",441),
  ("Nevada Gaines","5.14",207),
  ("Karina Gates","4.74",236),
  ("Hayden Ewing","4.91",518);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Alexa Larson","5.03",561),
  ("Oscar Navarro","4.83",39),
  ("Zahir Bradley","4.89",135),
  ("Harding Crawford","5.43",408),
  ("Shay Myers","4.46",625),
  ("Dane Dale","4.86",564),
  ("Kerry Calderon","4.81",197),
  ("Patience Walters","4.98",471),
  ("Alika Hartman","4.71",401),
  ("Hilary Russo","5.08",331);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylynn Mcfarland","4.79",244),
  ("Cameron Serrano","5.11",574),
  ("Howard Ramsey","4.70",9),
  ("Alec Shannon","5.03",433),
  ("Martina Arnold","4.61",300),
  ("Ashton Holden","5.01",240),
  ("Chloe Nash","5.01",584),
  ("Gwendolyn Delacruz","4.75",292),
  ("Dean Blair","5.56",364),
  ("Amir Beach","4.85",46);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mercedes Bryant","5.16",568),
  ("Halee Boyle","4.72",553),
  ("Norman Carroll","4.85",121),
  ("Aurelia Vaughn","5.37",221),
  ("James Navarro","4.88",221),
  ("Danielle Tyler","5.09",86),
  ("Maryam Carson","5.21",560),
  ("Ezekiel Hicks","4.70",182),
  ("Chester Ross","4.72",291),
  ("Drew Santos","5.15",221);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Christopher Hart","5.14",83),
  ("Thor Mcgee","4.73",523),
  ("Wang Haney","4.70",313),
  ("Isaiah Kramer","4.89",129),
  ("Lynn Macias","4.98",510),
  ("Cruz Merrill","4.78",304),
  ("Susan Mccormick","5.48",153),
  ("Deborah Wong","5.30",20),
  ("Branden Conrad","5.11",243),
  ("Zane Goodman","5.09",488);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Indigo Crosby","4.88",82),
  ("Cole Young","5.19",426),
  ("Cally Tucker","4.68",540),
  ("Quin Boyle","4.86",473),
  ("Kadeem Joseph","4.52",365),
  ("Nola Lott","5.06",180),
  ("Colette Jarvis","5.16",218),
  ("Hamilton Cain","4.84",338),
  ("Amery Tyson","5.21",329),
  ("Denton Peterson","5.01",99);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Scarlett Mccray","4.90",251),
  ("Abra Richards","4.66",535),
  ("Caryn Underwood","5.05",406),
  ("Chester Davidson","5.10",222),
  ("Maryam Conrad","5.13",37),
  ("Merritt Landry","4.89",597),
  ("Gavin Olsen","4.96",15),
  ("Imani Soto","4.74",241),
  ("Aquila Ratliff","4.43",328),
  ("Adam Hill","5.44",359);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ulric Hooper","4.85",235),
  ("Price Brock","5.07",527),
  ("Rose Bradley","5.56",82),
  ("Yen Larsen","5.14",267),
  ("Timon Clarke","5.15",214),
  ("Valentine Faulkner","5.11",185),
  ("Nadine Howard","5.05",460),
  ("Regina Potter","5.35",579),
  ("Hollee Horton","4.80",338),
  ("Emerald Howell","5.33",444);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Micah Boyd","4.89",94),
  ("Jacob Bailey","5.02",310),
  ("Amethyst Brock","5.37",28),
  ("Imani Allen","4.63",498),
  ("Nathan Taylor","4.95",471),
  ("Adara Adkins","4.81",95),
  ("Brennan Floyd","4.97",514),
  ("Amaya Evans","4.96",252),
  ("Shea Mckay","4.98",11),
  ("Kitra Finley","5.19",43);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lionel Cook","4.55",16),
  ("Ross Hardy","4.80",107),
  ("Julie Mejia","4.50",276),
  ("Berk Ross","5.24",202),
  ("Keiko Gardner","5.28",359),
  ("Grady Mooney","5.46",522),
  ("Anthony Grant","5.06",100),
  ("Nicholas Curry","4.71",286),
  ("Thane Vance","4.50",627),
  ("Hyatt Byrd","5.04",419);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Paul","4.88",512),
  ("Alisa Lamb","4.89",121),
  ("Brianna England","5.30",3),
  ("Jennifer Wall","4.78",338),
  ("Cleo Maynard","4.74",635),
  ("Hannah Mays","4.87",581),
  ("Ariel Ayers","5.49",82),
  ("Jordan Dejesus","4.06",588),
  ("Joseph Logan","5.36",344),
  ("Levi Flowers","5.07",399);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Victor Guzman","4.54",81),
  ("Melvin Spencer","4.83",206),
  ("Hillary Orr","4.65",327),
  ("Graham Jenkins","5.05",61),
  ("Alexander Ashley","4.87",610),
  ("Desirae Roberson","4.78",625),
  ("Wade Mathews","5.15",142),
  ("Len Marsh","4.96",400),
  ("Bell Mcguire","5.31",391),
  ("Clinton Barlow","5.13",449);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bertha Mckenzie","4.89",543),
  ("Declan Franks","5.01",213),
  ("Zeph Cross","4.47",408),
  ("Isaiah Bernard","5.19",144),
  ("Desiree Wilkinson","5.07",416),
  ("Alexander Marks","5.33",460),
  ("Herrod Whitehead","4.53",263),
  ("Karina Mcconnell","4.97",449),
  ("Jin Good","5.01",371),
  ("Kirestin Wade","4.81",471);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Melton","5.09",386),
  ("Ramona Maldonado","5.24",20),
  ("Catherine Carter","5.26",50),
  ("Dexter Mills","5.07",427),
  ("Edward Conrad","5.03",243),
  ("Sean King","4.74",470),
  ("Marny Mcleod","4.83",70),
  ("Hyacinth Cruz","5.13",637),
  ("Barclay Reed","4.44",77),
  ("Orlando Johns","4.33",325);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hasad Brady","5.38",318),
  ("Charde Gray","4.61",638),
  ("Norman Phillips","5.01",274),
  ("Price Fry","4.97",625),
  ("Micah Blair","5.00",101),
  ("Zeus Wallace","5.01",594),
  ("Unity Pickett","4.65",389),
  ("Paki Carver","4.70",522),
  ("Sigourney Valentine","4.85",157),
  ("Gloria Logan","5.67",143);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Brock Mcgowan","4.76",390),
  ("Roary Melendez","4.80",240),
  ("Nell Moran","4.90",591),
  ("Shaeleigh Mcpherson","4.94",247),
  ("Slade Dillard","5.00",403),
  ("Carla Melendez","4.66",8),
  ("Brent Allison","4.84",232),
  ("Jelani Strong","5.87",445),
  ("Austin Cabrera","4.67",555),
  ("Cooper Franco","5.34",286);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Candace Wells","4.74",5),
  ("Tiger Hansen","4.63",40),
  ("Orli Marquez","5.06",31),
  ("Colin Cobb","5.41",400),
  ("Wylie Oneil","5.09",102),
  ("Fritz Merritt","5.41",369),
  ("Wallace Ware","5.09",403),
  ("Paul Owen","5.25",229),
  ("Caesar Bean","5.09",554),
  ("Doris Haley","5.09",287);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ifeoma Fox","4.85",277),
  ("Quentin Byers","4.45",148),
  ("Channing Reeves","4.97",141),
  ("Neil Burgess","4.55",335),
  ("Mariam Webster","4.94",341),
  ("Oprah Rivers","5.12",207),
  ("Darryl Cotton","4.34",441),
  ("Gary Hickman","5.26",617),
  ("Avram Koch","5.30",586),
  ("Zorita Cote","5.34",84);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mannix Mcconnell","5.13",212),
  ("Colette Carr","4.65",215),
  ("Xavier Lucas","5.01",16),
  ("Harlan Mcintyre","5.20",465),
  ("Lenore Gregory","4.89",544),
  ("Ali Morin","5.04",368),
  ("Arthur Benjamin","4.98",265),
  ("Mikayla Clark","4.73",620),
  ("Hector Warner","4.93",569),
  ("Macey Vaughn","4.77",458);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Galvin O'donnell","5.06",229),
  ("Fritz Hogan","5.44",316),
  ("Logan Ramirez","4.74",206),
  ("Shea Blake","4.82",392),
  ("Mira Wilder","5.25",76),
  ("Emily Petersen","4.82",360),
  ("Flynn Cobb","4.81",99),
  ("Marsden Cantrell","5.49",464),
  ("Ava Herrera","4.98",431),
  ("Deacon Compton","5.14",375);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Riley O'connor","5.18",403),
  ("Demetrius Allen","5.13",317),
  ("Anne Witt","4.55",394),
  ("Yen Marks","4.92",41),
  ("Quin Santana","4.58",639),
  ("Garth Callahan","4.86",455),
  ("Jada Richardson","5.02",94),
  ("Donovan Lambert","5.00",400),
  ("Chester Pearson","4.70",420),
  ("Rhiannon Houston","4.64",548);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Quinlan Hartman","5.27",536),
  ("Regan Nguyen","5.11",55),
  ("Reuben Peters","5.57",368),
  ("Nolan Ellison","4.39",466),
  ("Harrison Hanson","4.95",90),
  ("Raven Klein","5.00",533),
  ("Cameron Harris","4.92",58),
  ("Xander Lott","5.06",275),
  ("Venus Cleveland","4.78",54),
  ("Fallon Sharp","5.19",401);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Gray Weeks","5.00",299),
  ("Deirdre Davis","5.05",422),
  ("Jin Morris","4.70",394),
  ("Cecilia Cole","5.12",121),
  ("Dane Leon","5.04",22),
  ("Camden Hamilton","4.79",391),
  ("Xanthus Trujillo","4.91",506),
  ("Hoyt Sexton","4.89",500),
  ("Irene Lawrence","4.91",65),
  ("Xandra Medina","4.72",116);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Sawyer Velez","4.91",328),
  ("Lyle Munoz","5.12",535),
  ("Jamal Briggs","5.04",544),
  ("Freya Jones","4.62",340),
  ("Kathleen Vance","4.90",507),
  ("Reese Garner","4.62",20),
  ("Ivory Douglas","5.12",192),
  ("Colt Justice","5.03",215),
  ("Uta Guy","5.12",305),
  ("Jordan Delaney","5.11",148);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Julian Garrison","4.84",334),
  ("Xanthus Slater","5.06",426),
  ("Gavin Alexander","5.18",188),
  ("Veronica Robertson","4.96",170),
  ("Margaret Allen","4.83",73),
  ("Tanek Sosa","5.13",318),
  ("Jennifer Hebert","4.77",47),
  ("Hanna Spence","4.83",633),
  ("Amela Blanchard","4.81",123),
  ("Marny Banks","5.05",423);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ava Bass","5.49",519),
  ("Dale O'connor","5.57",246),
  ("Walker Hardy","4.46",108),
  ("Inez Stevenson","4.73",636),
  ("Jerome Skinner","4.92",257),
  ("Aladdin Barker","4.84",128),
  ("Buffy Ellis","5.07",432),
  ("Yael Velez","4.88",112),
  ("Ursula Pratt","4.59",492),
  ("Samantha Mclaughlin","4.79",522);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Angela Haley","5.15",29),
  ("Anjolie Peck","5.21",635),
  ("Chaney Hurst","4.81",191),
  ("Jelani Cooke","4.42",130),
  ("Ruth Benton","5.00",237),
  ("Octavius Mcguire","5.00",489),
  ("Keaton Nichols","5.26",348),
  ("Dominic Parker","5.38",569),
  ("Sophia Hardy","5.45",290),
  ("Imogene Yang","4.82",589);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hall Chen","4.56",218),
  ("Nathan Weeks","5.18",431),
  ("Cameron Medina","4.91",123),
  ("Quinlan Russo","4.87",155),
  ("Ignacia Bush","4.90",530),
  ("Fuller Dale","4.74",410),
  ("Odysseus Whitehead","4.76",115),
  ("Jacob Carver","4.91",610),
  ("Nerea Crosby","5.26",327),
  ("Ezra Galloway","4.65",61);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Dexter Austin","5.52",2),
  ("Sacha Haney","5.03",577),
  ("Colin Foley","5.23",578),
  ("Juliet Phillips","4.93",132),
  ("Rhonda Charles","4.62",42),
  ("Isaiah Bush","5.05",208),
  ("Lavinia Griffith","5.01",114),
  ("Carly Marquez","4.72",173),
  ("Orson Sears","4.52",356),
  ("Quamar Vaughan","5.17",464);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mallory Nguyen","5.43",30),
  ("Sharon Acevedo","4.60",351),
  ("Berk Rivera","4.93",615),
  ("Flavia Wilson","5.44",7),
  ("Bree Dunn","4.63",73),
  ("Amity Gibbs","4.74",314),
  ("Lars Savage","4.69",142),
  ("Rashad Barrera","4.73",6),
  ("August Wyatt","5.02",299),
  ("August Blanchard","4.81",276);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Barbara Armstrong","4.43",43),
  ("Kyra Shannon","4.98",593),
  ("Reed Wolfe","5.04",223),
  ("Jael Lester","4.74",416),
  ("Kelsey Mercado","5.25",587),
  ("Acton Aguirre","4.73",484),
  ("Alvin Joyce","5.22",169),
  ("Aspen Jordan","4.86",202),
  ("Emi Richards","5.11",321),
  ("Breanna Wilder","4.96",463);



 

INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Reece Burt","4.96",271),
  ("Jelani Miranda","4.89",622),
  ("Rafael Wright","5.54",150),
  ("Imani Hobbs","5.04",514),
  ("Remedios Davis","5.21",430),
  ("Burke Jones","4.76",190),
  ("Megan Christian","5.01",536),
  ("George Green","5.03",583),
  ("Hector Townsend","5.19",443),
  ("Dieter Santana","4.91",371);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Harper Potts","4.87",574),
  ("Colorado Brennan","4.99",607),
  ("Zenaida Goff","5.38",450),
  ("Bethany Burnett","4.85",443),
  ("Hunter Martin","5.27",553),
  ("Selma Frederick","4.69",176),
  ("Stuart Ayala","4.84",459),
  ("Amal Lowe","5.38",412),
  ("Sean Meadows","4.99",13),
  ("Jeremy Carrillo","5.24",9);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kameko Decker","5.00",466),
  ("Pascale Mclaughlin","5.05",584),
  ("Madeline Dunlap","5.17",531),
  ("Beverly Skinner","4.66",59),
  ("Athena Petersen","5.44",517),
  ("Lesley Ellison","4.70",379),
  ("Kylan Moreno","4.74",378),
  ("Quail Morales","4.99",88),
  ("Abel Clark","5.12",75),
  ("Derek Wiley","5.14",439);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Piper Humphrey","4.84",163),
  ("Nevada Battle","4.99",154),
  ("Harriet Kemp","4.95",68),
  ("Martha Lawrence","5.21",138),
  ("Abdul Head","4.85",322),
  ("Sean Petty","5.36",134),
  ("Timothy Ayers","5.57",426),
  ("Freya Oneal","4.78",269),
  ("Daniel Flowers","4.95",280),
  ("Otto Burnett","4.94",575);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Moss","5.11",577),
  ("Octavius Weeks","4.90",346),
  ("Daniel Beach","5.08",295),
  ("Macon Ratliff","5.12",270),
  ("Audra Hendricks","4.73",572),
  ("McKenzie Mcconnell","4.94",174),
  ("Kylie Alvarez","4.93",291),
  ("Darrel Page","5.02",473),
  ("Octavia Donovan","5.01",635),
  ("Brett Doyle","5.33",405);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Derek Miller","4.83",301),
  ("Duncan Rhodes","5.43",209),
  ("Ayanna Camacho","4.97",624),
  ("Lillian Mooney","5.40",368),
  ("Jillian Jimenez","4.82",297),
  ("Quintessa Elliott","5.11",267),
  ("Ira Sweeney","5.08",512),
  ("Brenda Key","5.25",523),
  ("Clementine Fuller","5.13",46),
  ("Kyle Bailey","5.03",195);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hamish Potts","4.90",384),
  ("Leah Whitney","4.93",470),
  ("Connor Garrett","5.23",552),
  ("Shad Frank","5.70",319),
  ("Plato Lowery","5.13",413),
  ("Lamar Church","4.75",334),
  ("Jackson Henderson","4.95",516),
  ("Vaughan Garner","4.96",201),
  ("Paki Mcclain","5.12",506),
  ("Rigel Marshall","4.97",508);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Keely Schwartz","4.54",303),
  ("Maite Dickson","5.08",547),
  ("Lyle Holcomb","5.20",247),
  ("Lance Warren","4.86",316),
  ("Scott Rogers","4.94",55),
  ("Hyatt Cooke","4.99",450),
  ("Lacota Cabrera","4.86",510),
  ("Quin Mosley","4.87",468),
  ("Jerome Mccall","5.11",170),
  ("Oren Camacho","4.89",67);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Jarrod Soto","4.67",460),
  ("Nyssa Drake","5.01",514),
  ("Alisa Bullock","4.83",487),
  ("Reagan Cantrell","5.03",465),
  ("Yardley Olsen","4.66",23),
  ("Lara Fitzgerald","4.77",173),
  ("Amir Gamble","4.65",402),
  ("Abdul Hamilton","4.89",193),
  ("Brock Harrell","5.18",105),
  ("Jeanette Chandler","4.74",105);
INSERT INTO tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Linus Jimenez","5.12",341),
  ("Justin Sloan","4.60",553),
  ("Octavius Holloway","4.85",555),
  ("Brenda Herman","4.96",98),
  ("Sharon Crosby","5.32",158),
  ("Colorado Fitzgerald","4.97",263),
  ("Gloria Pickett","5.12",145),
  ("Ishmael Mccarthy","4.59",243),
  ("Alvin Kelly","5.12",246),
  ("Colby Burch","5.07",133);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Vera Bradford","11.01",30),
  ("Thomas Whitehead","10.91",252),
  ("Camden Ayers","10.43",463),
  ("Mikayla Ayala","10.67",511),
  ("Ezekiel Barry","10.82",207),
  ("Michael Gates","10.69",519),
  ("Jackson Manning","11.02",379),
  ("Odessa Yates","11.25",634),
  ("Aquila Howe","10.77",336),
  ("Thor Rivera","10.91",482);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Minerva Whitehead","10.64",7),
  ("Berk Huber","10.57",607),
  ("Maisie Pace","11.14",499),
  ("Fleur Davis","11.11",330),
  ("Cheyenne Woods","10.92",371),
  ("Elvis Bray","11.20",186),
  ("Violet Higgins","10.93",636),
  ("Dominic Hamilton","10.95",210),
  ("Brenda Rush","11.24",170),
  ("Hop Boyer","10.95",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Otto Joyner","11.14",190),
  ("Lareina Monroe","11.32",130),
  ("Hannah Figueroa","11.14",273),
  ("Shoshana Mercer","10.92",519),
  ("Cameran Lang","11.30",186),
  ("Francesca Martinez","10.89",142),
  ("Zachary Hernandez","11.05",451),
  ("Zachery Nguyen","11.11",617),
  ("Georgia Mcclain","11.13",81),
  ("Stewart Spence","10.99",516);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Meredith Wheeler","11.14",285),
  ("Leo Morris","10.82",132),
  ("Bruno Mckinney","10.96",362),
  ("Armand Meyer","11.15",116),
  ("Mechelle Cherry","11.20",490),
  ("Adele Reed","11.14",280),
  ("Jack Davis","11.02",481),
  ("Raja Woodard","10.67",328),
  ("Rowan Bowen","11.37",418),
  ("Gillian Hanson","10.90",247);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bevis Gregory","10.45",638),
  ("Patricia Mccoy","11.04",365),
  ("Moana Brewer","10.96",242),
  ("Jada Coleman","11.44",92),
  ("Tad Goodwin","10.96",29),
  ("Regan Dotson","11.00",51),
  ("Yvette Peterson","11.30",435),
  ("Daria Mcconnell","11.05",571),
  ("Ivy Adkins","11.06",40),
  ("Whoopi Webster","11.34",398);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Omar Workman","11.28",591),
  ("Anthony Smith","11.35",611),
  ("Keegan Hull","11.74",427),
  ("Reed Hines","11.42",635),
  ("Grady Vance","10.96",485),
  ("Rebecca Cross","10.70",194),
  ("Jeremy Cabrera","10.84",30),
  ("Nicole Nicholson","10.93",175),
  ("Rebecca Richmond","11.16",312),
  ("Chester George","11.42",5);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Levi Holland","11.39",291),
  ("Sean Kennedy","11.39",501),
  ("Signe Finley","10.80",398),
  ("Davis Contreras","10.65",94),
  ("Marny White","10.80",353),
  ("Demetria Kirk","10.98",581),
  ("Ulla Davenport","11.03",64),
  ("Troy Flores","11.04",549),
  ("Orla Patel","10.98",132),
  ("Naida Nixon","11.12",114);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Madeline Mcgowan","11.06",443),
  ("Rachel Spence","11.07",465),
  ("Quinn Burnett","11.04",191),
  ("Lynn Ryan","11.34",234),
  ("Stewart Downs","10.99",400),
  ("Paki Norman","11.03",4),
  ("Geraldine Cole","10.88",190),
  ("Yvette Reed","11.00",482),
  ("Allegra Duncan","10.83",310),
  ("Orli Holt","11.16",200);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Wayne Burns","10.55",75),
  ("Omar Pace","11.14",567),
  ("Dalton Rodriquez","11.10",223),
  ("Octavius Snow","10.65",493),
  ("Isabella Dunn","10.89",7),
  ("Carissa Curry","10.90",434),
  ("Cynthia Russell","11.46",627),
  ("Talon Briggs","11.19",389),
  ("Gray Garner","11.27",565),
  ("Cheyenne Flynn","10.74",143);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Geoffrey Roberts","10.77",448),
  ("Savannah Gentry","10.49",428),
  ("Laurel Chapman","11.22",595),
  ("Dean Foley","10.81",625),
  ("Honorato Morales","10.77",620),
  ("Cyrus Osborn","11.12",108),
  ("Berk Harper","11.24",468),
  ("Moses English","10.71",512),
  ("Chaney Jackson","11.12",486),
  ("Olivia Sawyer","11.20",190);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Serina Frederick","12.28",154),
  ("Stewart Vance","12.22",22),
  ("Flynn Stanley","11.71",492),
  ("Leila Lynch","11.89",70),
  ("Flynn Russo","12.04",558),
  ("Ali Carroll","12.01",97),
  ("Rae Rodriquez","11.50",121),
  ("Aspen Barr","12.06",49),
  ("Talon Albert","11.79",295),
  ("Gillian Brady","12.25",272);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clinton Kinney","11.99",467),
  ("Hiroko Bowman","12.09",446),
  ("Xander Calhoun","11.78",344),
  ("Dai Hansen","11.84",348),
  ("Erica Mendoza","12.00",2),
  ("Moses Best","12.07",528),
  ("Christian Lott","12.50",633),
  ("Haley Stone","11.70",471),
  ("Lael Herman","11.65",36),
  ("Portia Herman","11.84",564);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Ila Wagner","11.57",149),
  ("Rashad Stone","11.77",595),
  ("Keaton Jefferson","11.93",639),
  ("Moana Bird","12.18",300),
  ("Paul Love","12.16",189),
  ("Warren Price","12.20",616),
  ("Ruby Hill","11.81",504),
  ("Celeste Lamb","11.89",187),
  ("Ivy Fields","12.45",92),
  ("Donovan Griffin","12.15",179);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Heidi Tyler","12.06",452),
  ("Lilah King","12.43",593),
  ("Nash Mcmillan","11.47",407),
  ("Mark Tanner","11.94",470),
  ("Hedy Glenn","12.28",104),
  ("Reese Schneider","11.64",637),
  ("Kiara Gregory","12.34",256),
  ("Adrian Moon","11.99",280),
  ("Mary Atkinson","11.64",200),
  ("Orson Wolf","12.26",321);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lois Rogers","11.85",166),
  ("Zorita Stark","11.95",20),
  ("Carol Curtis","12.14",496),
  ("Jamal Parks","12.13",116),
  ("Danielle Joyner","11.70",49),
  ("Walter Callahan","12.67",491),
  ("Ivor Marshall","12.05",339),
  ("Octavius Edwards","11.83",61),
  ("Forrest Gentry","11.84",221),
  ("Noelle Carter","12.10",138);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Karyn Thornton","11.70",67),
  ("Maryam Osborne","12.06",205),
  ("Chadwick Kim","11.49",437),
  ("Maggie Gardner","12.06",399),
  ("Bruce Foley","12.00",451),
  ("Stephen Bailey","11.90",551),
  ("Teagan Bond","12.10",334),
  ("Tad Christensen","12.32",105),
  ("Brady Spence","12.30",437),
  ("Dale Rogers","11.95",147);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Fitzgerald Mathews","12.27",179),
  ("Theodore Hughes","12.34",438),
  ("Barbara Page","12.09",447),
  ("Daniel Shaw","12.07",327),
  ("Chastity Bolton","12.30",614),
  ("Aileen Rowland","12.10",132),
  ("Hilel King","12.15",26),
  ("Desirae Dale","11.99",458),
  ("Chadwick Johnston","12.07",545),
  ("Zeph Rivas","12.03",322);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Amethyst Dorsey","11.88",540),
  ("Nasim Sosa","11.97",77),
  ("Ciara Avila","11.80",263),
  ("Marshall Parsons","11.96",587),
  ("Camille Boyle","11.97",401),
  ("Hyatt Olsen","12.14",10),
  ("Burton Ray","11.88",190),
  ("Raphael Villarreal","12.20",618),
  ("Aidan Avila","12.17",378),
  ("Kameko Burks","11.67",225);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Clare Trevino","12.40",471),
  ("Len Larsen","12.32",15),
  ("Sandra Robbins","12.09",413),
  ("Chanda Dunn","11.71",50),
  ("Tana Neal","12.12",287),
  ("Caleb Lowe","11.94",249),
  ("Gavin Fitzpatrick","12.10",279),
  ("Kermit Soto","12.11",471),
  ("Hollee Suarez","12.07",73),
  ("Breanna Byrd","12.51",24);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Abra Prince","12.35",371),
  ("Dorian Warren","12.61",186),
  ("Harrison Mcgowan","12.17",95),
  ("Azalia Callahan","12.17",304),
  ("Quentin Giles","11.99",160),
  ("Aurelia Coleman","11.88",288),
  ("Dane Gonzalez","12.26",511),
  ("Bradley Hobbs","11.92",134),
  ("Melodie Lamb","11.64",433),
  ("Amity Christensen","11.82",203);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Echo Morin","8.67",379),
  ("Remedios Mejia","8.96",427),
  ("Ifeoma Potter","9.06",614),
  ("Boris Kim","8.56",196),
  ("Ashton Fitzpatrick","9.37",188),
  ("Shad King","8.50",474),
  ("Quinlan Tate","8.31",310),
  ("Nelle Anthony","8.95",581),
  ("Galvin Bishop","9.11",523),
  ("Yael Zamora","8.89",430);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Belle Alford","9.37",9),
  ("Chadwick Mendez","8.53",553),
  ("Quon Anthony","8.68",205),
  ("Ashton Pearson","9.37",491),
  ("Hayden Hodges","9.30",138),
  ("Claire Davenport","8.66",515),
  ("Ori Robles","8.74",299),
  ("Laurel Neal","9.01",293),
  ("Leslie Deleon","9.03",226),
  ("Graham Stewart","9.02",73);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xander Farley","9.29",250),
  ("Halee Edwards","9.17",279),
  ("Kenyon Vargas","8.98",470),
  ("Ignatius Livingston","9.24",238),
  ("Castor Pierce","8.79",233),
  ("Chase Mathis","8.72",486),
  ("Melvin Berg","8.81",89),
  ("Deanna Hall","8.69",31),
  ("Jescie Garrison","9.44",296),
  ("Cathleen Arnold","9.16",507);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Tarik Livingston","9.28",564),
  ("Brendan Winters","8.81",91),
  ("Ross Michael","8.36",282),
  ("Martina White","8.96",508),
  ("Trevor Schmidt","9.21",240),
  ("Uriah Hardin","9.17",175),
  ("Macon Dennis","9.38",557),
  ("Deanna Best","9.18",353),
  ("Clarke Church","8.88",502),
  ("Lester Schmidt","9.24",116);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Trevor Ayers","8.96",301),
  ("Anastasia Hudson","9.25",70),
  ("Fletcher Rice","9.37",431),
  ("Elijah Sharp","9.14",282),
  ("Denton Garcia","9.25",78),
  ("Hashim Solis","9.25",597),
  ("Kai Mccormick","8.44",198),
  ("Ali James","9.23",447),
  ("Claudia Talley","8.67",14),
  ("Steel Mcneil","8.79",41);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Adena Bond","8.82",15),
  ("Eaton Lambert","9.10",214),
  ("Margaret Winters","9.13",464),
  ("Illiana Rich","9.42",270),
  ("Tamekah Fox","8.82",87),
  ("Alisa Estes","9.23",412),
  ("Avye Nielsen","8.93",611),
  ("Daniel Rosales","8.99",202),
  ("Leonard Bowers","8.72",477),
  ("William Gomez","9.18",202);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Faith Gallegos","8.91",358),
  ("Abraham Mcclure","8.81",263),
  ("Mechelle Hammond","8.91",538),
  ("Christopher Peck","9.00",200),
  ("Karyn Hunter","9.36",553),
  ("Nelle Roman","8.69",611),
  ("Leilani Witt","9.06",600),
  ("Guy Hernandez","8.91",592),
  ("Mechelle Chaney","9.31",112),
  ("Byron Brooks","8.98",497);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kaye Simpson","9.19",109),
  ("Rhona Leonard","9.19",239),
  ("Iola Fernandez","9.23",162),
  ("Tucker Howard","9.10",388),
  ("Demetrius Munoz","9.26",559),
  ("Darryl Sampson","9.23",271),
  ("Cassidy Parsons","9.40",599),
  ("Craig Bradford","9.09",256),
  ("Chelsea Harding","8.92",541),
  ("Lionel Leonard","9.30",339);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kylie Stewart","9.19",333),
  ("Avram Castro","9.44",174),
  ("Lucian Diaz","9.20",472),
  ("Jelani Ochoa","8.92",322),
  ("Upton Byrd","9.08",423),
  ("Kennedy Grimes","9.32",622),
  ("Xavier Velez","9.23",173),
  ("Dominique Russo","8.73",19),
  ("Brett Dudley","8.56",264),
  ("Uriel Wright","8.94",144);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Xenos Thornton","8.63",420),
  ("Owen Golden","9.18",110),
  ("Sacha Dejesus","9.27",31),
  ("Zelenia Preston","8.69",340),
  ("Ryan Reese","8.87",343),
  ("Keelie Cash","8.79",452),
  ("Patience Paul","8.62",60),
  ("Portia Miles","9.13",362),
  ("Hector Maxwell","8.71",454),
  ("Erasmus Levy","8.78",58);


INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Kim Daniels","6.48",273),
  ("Ciaran Malone","7.05",228),
  ("Lane Kelly","7.54",603),
  ("Yoshi Cruz","6.83",97),
  ("Nayda Salazar","6.66",239),
  ("Adam Marks","6.64",194),
  ("Norman Hopkins","6.97",140),
  ("Kato Wilkins","7.35",18),
  ("Jayme White","7.28",74),
  ("Audrey Mccall","7.36",327);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Noah Santana","7.27",88),
  ("Rama Bush","6.64",594),
  ("Dexter Myers","7.12",450),
  ("Richard Baxter","7.03",230),
  ("Colleen Bell","7.19",37),
  ("Ira Merritt","6.97",29),
  ("Aurelia Hebert","7.19",80),
  ("Kerry Blackwell","6.68",135),
  ("Deacon Wilkerson","7.04",194),
  ("Freya Holman","7.34",224);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Mollie Lester","7.36",10),
  ("Norman Mcdowell","7.37",199),
  ("Madonna Brooks","6.53",366),
  ("Mason Erickson","7.25",45),
  ("Xyla Browning","6.75",101),
  ("Paula Serrano","7.65",457),
  ("Fatima Salas","6.96",200),
  ("Dennis Delacruz","6.69",69),
  ("Vielka Cooke","7.32",249),
  ("Wade Nicholson","7.10",112);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Camilla Dickson","7.14",259),
  ("Anne Mann","6.90",64),
  ("Ivana Phillips","7.28",295),
  ("Tasha Elliott","7.18",200),
  ("Oprah Massey","6.65",473),
  ("Lois Clay","7.21",197),
  ("Levi Boyle","6.93",190),
  ("Tad Sanders","6.91",387),
  ("Dominic Flores","6.82",454),
  ("Lance Gillespie","6.86",279);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Isaiah Banks","6.94",301),
  ("Martena Rocha","6.80",27),
  ("Xena Turner","7.40",567),
  ("Noah Chen","7.22",351),
  ("Preston Schultz","7.09",513),
  ("Hedwig Delacruz","6.77",455),
  ("Michelle Brock","6.81",465),
  ("Portia Keller","7.02",411),
  ("India Jordan","6.72",610),
  ("Camden Cross","6.92",376);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Eliana Harvey","7.15",146),
  ("Gary Mccall","7.13",411),
  ("Ina Goodwin","6.83",505),
  ("Grady Macias","6.88",185),
  ("Kylee Cote","7.04",48),
  ("Jaime Munoz","7.24",144),
  ("Zelenia Atkinson","6.68",630),
  ("Aquila Talley","6.98",465),
  ("Demetrius Vega","6.88",29),
  ("Kibo Fuentes","6.67",254);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Bell Calhoun","6.98",341),
  ("Jana Crosby","6.98",363),
  ("Elizabeth Peters","7.01",175),
  ("Chastity Glenn","6.82",382),
  ("Zeus Avila","7.06",257),
  ("Silas Hubbard","7.20",320),
  ("Ivory Harper","6.74",627),
  ("Castor Cook","6.81",399),
  ("Brielle Farmer","7.00",59),
  ("David Bowman","7.13",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Macey Baxter","6.73",464),
  ("Naomi Morse","7.41",51),
  ("Dominic Lamb","7.26",605),
  ("Hedy Sears","6.64",582),
  ("Graiden Hale","6.75",420),
  ("Imogene Dixon","7.22",270),
  ("Alika Mays","7.25",13),
  ("Davis Carson","6.89",379),
  ("Silas Schwartz","7.34",8),
  ("Thaddeus Roberts","6.83",77);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Lani Pace","7.12",82),
  ("Jessamine Parks","7.52",415),
  ("Uma Luna","6.88",419),
  ("Kay Johns","6.92",629),
  ("Rebekah Singleton","7.44",26),
  ("Indigo Mercer","6.65",346),
  ("Venus Barron","7.04",253),
  ("Lee Snider","7.47",121),
  ("Erin Weeks","6.53",315),
  ("Savannah Short","7.11",355);
INSERT INTO  tb_musica (`nome`,`tempo_musica`,`id_disco`)
VALUES
  ("Hedwig Webster","7.01",324),
  ("Willow Ray","7.15",245),
  ("Hayes Mathis","6.97",581),
  ("Cathleen Henson","6.84",252),
  ("Constance Pace","7.27",111),
  ("Lacey Bush","7.10",327),
  ("Chantale Booth","7.27",305),
  ("Tatiana Mccall","6.78",628),
  ("Madeline Santos","6.81",27),
  ("Gary Frye","7.03",459);

