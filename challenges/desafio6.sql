SELECT
 MIN(p.valor_plano) AS faturamento_minimo,
 MAX(p.valor_plano) AS faturamento_maximo,
 ROUND(AVG(p.valor_plano), 2) AS faturamento_medio,
 ROUND(SUM(p.valor_plano), 2) AS faturamento_total
FROM
 plano p INNER JOIN usuario u ON u.plano_id = p.plano_id; 