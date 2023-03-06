SELECT
 u.nome as pessoa_usuaria,
  IF(YEAR(MAX(hist.data_reproducao)) >= '2021','Ativa', 'Inativa') AS status_pessoa_usuaria
FROM usuario u
JOIN historico hist
ON hist.usuario_id = u.usuario_id

GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;