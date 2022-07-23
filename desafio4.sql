SELECT u.usuario AS usuario, IF(YEAR(MAX(d.data_reproducao))=2021,'Usuário ativo','Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.data_reproducao AS d
ON  u.usuario_id=d.usuario_id
GROUP BY usuario
ORDER BY usuario;