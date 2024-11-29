-- Activitats de consultes agrupades.
-- Emprant la BD ‘ucm’, escriu les consultes:
use ucm;
-- 1. Les funcions de grup treballen amb molts registres per produir un únic 
-- resultat (cert / fals).
-- cert

-- 2. Les funcions de grup inclouen els valors nuls en els seus càlculs. (cert /
-- fals).
-- fals

-- 3. La clàusula WHERE elimina registres abans de la inclusió en un càlcul de 
-- grup. (cert / fals).
-- cert

-- 4. Fes una consulta que calculi:
--     • El nombre de pel·lícules.
--     • La suma de les recaudacions de totes les pel·lícules.
--     • La mitjana aritmètica de les recaudacions.
--     • La recaudació mínima.
--     • La recaudació màxima.
SELECT 
    COUNT(*) AS nombre_pelicules,                  -- Nombre total de pel·lícules
    SUM(recaudacio) AS suma_recaudacions,          -- Suma de les recaptacions
    AVG(recaudacio) AS mitjana_recaudacions,       -- Mitjana aritmètica de les recaptacions
    MIN(recaudacio) AS recaudacio_minima,          -- Recaudació mínima
    MAX(recaudacio) AS recaudacio_maxima           -- Recaudació màxima
FROM 
    pelicules;



-- 5. Llista agrupant pel nom dels directors i quantes pel·lícules ha dirigit. 
-- Ordena el resultat de forma descendent pel nombre de pel·lícules dirigides.
select * from directors;
select * from pelicules;
select * from pelicules p inner join directors d on p.id_director = d.codi;
select d.nom, count(*) as "Num. pelicules dirigides"
from directors d
inner join pelicules p on d.codi = p.id_director
group by d.nom
order by count(p.id_director) desc;

select d.nom, p.titol as "Num. pelicules dirigides"
from directors d
inner join pelicules p on d.codi = p.id_director
order by p.id_director;


-- 6. Llista agrupant pel títol de les pel·lícules i quantes visualitzacions ha 
-- tingut. Ordena el resultat de forma descendent pel nombre de visualitzacions.


-- 7. Llista la diferència entre la recaudació màxima i la mínima de les 
-- pel·lícules de ‘Marvel Enterprises’.


-- 8. Llista de cada productora quantes pel·lícules hi ha a la BD. Etiqueta les 
-- columnes i ordena el resultat de forma descendent pel nombre de pel·lícules.


-- 9. Crea una consulta que mostri el nom de l’actor i quantes pel·lícules ha 
-- fet com actor principal. Etiqueta les columnes correctament i ordena el 
-- resultat pel nombre de pel·lícules.


-- 10. Llista el nom de l’actor i suma de recaudacions de totes les pel·lícules 
-- en les que ha participat. Ordena el resultat per la suma de recaudacions de 
-- forma descendent.


-- 11. Llista el nom de l’actor i la suma de guanys (recaudació – pressupost) de
--  totes les pel·lícules en les que ha participat. Ordena el resultat per la 
-- suma de recaudacions de forma descendent.


-- 12. Llista de cada soci el seu nom i quantes pel·lícules ha visualitzat 
-- completament (temps de visualització null).


-- 13. Escriu una consulta que mostri el nom del director i la recaudació màxima
-- d’alguna de les seves pel·lícules que tenen una recaudació superior a 
-- 1000000000.


-- 14. Crea una consulta que agrupi per l’any de les pel·lícules i mostri la 
-- suma de recaudació, la recaudació mínima, la màxima i la mitjana aritmètica 
-- de les recaudacions d’aquell any. Ordena el resultat per l’any.


-- 15. Crea una consulta que visualitzi el número total de pel·lícules entre els
--  anys 2015 i 2020 (ambdos inclosos) i d’aquest total el número dels que es 
-- van estrenar els anys 2015, 2016, 2017, 2018, 2019, 2020. Utilitza les 
-- funcions sum, if i year. Etiqueta les columnes.
-- Nota: el resultat a de ser semblant a:
-- Total Pel·lícules
-- 2015
-- 2016
-- 2017
-- 2018
-- 2019
-- 2020

