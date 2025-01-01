CREATE DATABASE Corinthians;
USE CORINTHIANS;

CREATE TABLE JOGADORES(
	id INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(300) NOT NULL,
	Sobrenome VARCHAR(300) NOT NULL,
    Posição VARCHAR(300) NOT NULL,
    Data_de_nascimento DATE,
    País_de_nascimento VARCHAR(300) NOT NULL,
    PRIMARY KEY(ID)
);


CREATE TABLE Situação_Contratual(
	id INT NOT NULL AUTO_INCREMENT,
    Tipo_de_contrato VARCHAR(500) ,
    TEMPO_DE_CONTRATO DATE,
    jogadores_id INT NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY(jogadores_id) REFERENCES JOGADORES(ID)
);

CREATE TABLE Patrocinadores(
	id INT NOT NULL AUTO_INCREMENT,
    Empresa VARCHAR(500) NOT NULL,
    TEMPO_DE_CONTRATO DATE ,
    PRIMARY KEY(ID)
);

INSERT INTO JOGADORES(nome,sobrenome,posição,data_de_nascimento,país_de_nascimento)
VALUES
	("Hugo","De Souza Nogueira","Goleiro",'1999-01-31',"Brasil"),
    ("André","Ramalho Silva","Zagueiro",'1992-02-16',"Brasil"),
    ("Gustavo","Henrique Vernes","Zagueiro",'1993-03-24',"Brasil"),
    ("Matheus Lima","Beltrão de Amorim","Lateral Esquerdo",'1999-03-24',"Brasil"),
	("Diego José", "Palacios Espinoza", "Lateral Esquerdo", '1999-07-12', "Equador"),
    ("Fagner", "Conserva Lemos", "Lateral Direito", '1989-06-11', "Brasil"),
    ("Félix Eduardo", "Torres Caicedo", "Zagueiro", '1997-01-11', "Equador"),
    ("Carlos", "De Menezes Júnior", "Zagueiro", '1996-05-25', "Brasil"),
    ("Rodrigo", "Garro", "Meio-Campista", '1998-01-04', "Argentina"),
    ("Alex Paulo", "Menezes Santana", "Meio-Campista", '1995-05-13', "Brasil"),
    ("José Andrés", "Martínez", "Meio-Campista", '1994-08-07', "Venezuela"),
    ("Igor Caique", "Coronado", "Meio-Campista", '1992-08-18', "Brasil"),
    ("Pedro Henrique", "Pereira da Silva", "Atacante", '2000-11-02', "Brasil"),
    ("Héctor", "Hernández Marrero", "Atacante", '1995-09-14', "Espanha"),
    ("Memphis", "Depay", "Atacante", '1994-02-13', "Países Baixos"),
    ("André Martín", "Carrillo Díaz", "Atacante", '1991-06-14', "Peru"),
    ("Talles Magno", "Bacelar Martins", "Atacante", '2002-06-26', "Brasil"),
    ("Yuri", "Alberto Monteiro da Silva", "Atacante", '2001-03-18', "Brasil");
    
INSERT INTO PATROCINADORES(EMPRESA,TEMPO_DE_CONTRATO)
VALUES
	("Esportes da sorte","2027-07-01"),
    ("BMG","2026-12-01"),
    ("PixBet","2025-12-01"),
    ("Ezze Seguros",NULL),
    ("Area","2025-12-01");
    
INSERT INTO Situação_Contratual(TIPO_DE_CONTRATO,TEMPO_DE_CONTRATO,JOGADORES_ID)
VALUES
	("Definitivo","2028-12-31",1),      -- Hugo de Souza Nogueira
    ("Definitivo","2026-12-31",2),      -- André Ramalho Silva
    ("Definitivo","2025-12-31",3),      -- Gustavo Henrique Vernes
    ("Definitivo","2025-12-31",4),      -- Matheus Lima Beltrão de Amorim(Bidu)
    ("Definitivo","2027-12-31",5),      -- Diego José Palacios Espinoza
    ("Definitivo", NULL, 6),            -- Fagner Conserva Lemos
    ("Definitivo", "2028-12-31", 7),    -- Félix Eduardo Torres Caicedo
    ("Empréstimo", "2024-12-31", 8),    -- Carlos de Menezes Júnior (Cacá)
    ("Definitivo", "2028-12-31", 9),    -- Rodrigo Garro
    ("Definitivo", "2027-12-31", 10),   -- Alex Paulo Menezes Santana
    ("Definitivo", "2029-06-30", 11),   -- José Andrés Martínez
    ("Definitivo", "2026-02-28", 12),   -- Igor Caique Coronado
    ("Definitivo", "2025-12-31", 13),   -- Pedro Henrique Pereira da Silva
    ("Definitivo", "2026-12-31", 14),   -- Héctor Hernández Marrero
    ("Definitivo", "2026-12-31", 15),   -- Memphis Depay
    ("Definitivo", "2026-12-31", 16),   -- André Martín Carrillo Díaz
    ("Empréstimo", "2025-07-31", 17),   -- Talles Magno Bacelar Martins
    ("Definitivo", "2027-12-31", 18);   -- Yuri Alberto Monteiro da Silva
