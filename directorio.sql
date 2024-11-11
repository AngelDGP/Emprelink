-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-11-2024 a las 20:25:19
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `Cedula` int NOT NULL,
  `Nombres` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Apellidos` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Contra` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `C` tinyint(1) NOT NULL,
  `R` tinyint(1) NOT NULL,
  `U` tinyint(1) NOT NULL,
  `D` tinyint(1) NOT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `Id_cat` int NOT NULL AUTO_INCREMENT,
  `Nombre_cat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`Id_cat`, `Nombre_cat`) VALUES
(1, 'Bebidas, bares y discotecas'),
(2, 'Belleza, maquillaje y perfumería'),
(3, 'Construcción y reparaciones'),
(4, 'Educación'),
(5, 'Entretenimiento'),
(6, 'Ferreterías y suministros industriales'),
(7, 'Mensajerías'),
(8, 'Muebles y electrodomésticos'),
(9, 'Panaderías, pastelerías y heladerías'),
(10, 'Librerías, Papelerías y variedades'),
(11, 'Restaurantes , cafeterías y comidas'),
(12, 'Ropa y calzado'),
(13, 'Salud y droguerías'),
(14, 'Financieros y seguros'),
(15, 'Servicios profesionales'),
(16, 'Tecnología y comunicación'),
(17, 'Tiendas y supermercados'),
(18, 'Transporte y viajes'),
(19, 'Vehículos, mantenimiento y reparación'),
(20, 'Veterinarias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `Id_e` int NOT NULL AUTO_INCREMENT,
  `Nombre_e` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Direccion_e` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono_e` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Lunes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Martes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Miercoles` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Jueves` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Viernes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Sabado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Domingo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Festivos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Sitio` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fb` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Ig` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Id_cat` int NOT NULL,
  `Cedula` int NOT NULL,
  PRIMARY KEY (`Id_e`),
  KEY `empresas_ibfk_1` (`Id_cat`),
  KEY `empresas_ibfk_2` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`Id_e`, `Nombre_e`, `Direccion_e`, `Telefono_e`, `Lunes`, `Martes`, `Miercoles`, `Jueves`, `Viernes`, `Sabado`, `Domingo`, `Festivos`, `imagen`, `Sitio`, `Fb`, `Ig`, `Id_cat`, `Cedula`) VALUES
(5, 'Angeles SA', 'Diagonal 67 #29-32', '3153663987', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', 'CERRADO', 'imagenes/1070586494.jpg', 'https://www.youtube.com/index', 'https://www.youtube.com/index', 'https://www.youtube.com/index', 1, 1070586494),
(6, 'Angeles SA', 'Diagonal 67 #29-32', '3153663987', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', '8:00am a 12:00pm /2:00pm a 6:00pm', 'CERRADO', 'imagenes/1111111111.png', 'https://www.youtube.com/index', 'https://www.youtube.com/index', 'https://www.youtube.com/index', 2, 1111111111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Cedula` int NOT NULL,
  `Nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Contra` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Email`, `Contra`) VALUES
(9090, 'Administrador', 'Null', 'Mull', 'Null', '9090'),
(1070586494, 'Angel ', 'Gomez ', '3153323939', 'agomez48@udi.edu.co', '123456'),
(1111111111, 'Mayra', 'Calderon', '3153663987', 'isabelagomezp20@gmail.com', '123456');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`Id_cat`) REFERENCES `categorias` (`Id_cat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empresas_ibfk_2` FOREIGN KEY (`Cedula`) REFERENCES `usuarios` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
