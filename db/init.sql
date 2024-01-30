CREATE DATABASE quadrinhos;
USE quadrinhos;

CREATE TABLE hq (
  id INT PRIMARY KEY AUTO_INCREMENT,
  Personagem varchar(150),
  Autor varchar(50),
  Titulo varchar(50),
  Data_criacao varchar(4)
  );

INSERT INTO hq 
  (Personagem, Autor, Titulo, Data_criacao)
VALUES
  ('John Carter','Edgar Rice Burroughs','A Princess of Mars','1912'),
  ('Tarzan','Edgar Rice Burroughs','Tarzan of the Apes','1912'),
  ('Superman','Jerry Siegel & Joe Shuster','Action Comics #1','1938'),
  ('Batman','	Bob Kane & Bill Finger','Detective Comics #27','1939');