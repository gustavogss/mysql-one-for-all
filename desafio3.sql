SELECT
  u.nome AS `usuario`,
  COUNT(h.cancao_id) `qt_de_musicas_ouvidas`,
  ROUND(SUM(c.duracao_segundos) / 60, 2) `total_minutos`
FROM
  SpotifyClone.usuario u
  INNER JOIN SpotifyClone.historico h ON u.usuario_id = h.usuario_id
  INNER JOIN SpotifyClone.cancao c ON c.cancao_id = h.cancao_id
GROUP BY
  u.usuario_id
ORDER BY
  u.nome;
