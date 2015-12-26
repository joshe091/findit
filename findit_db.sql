-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-12-2015 a las 06:22:31
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `findit_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` bigint(20) NOT NULL,
  `empresa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `disponible` tinyint(4) NOT NULL,
  `hora_apertura` time NOT NULL,
  `hora_cierre` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `direccion`, `tipo_id`, `admin_id`, `latitud`, `longitud`, `disponible`, `hora_apertura`, `hora_cierre`) VALUES
(10, 'FARMACIA "JERUSALEN"', 'GUARANDA Y GRAN COLOMBIA', 2, 1, -3.9875759, -79.2044365, 1, '00:00:00', '00:00:00'),
(11, 'FARMACIA "MANANTIAL"', 'AVDA MANUEL A AGUIRRE Y VENEZUELA', 2, 1, -4.0037704, -79.2045084999999, 1, '00:00:00', '00:00:00'),
(12, 'FARMACIA "SAN GREGORIO"', 'CALLE NOGOYA/LAS PITAS', 2, 1, -3.9739198425650866, -79.21378880739212, 1, '00:00:00', '00:00:00'),
(13, 'FARMACIA CRUZ AZUL "LA SALUD"', '18 DE NOVIEMBRE Y COLÓN', 2, 1, -3.99536042967301, -79.2041942104697, 1, '00:00:00', '00:00:00'),
(14, 'FYBECA CENTRO LOJA', 'AZUAY ENTRE SUCRE Y 18 DE NOVIEMBRE', 2, 1, -4.000463, -79.2030839999999, 1, '00:00:00', '00:00:00'),
(15, 'FARMACIA"DANIEL ALVAREZ"', 'AV MANUEL BENJAMIN CARRION -RICARDO BUSTAMANTE', 2, 1, -4.01551950217752, -79.2081608483704, 1, '00:00:00', '00:00:00'),
(16, 'FARMACIA "REINA DE LA NUBE"', 'PABLO PICASO Y GRECO', 2, 1, -3.93984400374104, -79.2251640418578, 1, '00:00:00', '00:00:00'),
(17, 'FARMACIA PICHINCHA PRINCIPAL', 'ANCON Y MACHALA', 2, 1, -3.98801964013862, -79.2040215153315, 1, '00:00:00', '00:00:00'),
(18, 'FARMACIA "ESPAÑOLA"', 'AV. UNIVERSITARIA Y ROCAFUERTE', 2, 1, -3.99837860291802, -79.2047866294296, 1, '00:00:00', '00:00:00'),
(19, 'FARMACIA "SAI FYDDE"', 'AV. PIO JARAMILLO Y MAX. A. RODRIGUEZ', 2, 1, -4.00264362664589, -79.207611624206, 1, '00:00:00', '00:00:00'),
(20, 'FARMACIA "SANTA FE"(SUCURSAL)', 'AV. 8 DE DICIEMBRE Y JARAMIJO', 2, 1, -3.97862849809019, -79.2043997207792, 1, '00:00:00', '00:00:00'),
(21, 'SU FARMACIA LOS ANDES', 'JOSE ANTONIO EGUIGUREN Y JUAN JOSE PEÑA', 2, 1, -3.99610828480741, -79.1991989034613, 1, '00:00:00', '00:00:00'),
(22, 'FARMACIA "CENTRAL PRINCIPAL"', 'AV. UNIVERSITARIA Y JOSE ANTONIO EGUIGUREN', 2, 1, -3.9965283677144, -79.2050514836955, 1, '00:00:00', '00:00:00'),
(23, 'FARMACIA "LA DOLOROSA" CRUZ AZUL', 'BOLIVAR-MERCADILLO', 2, 1, -4.00134592731828, -79.2017657775704, 1, '00:00:00', '00:00:00'),
(24, 'FARMACIA " SAN CARLOS 1"', '18 DE NOVIEMBRE Y AZUAY', 2, 1, -4, -79.2038129875982, 1, '00:00:00', '00:00:00'),
(25, 'FARMACIA CRUZ AZUL "SU FARMACIA"', 'JUAN JOSE SAMANIEGO LAURO GUERRERO', 2, 1, -3.99459651969945, -79.2064408678834, 1, '00:00:00', '00:00:00'),
(26, 'FARMACIA "SAN GERARDO"', 'DOLORES CACUANGO ENTRE TRANSITO AMAGUÑA Y TIRADENTES', 2, 1, -4.00238274913292, -79.2337578256774, 1, '00:00:00', '00:00:00'),
(27, 'FARMACIA "IBEROAMERICA"', 'ATAHUALPA Y CARAN SHIRI', 2, 1, -4.00248308665822, -79.2105861940035, 1, '00:00:00', '00:00:00'),
(28, 'FARMACIA "ANA MARÍA"', 'GUAYAQUIL ENTRE MACHALA Y SANTO DOMINGO', 2, 1, -3.98109084864604, -79.2038564757604, 1, '00:00:00', '00:00:00'),
(29, 'FARMACIA "PICHINCHA SUCURSAL"', 'JOSE ANTONIO EGUIGUREN ENTRE RAMON PINTO Y LAURO GUERRERO', 2, 1, -3.99653505693091, -79.2058011889457, 1, '00:00:00', '00:00:00'),
(30, 'FARMACIA "MEDICOS"', '18 DE NOVIEMBRE Y JOSE ANTONIO EGUIGUREN', 2, 1, -3.9964066239641363, -79.2040202021598, 1, '00:00:00', '00:00:00'),
(31, 'SU FARMACIA LA PRADERA', 'CIPRES Y ROMERILLOS', 2, 1, -4.013953591431407, -79.1988277807831, 1, '00:00:00', '00:00:00'),
(32, 'FARMACIA "ECUATORIANA"', 'SUCRE Y 10 DE AGOSTO', 2, 1, -3.99712103208664, -79.2030901461839, 1, '00:00:00', '00:00:00'),
(33, 'FARMACIA SANA SANA" JOSE FELIX"', 'AVDA. UNIVERSITARIA Y JOSE FELIX', 2, 1, -3.992364988768514, -79.2052949219942, 1, '00:00:00', '00:00:00'),
(34, 'FARMACIA "DEL PUEBLO"', '18 DE NOV. Y 10 DE AGOSTO', 2, 1, -3.9977912908266617, -79.2039484530687, 1, '00:00:00', '00:00:00'),
(35, 'SU FARMACIA ANGELICA', 'MERCADILLO Y AV. UNIVERSITARIA', 2, 1, -4.001654967248096, -79.2044084519147, 1, '00:00:00', '00:00:00'),
(36, 'FARMACIA FYBECA "RIO ZAMORA"', 'ORILLAS DEL RIO ZAMORA Y GUAYAQUIL', 2, 1, -3.9812661093937787, -79.2024853080511, 1, '00:00:00', '00:00:00'),
(37, 'FARMACIA "SAN ISIDRO"', 'AV. PIO JARAMILLO Y EINSTEN', 2, 1, -4.027880124819334, -79.2030418664217, 1, '00:00:00', '00:00:00'),
(38, 'FARMACIA "SEÑOR DE LOS REMEDIOS"', 'ROMERILLOS Y EUCALIPTOS', 2, 1, -4.01910683796428, -79.1991667309912, 1, '00:00:00', '00:00:00'),
(39, 'FARMACIA "AMERICANA SUCURSAL"', 'LAURO GUERRERO Y ROCAFUERTE', 2, 1, -3.99848027872624, -79.2059674300799, 1, '00:00:00', '00:00:00'),
(40, 'FARMACIA " JERUSALEN PRICIPAL"', 'MACHALA Y ANCON', 2, 1, -3.98759821503368, -79.20406982302666, 1, '00:00:00', '00:00:00'),
(41, 'FARMACIA "IV CENTENARIO"', 'MANUEL AGUSTIN AGUIRRE Y MIGUEL RIOFRIO', 2, 1, -3.99947563121578, -79.2049884237894, 1, '00:00:00', '00:00:00'),
(42, 'FARMACIA "SAN LUIS"', 'AV. PIO JARAMILLO Y REINALDO ESPINOZA', 2, 1, -4.03284064403722, -79.202544931295, 1, '00:00:00', '00:00:00'),
(43, 'FARMACIA "SANTA MARÍA"', 'AV. 8 DE DICIEIMBRE Y JARAMIJO', 2, 1, -3.97842581038969, -79.20436955988407, 1, '00:00:00', '00:00:00'),
(44, 'FARMACIA CRUZ AZUL "AMERICANA"', '18 DE NOVIEMBRE Y 10 DE AGOSTO', 2, 1, -3.99729093803304, -79.2040456692302, 1, '00:00:00', '00:00:00'),
(45, 'FARMACIA "CUXIBAMBA VIDA"', 'BOLIVAR Y MIGUEL RIOFRIO', 2, 1, -3.99921609054644, -79.2019307473708, 1, '00:00:00', '00:00:00'),
(46, 'FARMACIA "GALENOS CRUZ AZUL"', 'AV. UNIVERSITARIA Y 10 DE AGOSTO', 2, 1, -3.99739796539133, -79.2049100110853, 1, '00:00:00', '00:00:00'),
(47, 'FARMACIA "AUXILIADORA"', 'GRAN COLOMBIA Y ANCON', 2, 1, -3.98800157908695, -79.20444464777, 1, '00:00:00', '00:00:00'),
(48, 'FARMACIA "MARIA FERNANDA"', 'ARGENTINA Y BRASIL', 2, 1, -4.00952273672448, -79.20724958181381, 1, '00:00:00', '00:00:00'),
(49, 'FARMACIA CRUZ AZUL "KATERINE"', 'BERNARDO VALDIVIESO Y MERCADILLO', 2, 1, -4.00133923814784, -79.2009731848065, 1, '00:00:00', '00:00:00'),
(50, 'FARMACIA " FAMILIAR "', 'AV. UNIVERSITARIA E IMBABURA', 2, 1, -3.99449551227862, -79.2052593687685, 1, '00:00:00', '00:00:00'),
(51, 'FARMACIA "CUXIBAMBA BAYER"', '18 DE NOVIEMBRE Y AZUAY', 2, 1, -4.00034723254201, -79.2038009176167, 1, '00:00:00', '00:00:00'),
(52, 'FARMACIA ͞“ANTA FE “UCUR“AL 2͟', 'AV. 8 DE DICIEMBRE Y SANTIAGO', 2, 1, -3.96279128087141, -79.2144868383729, 1, '00:00:00', '00:00:00'),
(53, 'FARMACIA "FRANCESA"', 'MANUEL AGUSTIN AGUIRRE Y MIGUEL RIOFRIO', 2, 1, -3.99934786753376, -79.2050032178485, 1, '00:00:00', '00:00:00'),
(54, 'FARMACIA SANA SANA "MIGUEL RIOFRÍO"', 'MIGUEL RIOFRIO Y BOLIVAR', 2, 1, -3.99928833381793, -79.20185700058937, 1, '00:00:00', '00:00:00'),
(55, 'FARMACIA "GRAN COLOMBIA"', 'MANUEL AGUSTIN AGUIRRE Y ROCAFUERTE', 2, 1, -3.9983036838651205, -79.20514740049839, 1, '00:00:00', '00:00:00'),
(56, 'FARMACIA "BIOQUIMICOS"', 'TOMAS ALBA EDISON Y SLDO. CARLOS ROBLES', 2, 1, 0, 0, 1, '00:00:00', '00:00:00'),
(57, 'FARMACIA " SANA ALONSO DE MERCADILLO', 'GRAN COLOMBIA Y ANCON', 2, 1, -3.9882283458452, -79.2043883353471, 1, '00:00:00', '00:00:00'),
(58, 'FARMACIA "LOJA"', 'BOLIVAR - ROCAFUERTE', 2, 1, -3.998085615631, -79.2020004709411, 1, '00:00:00', '00:00:00'),
(59, 'FARMACIA " ISRAEL"', 'AVDA PIO JARAMILLO Y PASAJE', 2, 1, -4.0153634, -79.2037775999999, 1, '00:00:00', '00:00:00'),
(60, 'FARMACIA "SAN CAMILO DE LELLIS"', 'AV. PALTAS Y RUSIA', 2, 1, -4.004487158921313, -79.21324297785759, 1, '00:00:00', '00:00:00'),
(61, 'FARMACIA "FARMARED"', 'MANUEL AGUSTIN AGUIRRE Y AZUAY', 2, 1, -4.0004895, -79.2053040999999, 1, '00:00:00', '00:00:00'),
(62, 'FARMACIA "FARMAAMIGA"', 'SUCRE Y AZUAY', 2, 1, -2.9025408, -79.0191970999999, 1, '00:00:00', '00:00:00'),
(63, 'FARMACIA SANA SANA "18 DE NOVIEMBRE"', '18 DE NOV. Y JOSE A. EGUIGUREN', 2, 1, -3.9964675, -79.2045795999999, 1, '00:00:00', '00:00:00'),
(64, 'FARMACIA "SAN JOSÉ"', 'MACHALA Y ANCON', 2, 1, -3.9880076, -79.2042294, 1, '00:00:00', '00:00:00'),
(65, 'FARMACIA " SILVANA PATRICIA "', 'RIO DE JANEIRO Y CORDOVA', 2, 1, -3.9823577, -79.2124706999999, 1, '00:00:00', '00:00:00'),
(66, 'FARMACIA "NACIONAL SUCURSAL"', 'BERNARDO VALDIVIESO Y JOSE ANTONIO EGUIGUREN', 2, 1, -3.995687, -79.2013648999999, 1, '00:00:00', '00:00:00'),
(67, 'FARMACIA "MARILU"', 'BARRIO MOTUPE', 2, 1, -3.9417746, -79.2272888999999, 1, '00:00:00', '00:00:00'),
(68, 'FARMACIA FYBECA "LA TEBAIDA"', '18 DE NOVIEMBRE Y GOBERNACIÓN DE MAINAS', 2, 1, -4.01297479999999, -79.2028401, 1, '00:00:00', '00:00:00'),
(69, 'FARMACIA "LOURDES"', '18 DE NOVIEMBRE Y LOURDES', 2, 1, -4.0025085, -79.2031847, 1, '00:00:00', '00:00:00'),
(70, 'FARMACIA "SAN FRANCISCO"', 'BOLIVAR Y IMBABURA', 2, 1, -3.9946828, -79.2022468, 1, '00:00:00', '00:00:00'),
(71, 'FARMACIA DEL SUR', 'BRASIL 17-04 Y AV. PIO JARAMILLO', 2, 1, -4.0062171, -79.2057529, 1, '00:00:00', '00:00:00'),
(72, 'FARMACIA SANA SANA "PIO JARAMILLO"', 'MERCADILLO Y AV. UNIVERSITARIA', 2, 1, -4.0014381, -79.2045675, 1, '00:00:00', '00:00:00'),
(73, 'FARMACIA "EL ROSARIO"', 'VICENTE DELGADO TAPIA-AV. PABLO PALACIOS', 2, 1, 0, 0, 1, '00:00:00', '00:00:00'),
(74, 'FARMACIA "SAN PABLO"', '18 DE NOVIEMBRE Y ROCAFUERTE ESQ.', 2, 1, -3.99833699999999, -79.2043691999999, 1, '00:00:00', '00:00:00'),
(75, 'FARMACIA "SARA BETSABE"', 'JUAN DE SALINAS Y SUCRE', 2, 1, -3.9908137, -79.2038549, 1, '00:00:00', '00:00:00'),
(76, 'FARMACIA "LA CASTELLANA"', 'MANUEL AGUSTIN AGUIRRE Y COLON ESQ.', 2, 1, -3.9949705, -79.2054981, 1, '00:00:00', '00:00:00'),
(77, 'FARMACIA "ELOY ALFARO SUCURSAL"', 'MERCADILLO Y JOSE ANGEL PALACIOS', 2, 1, 0, 0, 1, '00:00:00', '00:00:00'),
(78, 'FARMACIA "SANA SANA JIPIRO"', 'SIMON BOLIVAR Y COLON', 2, 1, -3.9952645, -79.2027097999999, 1, '00:00:00', '00:00:00'),
(79, 'FARMACIA "SAN CARLOS"', 'SUCRE CATACOCHA Y CARIAMANGA', 2, 1, -4.0854651, -79.597074, 1, '00:00:00', '00:00:00'),
(80, 'FARMACIA " SANTA LUCIA"', 'GUAYAQUIL Y AVDA ORILLAS DEL ZAMORA', 2, 1, -3.9813695, -79.2022506, 1, '00:00:00', '00:00:00'),
(81, 'FARMACIA "GENESIS"', 'OLMEDO - 10 DE AGOSTO', 2, 1, -3.9969538, -79.1996495999999, 1, '00:00:00', '00:00:00'),
(82, 'FARMACIA "MODELO"', 'ROCAFUERTE Y SUCRE', 2, 1, -3.9982528, -79.2032626, 1, '00:00:00', '00:00:00'),
(83, 'FARMACIA "MARIELIZA"', 'MACHALA E IBARRA', 2, 1, -3.9856391, -79.2039853999999, 1, '00:00:00', '00:00:00'),
(84, 'FARMACIA NACIONAL" SAN SEBASTIAN"', 'JUAN JOSE PEÑA Y LOURDES ESQUINA', 2, 1, -4.0017155, -79.1987805, 1, '00:00:00', '00:00:00'),
(85, 'FARMACIA SANA SANA "PRIMERO DE MAYO"', 'AZUAY Y BERNARDO VALDIVIESO', 2, 1, -3.999693, -79.2010027999999, 1, '00:00:00', '00:00:00'),
(86, 'FARMACIA "HISPANA"', '18 DE NOVIEMBRE Y ROCAFUERTE', 2, 1, -3.99833699999999, -79.2043691999999, 1, '00:00:00', '00:00:00'),
(87, 'FARMACIA SANA SANA "VIRGEN DEL CISNE"', 'MANUEL AGUSTIN AGUIRRE Y COLÓN', 2, 1, -3.9949705, -79.2054981, 1, '00:00:00', '00:00:00'),
(88, 'FARMACIA "CUXIBAMBA PRINCIPAL"', 'MERCADILLO Y SUCRE', 2, 1, -4.00139939999999, -79.2027775, 1, '00:00:00', '00:00:00'),
(89, 'FARMACIA "MARIA PAULA"', 'SALVADOR BUASTAMANTE CELI E ISIDRO AYORA', 2, 1, -3.9772172, -79.2011838999999, 1, '00:00:00', '00:00:00'),
(90, 'FARMACIA "SANTA ANITA"', '18 DE NOVIEMBRE Y CELICA', 2, 1, -4.00590659999999, -79.2029767999999, 1, '00:00:00', '00:00:00'),
(91, 'FARMACIA "JORGE DAVID"', 'BARRIO BELEN JUNTO A LA IGLESIA', 2, 1, -3.97910379999999, -79.2216975, 1, '00:00:00', '00:00:00'),
(92, 'FARMACIA "SONIA JUDITH"', 'AVDA. PIO JARAMILLO Y ARGENTINA', 2, 1, -4.0038311, -79.2077264, 1, '00:00:00', '00:00:00'),
(93, 'FARMACIA "VICTORIA CRUZ-AZUL"', '10 DE AGOSTO Y LAURO GUERRERO', 2, 1, -3.99795249999999, -79.2060138, 1, '00:00:00', '00:00:00'),
(94, 'FARMACIA DIVINO NIÑO', '10 DE AGOSTO ENTRE RAMON PINTO Y LAURO GUERRERO', 2, 1, -3.9979845, -79.2066006999999, 1, '00:00:00', '00:00:00'),
(95, 'FARMACIA "NACIONAL SAN ANTONIO"', 'AV. MANUEL AGUSTIN A. ROCAFUERTE', 2, 1, -3.9978912, -79.2051616, 1, '00:00:00', '00:00:00'),
(96, 'FARMACIA " SANTA MARIANITA"', '18 DE NOVIEMBRE Y MIGUEL RIOFRIO', 2, 1, -3.9994068, -79.202472, 1, '00:00:00', '00:00:00'),
(97, 'FARMACIA " DANIEL ELIAS "', 'FRENTE A LA UNIVERSIDAD NACIONAL DE LOJA', 2, 1, -3.9864596, -79.1985828, 1, '00:00:00', '00:00:00'),
(98, 'SU FARMCIA SINAI', '8 DE DICIEMBRE Y AV. ISIDRO AYORA', 2, 1, 0, 0, 1, '00:00:00', '00:00:00'),
(99, 'FARMACIA NACIONAL PRINCIPAL', 'BOLIVAR Y COLON', 2, 1, -3.9952645, -79.2027097999999, 1, '00:00:00', '00:00:00'),
(100, 'FARMACIA SANTA FE " PRINCIPAL"', 'AVDA. UNIVERSITARIA Y JUAN DE SALINAS', 2, 1, -3.9922143, -79.2055374999999, 1, '00:00:00', '00:00:00'),
(101, 'FARMACIA "ELOY ALFARO"', 'CATACOCHA Y 18 DE NOV.', 2, 1, -4.0032486, -79.2035900999999, 1, '00:00:00', '00:00:00'),
(102, 'FARMACIA "MODELO PLUS"', 'LAURO GUERRERO Y COLÓN', 2, 1, -3.9954461, -79.2058855999999, 1, '00:00:00', '00:00:00'),
(103, 'FARMACIA "SANTA INES"', '18 DE NOVIEMBRE Y JOSE FELIX DE VALDIVIESO', 2, 1, -3.9929361, -79.2044363, 1, '00:00:00', '00:00:00'),
(104, 'FARMACIA "PASTEUR"', 'BOLIVAR - LOURDES', 2, 1, -4.0025308, -79.2016601, 1, '00:00:00', '00:00:00'),
(105, 'FARMACIA "AMAZONAS NORTE"', 'PADRE SOLANO', 2, 1, 0, 0, 1, '00:00:00', '00:00:00'),
(106, 'FARMACIA CRISTO REY', 'AV. 8 DE DICIEMBRE (DENTRO DEL TERMINAL)', 2, 1, -3.9794294, -79.2044746999999, 1, '00:00:00', '00:00:00'),
(107, 'FARMACIA "IDEAL"', 'RAMON PINTO Y MIGUEL RIOFRÍO', 2, 1, -3.9994068, -79.202472, 1, '00:00:00', '00:00:00'),
(108, 'FARMACIA "SAN SEBASTIAN SUCURSAL"', 'AVD. GRAN COLOMBIA Y GUARANDA', 2, 1, -3.9875759, -79.2044364999999, 1, '00:00:00', '00:00:00'),
(109, 'FARMACIA "GABRIELA"', 'AV. MANUEL A. AGUIRRE 06-51 Y JOSE ANTONIO EGUIGUREN', 2, 1, -3.996527, -79.205175, 1, '00:00:00', '00:00:00'),
(152, 'Maximedias', '18 de Noviembre y Rocafuerte', 1, 2, -3.989869894543749, -79.20679137112074, 0, '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_tipo`
--

CREATE TABLE `empresa_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa_tipo`
--

INSERT INTO `empresa_tipo` (`id`, `nombre`) VALUES
(1, 'Centro comercial'),
(4, 'Discotecas'),
(2, 'Farmacia'),
(3, 'Licoreras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`) VALUES
(1, 'super_admin', 'Administrador de todo el sistema'),
(2, 'admin', 'Administrador de un local, servicio o empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `cedula_ruc` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `cedula_ruc`, `nombres`, `apellidos`, `usuario`, `password`, `email`, `telefono`) VALUES
(2, '1104263908', 'Roberth', 'Loaiza', 'user.jpg', '827ccb0eea8a706c4c34a16891f84e7b', 'rploaiza@utpl.edu.ec', '2589648'),
(1, '1111111111', 'Administrador', 'Find-It', 'user.jpg', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com', '00000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 1),
(2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_anuncio_id` (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_empresa_id` (`id`),
  ADD UNIQUE KEY `UQ_empresa_nombre` (`nombre`);

--
-- Indices de la tabla `empresa_tipo`
--
ALTER TABLE `empresa_tipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_empresaTipo_id` (`id`),
  ADD UNIQUE KEY `UQ_empresaTipo_nombre` (`nombre`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UQ_rol_id` (`id`),
  ADD UNIQUE KEY `UQ_rol_nombre` (`nombre`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD UNIQUE KEY `UQ_usuario_cedula_ruc` (`cedula_ruc`),
  ADD UNIQUE KEY `UQ_usuario_email` (`email`),
  ADD UNIQUE KEY `UQ_usuario_id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT de la tabla `empresa_tipo`
--
ALTER TABLE `empresa_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
