SELECT
  c.nome `nome_musica`,
  CASE
    WHEN c.nome LIKE '%Amar%' THEN REPLACE(c.nome, 'Amar', 'Code Review')
    WHEN c.nome LIKE '%SUPERSTAR%' THEN REPLACE(c.nome, 'SUPERSTAR', 'SUPERDEV')
    WHEN c.nome LIKE '%Bard%' THEN REPLACE(c.nome, 'Bard', 'QA')
    WHEN c.nome LIKE '%SOUL%' THEN REPLACE(c.nome, 'SOUL', 'CODE')
    WHEN c.nome LIKE '%Pais%' THEN REPLACE(c.nome, 'Pais', 'Pull Requests')
    ELSE c.nome
  END `novo_nome`
FROM
  SpotifyClone.cancao c
WHERE
  c.nome LIKE '%Amar%'
  OR c.nome LIKE '%SUPERSTAR%'
  OR c.nome LIKE '%Bard%'
  OR c.nome LIKE '%SOUL%'
  OR c.nome LIKE '%Pais%'
ORDER BY
  c.nome DESC;
