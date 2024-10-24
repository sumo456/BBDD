DROP DATABASE IF EXISTS empresa;
CREATE DATABASE empresa;
use empresa;

CREATE TABLE `departaments` (
  `codi` smallint UNSIGNED NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `ciutat` varchar(20) DEFAULT NULL,
  primary key (codi)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`codi`, `nom`, `ciutat`) VALUES
(10, 'Comptabilitat', 'Barcelona'),
(20, 'Producció', 'Mollet del Vallès'),
(30, 'Comercial', 'Cardedeu'),
(40, 'Informàtica', 'Grànollers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleats`
--

CREATE TABLE `empleats` (
  `codi` smallint unsigned NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `cognom` varchar(20) DEFAULT NULL,
  `funcio` varchar(20) DEFAULT NULL,
  `cap` smallint unsigned DEFAULT NULL,
  `datacontracte` date DEFAULT NULL,
  `sou` int unsigned DEFAULT NULL,
  `comisio` int unsigned DEFAULT NULL,
  `ndepartament` smallint UNSIGNED DEFAULT NULL,
  primary key(codi),
  foreign key (ndepartament) references departaments(codi)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table empleats add  foreign key (cap) references empleats(codi);


INSERT INTO `empleats` (`codi`, `nom`, `cognom`, `funcio`, `cap`, `datacontracte`, `sou`, `comisio`, `ndepartament`) VALUES
(7839, 'Jordi', 'Soto', 'Presidente', NULL, '2011-11-17', 5000, NULL, 10),
(7566, 'Sílvia', 'Puig', 'Cap de departament', 7839, '2016-10-10', 2975, NULL, 20),
(7698, 'Maria', 'Duset', 'Cap de departament', 7839, '2010-05-01', 2850, NULL, 30),
(7782, 'Xavier', 'Palmarola', 'Venedor', 7698, '2011-06-09', 2450, NULL, 30),
(1465, 'Pere', 'Meseguer', 'Cap de departament', 7839, '2006-01-02', 2000, NULL, 40),
(1587, 'Maria', 'Mellado', 'Informàtic', 1465, '2007-03-01', 1400, NULL, 40),
(1647, 'Jan', 'Armengol', 'Informàtic', 1465, '2007-04-01', 1400, NULL, 40),
(1657, 'Marta', 'Garre', 'Informàtic', 1465, '2007-03-01', 1400, NULL, 40),
(1780, 'Adrià', 'Mimbrero', 'Informàtic', 1465, '2007-04-01', 1400, NULL, 40),
(1957, 'Carles', 'Galán', 'Informàtic', 1465, '2007-04-10', 1400, NULL, 40),
(7369, 'Sònia', 'Gamez', 'Administratiu', 7566, '2017-11-01', 1200, NULL, 20),
(7876, 'Jordi', 'Franquesa', 'Administratiu', 7566, '2015-08-24', 1100, NULL, 20),
(7788, 'Dídac', 'Segarra', 'Operari', 7566, '2015-07-21', 3000, NULL, 20),
(7902, 'Miquel', 'Almiron', 'Operari', 7566, '2013-12-03', 3000, NULL, 20),
(8251, 'Carla', 'Luque', 'Administratiu', 7566, '2015-10-20', 1500, NULL, 20),
(7900, 'Lluis', 'Galvany', 'Administratiu', 7698, '2014-12-03', 950, NULL, 30),
(7499, 'Raúl', 'Antunez', 'Venedor', 7698, '2001-02-20', 1600, 300, 30),
(7521, 'David', 'Garcia', 'Venedor', 7698, '2016-09-01', 1250, 500, 30),
(7654, 'Trinitat', 'Martinez', 'Venedor', 7698, '2010-09-28', 1250, 1400, 30),
(7844, 'Robert', 'Llop', 'Venedor', 7698, '2019-09-08', 1500, NULL, 30),
(7934, 'Maria', 'Saez', 'Administratiu', 7782, '2012-01-23', 1300, NULL, 10),
(7777, 'Pere', 'Valls', 'Comptable', 7839, '2019-05-02', 4500, NULL, 10);