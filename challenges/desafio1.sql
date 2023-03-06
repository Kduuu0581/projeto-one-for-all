DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE plano(
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    plano_tipo VARCHAR(100) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL,
);
INSERT INTO plano (plano_tipo, valor_plano)
VALUES
    ('gratuito', 0.00),
    ('universitário', 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);
CREATE TABLE usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
     FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
);
INSERT INTO SpotifyClone.usuario (nome, idade, plano_id)
VALUES
    ('Barbara Liskov', 82, 1),
  ('Robert Cecil Martin', 58, 1),
  ('Ada Lovelace', 37, 4),
  ('Martin Fowler', 46, 4),
  ('Sandi Metz', 58, 4),
  ('Paulo Freire', 19, 2),
  ('Bell Hooks', 26, 2),
  ('Christopher Alexander', 85, 3),
  ('Judith Butler', 45, 3),
  ('Jorge Amado', 58, 3);
CREATE TABLE artista(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(100) NOT NULL,
);
INSERT INTO artista (artista_nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');
CREATE TABLE album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_nome VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
);
INSERT INTO album (album_nome, artista_id)
VALUES
  ('Renaissance', 1),
  ('Jazz', 2),
  ('Hot Space', 2),
  ('Falso Brilhante', 3),
  ('Vento de Maio', 3),
  ('QVVJFA?', 4),
  ('Somewhere Far Beyond', 5),
  ('I Put A Spell On You', 6);
CREATE TABLE cancoes(
    cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
    cancoes_nome VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
);
INSERT INTO cancoes (cancoes_nome, album_id)
VALUES
  ('BREAK MY SOUL', 1),
  ('VIRGO\'S GROOVE', 1),
  ('ALIEN SUPERSTAR', 1),
  ('Don\'t Stop Me Now', 2),
  ('Under Pressure', 2),
  ('Como Nossos Pais', 3),
  ('O Medo de Amar é o Medo de Ser Livre', 3),
  ('Samba em Paris', 4),
  ('The Bard\'s Song', 5),
  ('Feeling Good', 6);
CREATE TABLE seguindo_artistas(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);
INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 1),
  (6, 6),
  (7, 6),
  (9, 3),
  (10, 2);
CREATE TABLE historico(
    usuario_id INT NOT NULL,
    cancoes_id INT NOT NULL,
    PRIMARY KEY (usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
);
INSERT INTO historico (usuario_id, cancoes_id)
VALUES
  (1, 8),
  (1, 2),
  (1, 10),
  (2, 10),
  (2, 7),
  (3, 10),
  (3, 2),
  (4, 8),
  (5, 8),
  (5, 5),
  (6, 7),
  (6, 1),
  (7, 4),
  (8, 4),
  (9, 9),
  (10, 3);