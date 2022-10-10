SELECT 
    COUNT(cancoes.titulo) AS 'cancoes', 
       (SELECT COUNT(artistas.nome)
          FROM SpotifyClone.artists AS artistas) AS 'artistas',
       (SELECT COUNT(albuns.titulo)
          FROM SpotifyClone.Albuns AS albuns) AS 'albuns'
  FROM SpotifyClone.musics AS cancoes;