SELECT
  ROUND(MIN(p.valor_plano), 2) `faturamento_minimo`,
  ROUND(MAX(p.valor_plano), 2) `faturamento_maximo`,
  ROUND(AVG(p.valor_plano), 2) `faturamento_medio`,
  ROUND(SUM(p.valor_plano), 2) `faturamento_total`
FROM
  SpotifyClone.plano p
  INNER JOIN SpotifyClone.usuario u ON u.plano_id = p.plano_id;
