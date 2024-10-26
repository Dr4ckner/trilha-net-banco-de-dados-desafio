--1
select
	Nome, Ano
from Filmes

--2
select
	*
from Filmes
order by Ano asc

--3
select
	*
from Filmes
where Nome = 'De volta para o futuro'

--4
select
	*
from Filmes
where Ano = '1997'

--5
select
	*
from Filmes
where Ano > '2000'

--6
select
	*
from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7
SELECT
	Ano,
	Count(*) Quantidade
from Filmes
Group by Ano
order by Quantidade desc

--8
select * from Atores where Genero = 'M'

--9
select * from Atores where Genero = 'F' order by PrimeiroNome asc

--10
Select 
	Filmes.Nome, Generos.Genero
From Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id

--11
Select 
	Filmes.Nome, Generos.Genero
From Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério'

--12
Select 
	Filmes.Nome as NomeFilme,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
From Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
Inner join Atores on ElencoFilme.IdAtor = Atores.id