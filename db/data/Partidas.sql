/*
CA = CASA
F = FORA
*/

SELECT
	CA.SELECAO_CASA,
	CA.GOL_CASA,
	CA.VERSUS,
	CA.GOL_FORA,
	F.NOME AS SELECAO_FORA
FROM(
	SELECT 
		C.NOME AS SELECAO_CASA,
		P.gol_casa, 
		'X' as VERSUS,
		P.GOL_FORA,
		P.ID_SELECAO_FORA
	FROM
		PARTIDA AS P
	INNER JOIN
		SELECAO AS C ON C.ID_SELECAO = P.ID_SELECAO_CASA 
	) AS CA

INNER JOIN
	SELECAO AS F ON F.ID_SELECAO = CA.ID_SELECAO_FORA