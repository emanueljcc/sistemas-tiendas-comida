-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-09-2016 a las 21:50:52
-- Versión del servidor: 5.7.15-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `ip`, `id_usuario`, `usuario`, `tipo`, `accion`, `fecha`, `hora`) VALUES
(1, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-16', '00:00:00'),
(2, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-16', '00:00:00'),
(3, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-16', '00:00:00'),
(4, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-16', '00:00:00'),
(5, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-16', '00:00:00'),
(6, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-16', '00:00:00'),
(7, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(8, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(9, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(10, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(11, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(12, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(13, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(14, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(15, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(16, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(17, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(18, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(19, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(20, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(21, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(22, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(23, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(24, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(25, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(26, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(27, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-05-24', '00:00:00'),
(28, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-24', '00:00:00'),
(29, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-05-25', '00:00:00'),
(30, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-15', '00:00:00'),
(31, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-06-15', '00:00:00'),
(32, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-27', '00:00:00'),
(33, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-06-27', '00:00:00'),
(34, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-27', '00:00:00'),
(35, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-28', '00:00:00'),
(36, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-28', '00:00:00'),
(37, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-06-29', '00:00:00'),
(38, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-01', '00:00:00'),
(39, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-07-01', '00:00:00'),
(40, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-01', '00:00:00'),
(41, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-06', '00:00:00'),
(42, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-07-06', '00:00:00'),
(43, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-06', '00:00:00'),
(44, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-07', '00:00:00'),
(45, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-07', '00:00:00'),
(46, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-07-07', '00:00:00'),
(47, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-07', '00:00:00'),
(48, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-07', '00:00:00'),
(49, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-08', '00:00:00'),
(50, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-11', '00:00:00'),
(51, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-11', '00:00:00'),
(52, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-12', '00:00:00'),
(53, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-15', '00:00:00'),
(54, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-18', '00:00:00'),
(55, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-19', '00:00:00'),
(56, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-20', '00:00:00'),
(57, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-07-21', '00:00:00'),
(58, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-08-10', '00:00:00'),
(59, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-08-24', '00:00:00'),
(60, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-08-25', '00:00:00'),
(61, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-02', '00:00:00'),
(62, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-02', '00:00:00'),
(63, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-02', '00:00:00'),
(64, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-02', '00:00:00'),
(65, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-07', '00:00:00'),
(66, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-08', '00:00:00'),
(67, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-09', '00:00:00'),
(68, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-12', '00:00:00'),
(69, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-12', '00:00:00'),
(70, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-12', '00:00:00'),
(71, '172.16.0.7', 5, 'emanuel', 'usuario', 'AutenticacionController@login', '2016-09-12', '00:00:00'),
(72, '172.16.0.7', 5, 'emanuel', 'usuario', 'AutenticacionController@logout', '2016-09-12', '00:00:00'),
(73, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-12', '00:00:00'),
(74, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-12', '00:00:00'),
(75, '172.16.0.7', 5, 'emanuel', 'usuario', 'AutenticacionController@login', '2016-09-12', '00:00:00'),
(76, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(77, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(78, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(79, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(80, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(81, '172.16.0.7', 3, 'root', 'admin', 'UsuariosController@cambiarEstatus', '2016-09-13', '00:00:00'),
(82, '172.16.0.7', 3, 'root', 'admin', 'Registro un usuario', '2016-09-13', '00:00:00'),
(83, '172.16.0.7', 3, 'root', 'admin', 'elimino un usuario{"id":8,"username":"asdasd","cedula":"2147483647","tipo":"usuario","estatus":"11","ultima_conexion":null,"encrypted_id":"ZXlKcGRpSTZJbWRXYVZRNVVXRlNWR2xYV1ZGRGVFZDBSRXRpYlZFOVBTSXNJblpoYkhWbElqb2ljREEwUWxsVlExQlBOMFpIWkRsbldrbzNaVTlqZHow', '2016-09-13', '00:00:00'),
(84, '172.16.0.7', 3, 'root', 'admin', 'Registro un usuario', '2016-09-13', '00:00:00'),
(85, '172.16.0.7', 3, 'root', 'admin', 'elimino un usuario22', '2016-09-13', '00:00:00'),
(86, '172.16.0.7', 3, 'root', 'admin', 'Registro un usuario', '2016-09-13', '00:00:00'),
(87, '172.16.0.7', 3, 'root', 'admin', 'elimino un usuario', '2016-09-13', '00:00:00'),
(88, '172.16.0.7', 3, 'root', 'admin', 'elimino un usuariousuario', '2016-09-13', '00:00:00'),
(89, '172.16.0.7', 3, 'root', 'admin', 'modifico un usuario root', '2016-09-13', '00:00:00'),
(90, '172.16.0.7', 3, 'roott', 'admin', 'modifico un usuario roott', '2016-09-13', '00:00:00'),
(91, '172.16.0.7', 3, 'root', 'admin', 'Registro un usuario ', '2016-09-13', '00:00:00'),
(92, '172.16.0.7', 3, 'root', 'admin', 'creo un nuevo registro nombre del titular: 87987', '2016-09-13', '00:00:00'),
(93, '172.16.0.7', 3, 'root', 'admin', 'modifico registro nombre del titular: 879987', '2016-09-13', '00:00:00'),
(94, '172.16.0.7', 3, 'root', 'admin', 'elimino registro nombre del titular: iuyuiyi', '2016-09-13', '00:00:00'),
(95, '172.16.0.7', 3, 'root', 'admin', 'modifico mineral: piedra', '2016-09-13', '00:00:00'),
(96, '172.16.0.7', 3, 'root', 'admin', 'elimino mineral: piedraa', '2016-09-13', '00:00:00'),
(97, '172.16.0.7', 3, 'root', 'admin', 'creo un nuevo mineral: ssss', '2016-09-13', '00:00:00'),
(98, '172.16.0.7', 3, 'root', 'admin', 'elimino mineral: ssss', '2016-09-13', '00:00:00'),
(99, '172.16.0.7', 3, 'root', 'admin', 'desbloqueo: 172.16.0.7', '2016-09-13', '00:00:00'),
(100, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(101, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(102, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(103, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(104, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(105, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(106, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(107, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(108, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(109, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(110, '172.16.0.7', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(111, '172.16.0.7', 3, 'root', 'admin', 'elimino un usuario ss', '2016-09-13', '00:00:00'),
(112, '172.16.0.7', 3, 'root', 'admin', 'Registro un usuario ', '2016-09-13', '00:00:00'),
(113, '172.16.0.7', 3, 'root', 'admin', 'cambio estatus usuario admin', '2016-09-13', '00:00:00'),
(114, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(115, '127.0.0.1', 3, 'root', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(116, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(117, '127.0.0.1', 6, 'admin', 'admin', 'elimino un usuario root', '2016-09-13', '00:00:00'),
(118, '127.0.0.1', 6, 'admin', 'admin', 'Registro un usuario ', '2016-09-13', '00:00:00'),
(119, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-13', '00:00:00'),
(120, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(121, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-13', '00:00:00'),
(122, '127.0.0.1', 6, 'admin', 'admin', 'elimino un usuario root', '2016-09-13', '00:00:00'),
(123, '127.0.0.1', 6, 'admin', 'admin', 'desbloqueo la ip: 127.0.0.1', '2016-09-13', '00:00:00'),
(124, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-15', '00:00:00'),
(125, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-15', '00:00:00'),
(126, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@login', '2016-09-16', '00:00:00'),
(127, '127.0.0.1', 6, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-16', '00:00:00'),
(128, '127.0.0.1', 13, 'root', 'emanuel', 'AutenticacionController@login', '2016-09-20', '00:00:00'),
(129, '127.0.0.1', 13, 'root', 'admin', 'AutenticacionController@logout', '2016-09-20', '00:00:00'),
(130, '127.0.0.1', 13, 'root', 'admin', 'AutenticacionController@login', '2016-09-20', '00:00:00'),
(131, '127.0.0.1', 13, 'root', 'admin', 'AutenticacionController@login', '2016-09-22', '00:00:00'),
(132, '127.0.0.1', 13, 'root', 'admin', 'AutenticacionController@login', '2016-09-22', '00:00:00'),
(133, '127.0.0.1', 13, 'root', 'admin', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(134, '127.0.0.1', 14, 'root', 'root', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(135, '127.0.0.1', 14, 'root', 'root', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(136, '127.0.0.1', 15, 'emanuel', 'emanuel', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(137, '127.0.0.1', 15, 'emanuel', 'admin', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(138, '127.0.0.1', 14, 'root', 'root', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(139, '127.0.0.1', 14, 'root', 'root', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(140, '127.0.0.1', 15, 'emanuel', 'admin', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(141, '127.0.0.1', 15, 'emanuel', 'admin', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(142, '127.0.0.1', 15, 'emanuel', 'admin', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(143, '127.0.0.1', 15, 'emanuel', 'admin', 'elimino un usuario admin', '2016-09-23', '00:00:00'),
(144, '127.0.0.1', 15, 'emanuel', 'admin', 'elimino un usuario usuario', '2016-09-23', '00:00:00'),
(145, '127.0.0.1', 15, 'emanuel', 'admin', 'elimino un usuario emanuel', '2016-09-23', '00:00:00'),
(146, '127.0.0.1', 14, 'root', 'root', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(147, '127.0.0.1', 14, 'root', 'sudo', 'desbloqueo la ip: 127.0.0.1', '2016-09-23', '00:00:00'),
(148, '127.0.0.1', 14, 'root', 'sudo', 'cambio estatus usuario root', '2016-09-23', '00:00:00'),
(149, '127.0.0.1', 14, 'root', 'sudo', 'cambio estatus usuario root', '2016-09-23', '00:00:00'),
(150, '127.0.0.1', 14, 'root', 'sudo', 'Registro un usuario ', '2016-09-23', '00:00:00'),
(151, '127.0.0.1', 14, 'root', 'sudo', 'Registro un usuario ', '2016-09-23', '00:00:00'),
(152, '127.0.0.1', 14, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(153, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(154, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(155, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(156, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(157, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(158, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(159, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(160, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-23', '00:00:00'),
(161, '127.0.0.1', 14, 'root', 'sudo', 'AutenticacionController@login', '2016-09-23', '00:00:00'),
(162, '127.0.0.1', 14, 'root', 'sudo', 'Registro un producto', '2016-09-23', '00:00:00'),
(163, '127.0.0.1', 14, 'root', 'sudo', 'Actualizo un producto', '2016-09-23', '00:00:00'),
(164, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(165, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(166, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(167, '127.0.0.1', 18, 'root', 'sudo', 'cambio clave admin', '2016-09-24', '00:00:00'),
(168, '127.0.0.1', 18, 'root', 'sudo', 'cambio clave usuario', '2016-09-24', '00:00:00'),
(169, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(170, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(171, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(172, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(173, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(174, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(175, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(176, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(177, '127.0.0.1', 18, 'root', 'sudo', 'Registro un producto', '2016-09-24', '00:00:00'),
(178, '127.0.0.1', 18, 'root', 'sudo', 'Registro un producto', '2016-09-24', '00:00:00'),
(179, '127.0.0.1', 18, 'root', 'sudo', 'Registro un usuario ', '2016-09-24', '00:00:00'),
(180, '127.0.0.1', 18, 'root', 'sudo', 'elimino un usuario prueba', '2016-09-24', '00:00:00'),
(181, '127.0.0.1', 18, 'root', 'sudo', 'Registro un usuario ', '2016-09-24', '00:00:00'),
(182, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(183, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(184, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(185, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(186, '127.0.0.1', 18, 'root', 'sudo', 'Registro un producto', '2016-09-24', '00:00:00'),
(187, '127.0.0.1', 18, 'root', 'sudo', 'Registro un producto', '2016-09-24', '00:00:00'),
(188, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(189, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(190, '127.0.0.1', 16, 'admin', 'admin', 'Registro un usuario ', '2016-09-24', '00:00:00'),
(191, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(192, '127.0.0.1', 21, 'mercal', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(193, '127.0.0.1', 21, 'mercal', 'admin', 'Registro un producto', '2016-09-24', '00:00:00'),
(194, '127.0.0.1', 21, 'mercal', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(195, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(196, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(197, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(198, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(199, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(200, '127.0.0.1', 16, 'admin', 'admin', 'Registro un producto', '2016-09-24', '00:00:00'),
(201, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario prueba', '2016-09-24', '00:00:00'),
(202, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario prueba', '2016-09-24', '00:00:00'),
(203, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(204, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(205, '127.0.0.1', 16, 'admin', 'admin', 'Registro un usuario ', '2016-09-24', '00:00:00'),
(206, '127.0.0.1', 16, 'admin', 'admin', 'elimino un usuario 43534', '2016-09-24', '00:00:00'),
(207, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario mercal', '2016-09-24', '00:00:00'),
(208, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario mercal', '2016-09-24', '00:00:00'),
(209, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(210, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(211, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(212, '127.0.0.1', 16, 'admin', 'admin', 'cambio estatus usuario admin', '2016-09-24', '00:00:00'),
(213, '127.0.0.1', 16, 'admin', 'admin', 'Registro un producto', '2016-09-24', '00:00:00'),
(214, '127.0.0.1', 16, 'admin', 'admin', 'Actualizo un producto', '2016-09-24', '00:00:00'),
(215, '127.0.0.1', 16, 'admin', 'admin', 'Registro un producto', '2016-09-24', '00:00:00'),
(216, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(217, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(218, '127.0.0.1', 18, 'root', 'sudo', 'Registro un usuario ', '2016-09-24', '00:00:00'),
(219, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(220, '127.0.0.1', 23, 'ver', 'usuario', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(221, '127.0.0.1', 23, 'ver', 'usuario', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(222, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(223, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(224, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(225, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-24', '00:00:00'),
(226, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-24', '00:00:00'),
(227, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-25', '00:00:00'),
(228, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@login', '2016-09-25', '00:00:00'),
(229, '127.0.0.1', 16, 'admin', 'admin', 'AutenticacionController@logout', '2016-09-25', '00:00:00'),
(230, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-25', '00:00:00'),
(231, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-25', '00:00:00'),
(232, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@login', '2016-09-25', '00:00:00'),
(233, '127.0.0.1', 17, 'usuario', 'usuario', 'AutenticacionController@logout', '2016-09-25', '00:00:00'),
(234, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-25', '00:00:00'),
(235, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@logout', '2016-09-25', '00:00:00'),
(236, '127.0.0.1', 18, 'root', 'sudo', 'AutenticacionController@login', '2016-09-25', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generals`
--

CREATE TABLE `generals` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `unidad` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `parroquia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_tienda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `generals`
--

INSERT INTO `generals` (`id`, `producto`, `precio`, `fecha`, `cantidad`, `unidad`, `direccion`, `municipio`, `parroquia`, `id_tienda`) VALUES
(86, 'arroz', 123, '2016-09-23', 0, 'ML', 'juan crisostomo', '112300', '112301', 0),
(87, 'PAPA', 1200, '2016-09-23', 0, 'gr', 'PORAI', '111700', '111702', 0),
(90, 'zanahorias', 2150, '2016-09-24', 0, 'kg', 'urb. eugenias mercal', '110600', '110601', 0),
(91, 'zanahorias', 2000, '2016-09-24', 0, 'kg', 'plaza', '111400', '111401', 0),
(92, 'mayonesa', 1250, '2016-09-24', 0, 'gr', 'av. rosa', '111400', '111402', 2),
(93, 'pepino', 5000, '2016-09-24', 0, 'saco', 'urbinas', '110200', '110201', 2),
(94, 'peras', 9000, '2016-09-24', 0, 'kg', 'prolongacion', '110400', '110401', 26),
(95, 'uvas', 500, '2016-09-24', 0, 'kg', 'purureche', '110700', '110701', 0),
(96, 'carne', 3200, '2016-09-24', 1, 'kg', 'av. independencia', '111400', '111401', 26),
(97, 'repollo', 1000, '2016-09-24', 1, 'kg', 'donde sea', '110500', '110501', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_03_194518_create_usuarios_table', 1),
('2016_02_03_195529_create_monitoreo_ip_table', 1),
('2016_02_03_195835_create_auditoria_table', 1),
('2016_05_24_153122_create_generals_table', 2),
('2016_09_23_131024_create_states_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitoreo_ip`
--

CREATE TABLE `monitoreo_ip` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `name`, `created_at`, `updated_at`) VALUES
(110100, 'Municipio Acosta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110200, 'Municipio Bolívar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110300, 'Municipio Buchivacoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110400, 'Municipio Cacique Manaure', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110500, 'Municipio Carirubana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110600, 'Municipio Colina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110700, 'Municipio Dabajuro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110800, 'Municipio Democracia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110900, 'Municipio Falcón', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111000, 'Municipio Federación', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111100, 'Municipio Jacura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111200, 'Municipio Los Taques', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111300, 'Municipio Mauroa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111400, 'Municipio Miranda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111500, 'Municipio Monseñor Iturriza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111600, 'Municipio Palmasola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111700, 'Municipio Petit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111800, 'Municipio Piritu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111900, 'Municipio San Francisco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112000, 'Municipio Silva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112100, 'Municipio Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112200, 'Municipio Tocopero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112300, 'Municipio Unión', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112400, 'Municipio Urumaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112500, 'Municipio Zamora', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE `parroquias` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `parroquias`
--

INSERT INTO `parroquias` (`id`, `name`, `municipio_id`, `created_at`, `updated_at`) VALUES
(110101, 'Parroquia San Juan de los Cayos', 110100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110102, 'Parroquia Capadare', 110100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110103, 'Parroquia La Pastora', 110100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110104, 'Parroquia Libertador', 110100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110201, 'Parroquia San Luis', 110200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110202, 'Parroquia Aracua', 110200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110203, 'Parroquia La Peña', 110200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110301, 'Parroquia Capatárida', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110302, 'Parroquia Bariro', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110303, 'Parroquia Borojó', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110304, 'Parroquia Guajiro', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110305, 'Parroquia Seque', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110306, 'Parroquia Zazárida', 110300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110401, 'Parroquia CM Yaracal', 110400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110501, 'Parroquia Carirubana', 110500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110502, 'Parroquia Norte', 110500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110503, 'Parroquia Punta Cardón', 110500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110504, 'Parroquia Santa Ana', 110500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110601, 'Parroquia La Vela de Coro', 110600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110602, 'Parroquia Acurigua', 110600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110603, 'Parroquia Guaibacoa', 110600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110604, 'Parroquia Las Calderas', 110600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110605, 'Parroquia Macoruca', 110600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110701, 'Parroquia CM Dabajuro', 110700, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110801, 'Parroquia Pedregal', 110800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110802, 'Parroquia Agua Clara', 110800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110803, 'Parroquia Avaria', 110800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110804, 'Parroquia Piedra Grande', 110800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110805, 'Parroquia Purureche', 110800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110901, 'Parroquia Pueblo Nuevo', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110902, 'Parroquia Adícora', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110903, 'Parroquia Baraived', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110904, 'Parroquia Buena Vista', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110905, 'Parroquia Jadacaquiva', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110906, 'Parroquia Moruy', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110907, 'Parroquia Adaure', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110908, 'Parroquia El Hato', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110909, 'Parroquia El Vínculo', 110900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111001, 'Parroquia Churuguara', 111000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111002, 'Parroquia Agua Larga', 111000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111003, 'Parroquia El Paují', 111000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111004, 'Parroquia Independencia', 111000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111005, 'Parroquia Maparará', 111000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111101, 'Parroquia Agua Linda', 111100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111102, 'Parroquia Araurima', 111100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111103, 'Parroquia Jacura', 111100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111201, 'Parroquia Los Taques', 111200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111202, 'Parroquia Judibana', 111200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111301, 'Parroquia Mene de Mauroa', 111300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111302, 'Parroquia Casigua', 111300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111303, 'Parroquia San Félix', 111300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111401, 'Parroquia San Antonio', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111402, 'Parroquia San Gabriel', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111403, 'Parroquia Santa Ana', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111404, 'Parroquia Guzmán Guillermo', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111405, 'Parroquia Mitare', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111406, 'Parroquia Río Seco', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111407, 'Parroquia Sabaneta', 111400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111500, 'Parroquia Chichiriviche', 111500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111502, 'Parroquia Boca de Tocuyo', 111500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111503, 'Parroquia Tocuyo de la Costa', 111500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111555, 'Parroquia San Francisco', 111900, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111666, 'Parroquia Tocopero', 112200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111701, 'Parroquia Caburé', 111700, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111702, 'Parroquia Colina', 111700, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111703, 'Parroquia Curimagua', 111700, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111777, 'Parroquia Palmasola', 111600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111801, 'Parroquia Píritu', 111800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111802, 'Parroquia San José de la Costa', 111800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112001, 'Parroquia Tucacas', 112000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112002, 'Parroquia Boca de Aroa', 112000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112101, 'Parroquia Sucre', 112100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112102, 'Parroquia Pecaya', 112100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112301, 'Parroquia Santa Cruz de Bucaral', 112300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112302, 'Parroquia El Charal', 112300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112303, 'Parroquia Las Vegas del Tuy', 112300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112401, 'Parroquia Urumaco', 112400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112402, 'Parroquia Bruzual', 112400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112501, 'Parroquia Puerto Cumarebo', 112500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112502, 'Parroquia La Ciánaga', 112500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112503, 'Parroquia La Soledad', 112500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112504, 'Parroquia Pueblo Cumarebo', 112500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112505, 'Parroquia Zazárida', 112500, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `tienda` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `fecha`, `tienda`) VALUES
(26, '2016-09-22', 'gobernacion'),
(27, '2016-09-24', 'mercal'),
(28, '2016-09-24', 'pdval');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidads`
--

CREATE TABLE `unidads` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `unidads`
--

INSERT INTO `unidads` (`id`, `fecha`, `unidad`) VALUES
(25, '2016-09-22', 'gr'),
(26, '2016-09-22', 'kg'),
(27, '2016-09-22', 'litro'),
(28, '2016-09-22', 'ML'),
(29, '2016-09-24', 'saco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `tienda` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estatus` int(11) NOT NULL DEFAULT '11',
  `ultima_conexion` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `cedula`, `tienda`, `tipo`, `password`, `estatus`, `ultima_conexion`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'admin', 12345678, 26, 'admin', '$2y$10$uE3em1ZRSN3wc6owblsFqOOW5T5CxUQItnnlwJUc29Uy8TE6T3ice', 1, '2016-09-25', 'wCjGLvG9PH81GVyI5IAovTer7C599zBTGohTZr0GViC3dxpNa9MQYIYE7sPN', '2016-09-23 22:56:04', '2016-09-25 04:14:20'),
(17, 'usuario', 123456789, 0, 'usuario', '$2y$10$VBMB57gEEE7hvqkA/fTzvOlinftDbQ4wqBaBUBL6ZcnFOk20PAtEG', 1, '2016-09-25', 'AKwWiyQx1iCA8tYvoW8D8ERbuGz41ln0BZpWQrjrdFdV6kWnzcZ6pfd7xcxX', '2016-09-23 22:56:21', '2016-09-25 04:28:06'),
(18, 'root', 0, 26, 'sudo', '$2y$10$cm1aeDo6Mfy/N5u6ahCwCuxTaCYVWM/vR1JdtHGHOynpHQ2lf/O3G', 1, '2016-09-25', 'te6xEcLzsaVHoaIoKgZDyBdA8STbLKUIN5W5Qn4mcKRh5CHBjJY0FH0iBkrh', NULL, '2016-09-25 04:33:46'),
(20, 'prueba', 123444444, 28, 'usuario', '$2y$10$cJPJCwArIltbQ045jaEx/uSglcofLlGnqayKTZpgBJQcUWnodeCKa', 11, NULL, NULL, '2016-09-25 00:50:52', '2016-09-25 02:42:46'),
(21, 'mercal', 123456777, 27, 'admin', '$2y$10$04ymib3aAitIkp1ggqxEE.92tkL9umlqF436Poj7JIyUx15BFpvDK', 11, '2016-09-24', 'h64X8vJ499cecdyEqnXKDU9uTPC3XiMiooUNg25VDa115PjKMiArFuUc4vzb', '2016-09-25 01:14:22', '2016-09-25 03:00:12'),
(23, 'ver', 4059395, 26, 'usuario', '$2y$10$lmSRCu2XW/oYo8PXs8SwCeEvPoVkQvwRsRUcN5DsJ8yGhs63NZXCe', 1, '2016-09-24', 'Yie4vdUBfJ4rjR3fa64IKfbymsLKd00wqSSeJi1uZ66AphWX9dhU3CqQr2c0', '2016-09-25 03:54:17', '2016-09-25 03:58:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monitoreo_ip`
--
ALTER TABLE `monitoreo_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidads`
--
ALTER TABLE `unidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
--
-- AUTO_INCREMENT de la tabla `generals`
--
ALTER TABLE `generals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT de la tabla `monitoreo_ip`
--
ALTER TABLE `monitoreo_ip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112501;
--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112506;
--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `unidads`
--
ALTER TABLE `unidads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
