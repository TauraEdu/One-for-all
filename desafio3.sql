SELECT u.nome AS 'usuario', 
       COUNT(h.data_reproduction) AS 'qt_de_musicas_ouvidas',
       ROUND(SUM(c.duracao_seg)/60, 2) AS 'total_minutos'
  FROM SpotifyClone.Users AS u
 INNER JOIN SpotifyClone.reproductions AS h
    ON u.usuario_id = h.usuario_id
 INNER JOIN SpotifyClone.musics AS c
    ON h.data_reproduction = c.data_reproduction
 GROUP BY 
 usuario
 ORDER BY 
 usuario ASC;
 