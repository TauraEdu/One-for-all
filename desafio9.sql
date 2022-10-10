SELECT
    COUNT(*) AS 'quantidade_musicas_no_historico'
  FROM SpotifyClone.reproductions AS h
 INNER JOIN SpotifyClone.Users AS u
    ON h.usuario_id = u.usuario_id
 WHERE u.nome = 'Barbara Liskov';
