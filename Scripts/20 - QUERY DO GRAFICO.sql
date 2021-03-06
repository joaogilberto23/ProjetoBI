SELECT REGIAO, ANO,
SUM(LUCRO_TOTAL) AS LUCRO,
SUM(QUANTIDADE) AS QTD,
SUM(TOTAL_ITEM) AS TOTAL,
SUM(CUSTO_TOTAL) AS CUSTO
FROM DIM_CLIENTE
INNER JOIN FATO F
ON IDSK = F.IDCLIENTE
INNER JOIN DIM_TEMPO T
ON T.IDSK = IDTEMPO
GROUP BY REGIAO, ANO
ORDER BY 1, 2