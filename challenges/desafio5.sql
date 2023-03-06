SELECT
 cancoes.cancoes_nome AS cancao,
 COUNT(historico.cancoes_id) AS reproducoes
FROM
 cancoes INNER JOIN historico ON historico.cancoes_id = cancoes.cancoes_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;