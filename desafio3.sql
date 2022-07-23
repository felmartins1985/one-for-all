SELECT u.usuario AS usuario, COUNT(d.data_reproducao) AS qtde_musicas_ouvidas, ROUND(SUM(m.duracao_segundos/60),2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.data_reproducao AS d
ON u.usuario_id=d.usuario_id
INNER JOIN SpotifyClone.musica AS m
ON m.musica_id=d.musica_id
GROUP BY u.usuario
ORDER BY u.usuario;