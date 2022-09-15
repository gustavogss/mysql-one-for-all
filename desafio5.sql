SELECT
  c.nome `cancao`,
  COUNT(h.cancao_id) `reproducoes`
FROM
  SpotifyClone.cancao c
  INNER JOIN SpotifyClone.historico h ON c.cancao_id = h.cancao_id
GROUP BY
  h.cancao_id
ORDER BY
  COUNT(h.cancao_id) DESC,
  c.nome
LIMIT
  2;
