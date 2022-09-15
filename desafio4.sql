SELECT
  u.nome `usuario`,
  IF(
    MAX(h.data_reproducao) > '2021-01-01',
    'Usuário ativo',
    'Usuário inativo'
  ) `status_usuario`
FROM
  SpotifyClone.usuario u
  INNER JOIN SpotifyClone.historico h ON u.usuario_id = h.usuario_id
GROUP BY
  u.nome
ORDER BY
  u.nome;
