SELECT
  c.nome `nome`,
  COUNT(h.cancao_id) `reproducoes`
FROM
  SpotifyClone.plano p
  INNER JOIN SpotifyClone.usuario u ON p.plano_id = u.plano_id
  INNER JOIN SpotifyClone.historico h ON u.usuario_id = h.usuario_id
  INNER JOIN SpotifyClone.cancao c ON h.cancao_id = c.cancao_id
WHERE
  p.plano_id IN (1, 4)
GROUP BY
  c.nome
ORDER BY
  c.nome
