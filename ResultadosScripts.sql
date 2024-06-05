
  Consultas SQL

1.  Buscar o nome e ano dos filmes :

   SELECT Nome, Ano
   FROM Filmes;


2.  Buscar o nome e ano dos filmes, ordenados pelo nome :

   SELECT Nome, Ano
   FROM Filmes
   ORDER BY Nome;


3.  Buscar o nome e ano dos filmes, ordenados pelo ano de forma decrescente :

   SELECT Nome, Ano
   FROM Filmes
   ORDER BY Ano DESC;


4.  Buscar os filmes lançados no ano 2000 :

   SELECT Nome, Ano
   FROM Filmes
   WHERE Ano = 2000;


5.  Buscar os filmes lançados APÓS o ano 2000 :

   SELECT Nome, Ano
   FROM Filmes
   WHERE Ano > 2000;


6.  Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente :

   SELECT Nome, Duracao
   FROM Filmes
   WHERE Duracao > 100 AND Duracao < 150
   ORDER BY Duracao ASC;


7.  Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente :

   SELECT Ano, COUNT(*) AS Quantidade
   FROM Filmes
   GROUP BY Ano
   ORDER BY COUNT(*) DESC;


8.  Buscar os Atores do gênero masculino, retornando o PrimeiroNome e UltimoNome :

   SELECT PrimeiroNome, UltimoNome
   FROM Atores
   WHERE Genero = 'M';


9.  Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome :

   SELECT PrimeiroNome, UltimoNome
   FROM Atores
   WHERE Genero = 'F'
   ORDER BY PrimeiroNome;


10.  Buscar o nome do filme e o gênero :

    SELECT f.Nome AS Filme, g.Nome AS Genero
    FROM Filmes f
    JOIN FilmesGenero fg ON f.Id = fg.IdFilme
    JOIN Generos g ON fg.IdGenero = g.Id;


11.  Buscar o nome do filme e o gênero do tipo "Mistério" :

    SELECT f.Nome AS Filme, g.Nome AS Genero
    FROM Filmes f
    JOIN FilmesGenero fg ON f.Id = fg.IdFilme
    JOIN Generos g ON fg.IdGenero = g.Id
    WHERE g.Nome = 'Mistério';


12.  Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel :

    SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
    FROM Filmes f
    JOIN ElencoFilme ef ON f.Id = ef.IdFilme
    JOIN Atores a ON ef.IdAtor = a.Id;


