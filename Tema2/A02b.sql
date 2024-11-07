-- Activitats de reforç. Selects amb restriccions
-- Emprant la BD municipis:
-- 1. Mostra totes les taules.
use municipis;
show tables;

-- 2. Descriu l’estructura de totes les taules.
describe ComunitatsAutonomes;
describe Poblacions;
describe Provincies;

-- 3. Llista el nom de la població, codi postal i número d’habitants de les 100 
-- primeres poblacions. Ordena el resultat pel nom de la població. Canvia el nom
--  de la població a un nom inteligible.

select nompoblacio as "Poblacion", codipostal, numhabitants
from Poblacions
order by nompoblacio ASC
limit 100;
-- 4. Llista el nom de la població i número d’habitants de les poblacions de la 
-- població 10 a la 19. Ordena el resultat pel número d’habitants de forma 
-- descendent.
select nompoblacio, numhabitants
from Poblacions
order by numhabitants DESC
limit 9, 10;

-- 5. Llista totes les dades de la població «La Seu d'Urgell».
select *
from Poblacions
where "La Seu d'Urgell" = nompoblacio ;

-- 6. Llista totes les dades de les poblacions «Cubells», «Balaguer», «Cambrils»
--  i «Puçol».
select *
from Poblacions
where nompoblacio IN ("La Seu d'Urgell", "Cubells", "Balaguer", "Cambrils", "Puçol" );

-- 7. Llista el nom de la població i número d’habitants d’aquelles que tenen més
--  de 100000 habitants. Ordena el resultat de forma descendent pel número 
-- d’habitants i en cas de tenir el mateix número d’habitants de forma ascendent
--  pel nom de la població.
select nompoblacio, numhabitants
from Poblacions
where numhabitants>= 100000
order by numhabitants DESC, nompoblacio ASC;

-- 8. Llista el nom de la població número d’habitants d’aquelles que tenen entre
--  100000 i 200000 habitants (sense utilitzar between). Ordena el resultat de 
-- forma ascendent pel nom de la població. 



-- 9. Llista el nom de la població número d’habitants d’aquelles que tenen entre
--  100000 i 200000 habitants (utilitza between). Ordena el resultat de forma 
-- ascendent pel nom de la població. 


-- 10. Llista de forma concatenada «nom de població té numero d’habitants» de 
-- les poblacions de la provincia 33.


-- 11. Llista el nom de població i codi postal d’aquelles poblacions que tenen 
-- un codi postal que comença per ‘08’ (utilitza like)


-- 12. Llista el nom de població i codi postal d’aquelles poblacions que tenen 
-- un codi postal que comença per ‘08’ o ‘01’ sense utilitzar like.


-- 13. Llista el nom de la poblacio i codi postal de les poblacions que tenen 
-- els codis postals ‘08100’, ‘08120’ i ‘08150’ (utilitza in)


-- 14. Llista el nom de la poblacio i codi postal de les poblacions que tenen 
-- els codis postals ‘08100’, ‘08120’ i ‘08150’ (sense utilitzar in)


-- 15. Llista el nom de les poblacions i codi postal de les poblacions que tenen
--  un codi postal entre 08000 i 08100 ambdos inclosos.


-- 16. Llista el nom de les poblacions i número d’habitants d’aquelles 
-- poblacions que tenen més de 100000 habitants i el seu nom comença per ‘Ba’.


-- 17. Llista el nom de les poblacions, número d’habitants, superfície i 
-- densitat de població (número d’habitants / superfície) d’aquelles poblacions 
-- que tenen una densitat de població entre 10.0 i 50.0. Canvia el nom de les 
-- columnes a un nom adient i ordena el resultat per la densitat de població.


-- 18. Llista el nom de les poblacions, número d’habitants i superfície de les 
-- poblacions amb una superfície més gran de 400 Km2 i les que tenen una 
-- superfície menor a 4km2.


-- 19. Llista el nom de les poblacions que pertanyen a la provincia 33 o 22 i 
-- que tenen una superfície entre 70.0 i 90.0 Km2.


-- 20. Llista totes les dades de les poblacions que contenen el text ‘Bisbal’ en
--  el seu nom.


-- 21. Llista totes les dades de les poblacions que el seu nom acaba pel text 
-- ‘Urgell’.


-- 22. Llista totes les dades de les poblacions que estan ubicades entre les 
-- latituts 41.00 i 41.999 i les longituts 2.00 i 2.99.


-- 23. Llista totes les dades de les poblacions que el seu nom comença per 
-- ‘Mont’ , el seu número d’habitants sigui superior a 15000 i la seva latitut 
-- estigui entre 41.00 i 41.99.

