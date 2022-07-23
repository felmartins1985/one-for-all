SELECT a.artista AS artista, al.album AS album, COUNT(*) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id=al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s
ON a.artista_id=s.artista_id
GROUP BY artista,album -- porque os dois ao mesmo tempo?
ORDER BY seguidores DESC, artista, album;