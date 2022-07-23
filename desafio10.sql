SELECT m.titulo AS nome, COUNT(dr.musica_id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.data_reproducao AS dr
ON m.musica_id=dr.musica_id
INNER JOIN SpotifyClone.usuario AS u
ON dr.usuario_id=u.usuario_id
WHERE u.plano_id IN(1,4)
GROUP BY nome;