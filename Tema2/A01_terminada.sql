
-- Activitats de consultes simples.
-- Emprant la BD ‘ucm’, escriu les consultes que:

-- 1. Accedeix a la BD.
USE ucm;

-- 2. Llista les taules contingudes dins de la BD.
SHOW TABLES;

-- 3. Descriu l’estructura de la taula ‘pelicules’.
DESCRIBE pelicules;

-- 4. Mostra totes les pel·lícules.
SELECT * FROM pelicules;

-- 5. Mostra el títol i any de producció de totes les pel·lícules, renombra les 
-- columnes a un nom adient.
SELECT titol AS 'Títol', any_produccio AS 'Any de Producció'
FROM pelicules;

-- 6. Mostra el títol, pressupost, recaudació i guany (recaudació – pressupost) 
-- de totes les pel·lícules, renombra les columnes a un nom adient.
SELECT titol AS 'Títol', pressupost AS 'Pressupost', recaudacio AS 'Recaudació', 
       (recaudacio - pressupost) AS 'Guany'
FROM pelicules;

-- 7. Llista el títol de les pel·lícules que es van produir després de l'any 2000.
SELECT titol AS 'Títol'
FROM pelicules
WHERE any_produccio > 2000;

-- 8. Mostra el títol de les pel·lícules amb un pressupost superior a 1.000.000.
SELECT titol AS 'Títol'
FROM pelicules
WHERE pressupost > 1000000;

-- 9. Llista el títol i any de producció de les pel·lícules amb recaudació 
-- superior a 2.000.000 i renombra les columnes a un nom adient.
SELECT titol AS 'Títol', any_produccio AS 'Any de Producció'
FROM pelicules
WHERE recaudacio > 2000000;

-- 10. Mostra el títol i guany de les pel·lícules que han tingut guanys 
-- positius (recaudació > pressupost).
SELECT titol AS 'Títol', (recaudacio - pressupost) AS 'Guany'
FROM pelicules
WHERE recaudacio > pressupost;

-- Afegiu més consultes segons necessiteu per al vostre projecte.
