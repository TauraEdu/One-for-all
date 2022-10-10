 -- h = historico
 -- u = usuario, user

SELECT c.titulo AS 'nome', COUNT(h.data_reproduction) AS 'reproducoes'
  FROM SpotifyClone.musics AS c
 INNER JOIN SpotifyClone.reproductions AS h
    ON c.data_reproduction = h.data_reproduction
 INNER JOIN SpotifyClone.Users AS u
    ON h.usuario_id = u.usuario_id
 WHERE u.plano_id IN (1, 2)
 GROUP BY c.titulo
 ORDER BY c.titulo ASC;
