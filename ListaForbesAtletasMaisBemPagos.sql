-- *Os valores dos ganhos estão em dólares


-- 1 ) TOP 10 ATLETAS MAIS BEM PAGOS POR ANO

SELECT top 10 NOME, PAÍS, ESPORTE, ANO, GANHOS  FROM base
GROUP BY NOME, PAÍS, ESPORTE, ANO,GANHOS
ORDER BY GANHOS DESC,  ANO DESC


-- 2 ) GANHOS POR PAÍS : Nessa análise os EUA se destacam representando 60% de representação no TOP 10 

SELECT TOP 10 NOME,PAÍS, SUM(GANHOS) AS GANHO_TOTAL FROM base
GROUP BY NOME, PAÍS
ORDER BY GANHO_TOTAL DESC

-- 3 ) MÉDIA DE GANHOS POR PAÍS : Aqui podemos notar algumas diferenças quanto a tabela de Ganhos Por País, aqui Portgal se destaca por conta de Cristiano Ronaldo e temos a adição das Filipinas, graças ao
--incrível boxeador Manny Pacquiao

SELECT TOP 10 NOME, PAÍS, GANHOS, AVG(GANHOS) AS MÉDIA_DE_GANHOS FROM base
GROUP BY NOME,PAÍS, GANHOS
ORDER BY MÉDIA_DE_GANHOS DESC

-- 4 ) MÉDIA DE GANHOS POR ESPORTE : O esporte que possui a maior média de ganhos é o boxe, apesar de ser o segunda na lista de mais atletas presentes na lista, interessante

SELECT TOP 10 ESPORTE, GANHOS, SUM(GANHOS) AS TOTAL_DE_GANHOS FROM base
GROUP BY ESPORTE, GANHOS
ORDER BY TOTAL_DE_GANHOS DESC

-- 5 ) Quantidade de atletas na lista por esporte : O esporte que possui mais atletas na lista é o basquete

SELECT TOP 10 ESPORTE, COUNT(ESPORTE) AS QUANTIDADE_DE_ATLETAS FROM base
GROUP BY ESPORTE
ORDER BY QUANTIDADE_DE_ATLETAS DESC

-- 6 ) Quantidade de atletas por cada país : A diferença de quantidade entre os EUA e os outros países é notória, o Brasil conta 

SELECT PAÍS, count(PAÍS) AS CONTAGEM_DE_PAÍS FROM base
GROUP BY PAÍS
ORDER BY CONTAGEM_DE_PAÍS DESC

-- 7 ) Atletas brasileiros mais bem pagos: Neymar lidera a lista logo em seguida vem o Ronaldinho

select nome ,país, ganhos, ANO from base 
where país = 'Brasil'
order by GANHOS desc, ANO desc




