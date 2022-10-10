SELECT c.titulo AS 'cancao',
 COUNT(h.data_reproduction) AS 'reproducoes'
  FROM SpotifyClone.musics AS c
 INNER JOIN SpotifyClone.reproductions AS h
    ON c.data_reproduction = h.data_reproduction
 GROUP BY 
 cancao
 ORDER BY 
 reproducoes DESC,
  cancao ASC LIMIT 2;
  