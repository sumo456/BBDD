-- Explicació de la clausula having 26/11/2024
use empresa;

-- Llista el nom dels departaments i suma de sous dels empleats 
-- d'aquells departaments que tenen una suma de sous superior a 10000 €
select dep.nom, sum(emp.sou)
from departaments dep inner join empleats emp 
  on dep.codi = emp.ndepartament
group by dep.nom
having sum(emp.sou)>10000;

-- Llista el nom dels departaments i suma de sous dels empleats
-- d'aquells departaments que tenen una suma de sous superior a 10000.
-- Exclou al departament de Producció.
select dep.nom, sum(emp.sou)
from departaments dep inner join empleats emp 
  on dep.codi = emp.ndepartament
where dep.nom <> "Producció"
group by dep.nom
having sum(emp.sou)>10000;

-- Llista el nom dels departaments i número d'empleats d'aquells departaments
-- que tenen entre 5 i 10 empleats.
select dep.nom, count(emp.ndepartament)
from departaments dep inner join empleats emp
  on dep.codi = emp.ndepartament
group by dep.nom
having count(emp.ndepartament) between 5 and 10;

-- Llista el nom dels departaments i número d'empleats d'aquells departaments
-- que tenen entre 5 i 10 empleats. Exclou al empleat amb nom "Puig"
select dep.nom, count(emp.ndepartament)
from departaments dep inner join empleats emp
  on dep.codi = emp.ndepartament
where emp.nom <> "Puig"
group by dep.nom
having count(emp.ndepartament) between 5 and 10;

-- Llista el nom dels departaments i número d'empleats d'aquells departaments
-- que tenen entre 5 i 10 empleats. Inclou solament aquells empleats que tenen
-- un sou entre 1200 i 2000
select dep.nom, count(emp.ndepartament)
from departaments dep inner join empleats emp
  on dep.codi = emp.ndepartament
where emp.sou between 1200 and 2000
group by dep.nom
having count(emp.ndepartament) between 5 and 10;


-- Llista l'any de contracte i el nombre d'empleats contractat cada any conjuntament amb la 
-- suma dels seus sous. Solament d'aquells anys que es van contractat més de un empleat
select year(datacontracte), count(*), sum(sou)
from empleats
group by year(datacontracte)
having count(*)>1;




