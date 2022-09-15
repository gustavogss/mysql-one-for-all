SELECT
  a.nome `artista`,
  al.titulo `album`,
  COUNT(u.artista_id) `seguidores`
FROM
  SpotifyClone.artista a
  INNER JOIN SpotifyClone.album al ON a.artista_id = al.artista_id
  INNER JOIN SpotifyClone.usuario_artista u ON al.artista_id = u.artista_id
GROUP BY
  a.nome,
  al.titulo
ORDER BY
  seguidores DESC,
  a.nome,
  al.titulo;
