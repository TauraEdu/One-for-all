SELECT artistas.nome AS 'artista',
       albuns.titulo AS 'album'
  FROM SpotifyClone.artists AS artistas
 INNER JOIN SpotifyClone.Albuns AS albuns
    ON artistas.artista_id = albuns.artista_id
 WHERE artistas.nome = 'Elis Regina'
 ORDER BY album ASC;
