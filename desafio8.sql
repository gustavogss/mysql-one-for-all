SELECT
  a.nome `artista`,
  al.titulo `album`
FROM
  SpotifyClone.artista a
  INNER JOIN SpotifyClone.album al ON a.artista_id = al.artista_id
WHERE
  a.nome = 'Elis Regina';
