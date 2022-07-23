SELECT m.titulo AS cancao, COUNT(d.musica_id) AS reproducoes
FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.data_reproducao AS d
ON d.musica_id=m.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;