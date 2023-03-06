CREATE TABLE cancoes_favoritas(
  favoritas_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  PRIMARY KEY (favoritas_id, usuario_id, cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
);

INSERT INTO cancoes_favoritas (cancoes_id, usuario_id)
VALUES
  ('10', '1'),
  ('4', '1'),
  ('8', '1'),
  ('2', '2'),
  ('1', '3'),
  ('10', '3'),
  ('5', '4'),
  ('2', '4'),
  ('8', '5'),
  ('9', '5'),
  ('2', '8'),
  ('5', '9'),
  ('10', '10');
