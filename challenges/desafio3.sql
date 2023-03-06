SELECT
 u.nome as pessoa_usuaria,
 COUNT(hist.cancoes_id) as musicas_ouvidas,
 ROUND(SUM(c.cancoes_duracao)/60,2) as total_minutos
 FROM usuario u
 JOIN historico hist
 ON u.usuario_id = hist.usuario_id
 JOIN cancoes c
 ON hist.cancoes_id = c.cancoes_id
 GROUP BY u.nome
 ORDER BY pessoa_usuaria;