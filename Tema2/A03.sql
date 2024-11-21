-- Activitats de consultes de més d’una taula.
-- Emprant la BD ‘ucm’, escriu les consultes:
-- 1. Llista el títol i de la pel·lícula i el nom del seu director. Ordena el 
-- resultat pel títol de la pel·lícula de forma ascendent. Fes que aparegui 
-- solament els 10 primers resultats.
SELECT p.titol AS Títol, d.nom AS Director
FROM pel·lícules p
JOIN directors d ON p.director_id = d.id
ORDER BY p.titol ASC
LIMIT 10;


-- 2. Llista el títol de la pel·lícula, el nom de l’actor i el paper que ha 
-- interpretat. Ordena el resultat pel títol de la pel·lícula de forma 
-- descendent i pel paper que ha interpretat de forma ascendent. Fes que apareguin els resultats 10 al 20.

SELECT p.titol AS Títol, a.nom AS Actor, pa.paper AS Paper
FROM pel·lícules p
JOIN papers pa ON p.id = pa.pel·lícula_id
JOIN actors a ON pa.actor_id = a.id
ORDER BY p.titol DESC, pa.paper ASC
LIMIT 10 OFFSET 10;


-- 3. Llista el títol de la pel·lícula, el nom del soci d’aquells que ja han 
-- acabat de visualitzar la pel·lícula. Ordena el resultat.

SELECT p.titol AS Títol, s.nom AS Soci
FROM visualitzacions v
JOIN pel·lícules p ON v.pel·lícula_id = p.id
JOIN socis s ON v.soci_id = s.id
WHERE v.completada = 1
ORDER BY p.titol ASC;


-- 4. Llista el títol de la pel·lícula, el nom del soci i temps de visualització
--  d’aquells que no han acabat de visualitzar la pel·lícula. Ordena el resultat.

SELECT p.titol AS Títol, s.nom AS Soci, v.temps_visualització AS Temps
FROM visualitzacions v
JOIN pel·lícules p ON v.pel·lícula_id = p.id
JOIN socis s ON v.soci_id = s.id
WHERE v.completada = 0
ORDER BY p.titol ASC;


-- 5. Llista el títol i de la pel·lícula, el nom del seu director i la 
-- nacionalitat del director. Fes que apareguin solament aquelles pel·lícules 
-- que tenen la mateixa nacionalitat que el seu director. Ordena el resultat pel títol de la pel·lícula de forma ascendent.

SELECT p.titol AS Títol, d.nom AS Director, d.nacionalitat AS Nacionalitat
FROM pel·lícules p
JOIN directors d ON p.director_id = d.id
WHERE p.nacionalitat = d.nacionalitat
ORDER BY p.titol ASC;

-- 6. Llista el nom dels actors que tenen la mateixa nacionalitat que ‘Benedict 
-- Cumberbatch’. Exclou a aquest actor del resultat.

SELECT a.nom AS Actor
FROM actors a
WHERE a.nacionalitat = (
    SELECT nacionalitat FROM actors WHERE nom = 'Benedict Cumberbatch'
)
AND a.nom != 'Benedict Cumberbatch';


-- 7. Llista el nom i nacionalitat dels actors (homes) que tenen una 
-- nacionalitat diferent que ‘Benedict Cumberbatch’. Ordena el resultat i canvia
--  el nom de les columnes.


-- 8. Llista el títol i pressupost d’aquelles pel·lícules que tenen un 
-- pressupost menor o igual que ‘Capitán América: Civil War’ i més gran o igual 
-- que ‘Black Panther’. Exclou aquestes dues pel·lícules del resultat.


-- 9. Llista el títol de la pel·lícula, el nom de l’actriu i el paper que ha 
-- interpretat d’aquelles que tenen un paper principal.


-- 10. Llista el nom de l’actor que ha interpretat alguna vegada a ‘Thor’. Fes 
-- que no es repeteixin els resultats.


-- 11. Llista el nom del director i el títol de la pel·lícula que ha dirigit. 
-- Inclou també aquells directors que no han dirigit cap pel·lícula.


-- 12. Llista el nom dels socis que no han visualitzat cap pel·lícula de la 
-- productora ‘Paramount’.