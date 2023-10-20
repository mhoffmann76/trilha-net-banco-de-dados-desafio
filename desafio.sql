--1
SELECT Nome, Ano from Filmes 

--2

SELECT Nome, Ano from Filmes order by Ano 

--3

SELECT Nome, Ano from Filmes WHERE Nome = 'De Volta para o Futuro'

--4

SELECT Nome, Ano, Duracao from Filmes WHERE Ano = '1997'

--5

SELECT Nome, Ano, Duracao from Filmes WHERE Ano > '2000'

--6

SELECT Nome, Ano, Duracao from Filmes WHERE  Duracao >100 AND Duracao <150 ORDER BY Duracao 

--7
SELECT Ano, COUNT(*) as Quantidade from Filmes 
group by Ano 
order by MAX(Duracao) DESC 

--8

SELECT Id, PrimeiroNome, UltimoNome, Genero  from Atores WHERE Genero = 'M'

--9

SELECT Id, PrimeiroNome, UltimoNome, Genero from Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero from Filmes 
INNER join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme  
INNER join Generos on FilmesGenero.IdGenero = Generos.Id

--11
SELECT Filmes.Nome, Generos.Genero from Filmes 
INNER join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme  
INNER join Generos on FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
from Filmes 
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores on ElencoFilme.IdAtor = Atores.Id 

