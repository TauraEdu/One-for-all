SELECT artistas.nome AS 'artista',
       albuns.titulo AS 'album',
       COUNT(seguidores.artista_id) AS 'seguidores'
  FROM SpotifyClone.artists AS artistas
 INNER JOIN SpotifyClone.Albuns AS albuns
    ON artistas.artista_id = albuns.artista_id
 INNER JOIN SpotifyClone.followings AS seguidores
    ON artistas.artista_id = seguidores.artista_id
 GROUP BY 
 artista,
  album
 ORDER BY 
    seguidores DESC,
    artista ASC,
    album ASC;
