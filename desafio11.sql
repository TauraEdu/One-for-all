SELECT *
  FROM 	(
          SELECT titulo AS 'nome_musica',
                CASE
                    WHEN titulo LIKE '%Bard%' THEN REPLACE(titulo, 'Bard', 'QA')
                    WHEN titulo LIKE '%Amar%' THEN REPLACE(titulo, 'Amar', 'Code Review')
                    WHEN titulo LIKE '%Pais' THEN REPLACE(titulo, 'Pais', 'Pull Requests')
                    WHEN titulo LIKE '%SOUL' THEN REPLACE(titulo, 'SOUL', 'CODE')
                    WHEN titulo LIKE '%SUPERSTAR' THEN REPLACE(titulo, 'SUPERSTAR', 'SUPERDEV')
                    ELSE NULL
                END AS 'novo_nome'
            FROM SpotifyClone.musics
        ) AS novoNome
 WHERE novo_nome IS NOT NULL
 ORDER BY nome_musica DESC;