SELECT COUNT(dr.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.data_reproducao AS dr
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id=dr.usuario_id
WHERE u.usuario='Bill';