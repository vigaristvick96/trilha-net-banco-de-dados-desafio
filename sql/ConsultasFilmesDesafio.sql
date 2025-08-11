-- 1
SELECT
    Nome,
    Ano
FROM Filmes

-- 2
SELECT
    Nome,
    Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4
SELECT
    Nome,
    Ano
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT
    Nome,
    Ano
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT
    Nome,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT
    PrimeiroNome,
    UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT
    F.Nome AS NomeFilme,
    G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

-- 11
SELECT
    F.Nome AS NomeFilme,
    G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12
SELECT
    F.Nome AS NomeFilme,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;

