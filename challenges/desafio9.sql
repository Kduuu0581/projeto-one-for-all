SELECT
 COUNT(historico.cancoes_id) AS musicas_no_historico
FROM historico INNER JOIN usuario ON usuario.usuario_id = historico.usuario_id
WHERE usuario.nome = 'Barbara Liskov'; 