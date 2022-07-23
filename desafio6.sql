SELECT MIN(p.valor_plano) AS faturamento_minimo, MAX(p.valor_plano) AS faturamento_maximo, ROUND(AVG(valor_plano),2) AS faturamento_medio, ROUND(SUM(valor_plano),2) AS faturamento_total
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u
ON p.plano_id=u.plano_id;
