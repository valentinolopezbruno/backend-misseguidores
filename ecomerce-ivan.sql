-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2023 a las 19:23:56
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomerce-ivan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credenciales`
--

CREATE TABLE `credenciales` (
  `id` int(255) NOT NULL,
  `pasarela` varchar(255) NOT NULL,
  `cliente_id` varchar(255) NOT NULL,
  `cliente_secret` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `credenciales`
--

INSERT INTO `credenciales` (`id`, `pasarela`, `cliente_id`, `cliente_secret`) VALUES
(1, 'mercadopago', 'JUANJUANJUANJUAN', 'JUANJUANJUANJUAN'),
(2, 'paypal', 'asdsadasddasasd1111', '231eqweqwe1211111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(255) NOT NULL,
  `estado` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `estado`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 1),
(8, 1),
(9, 0),
(10, 0),
(11, 0),
(12, 1),
(13, 1),
(14, 1),
(15, 0),
(16, 1),
(17, 1),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `id_social` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `imagen`, `id_social`) VALUES
(8, 'Seguidores', 'instagram.jpg.57', 1),
(9, 'Likes', 'instagram logos.jpg.57', 1),
(10, 'Views', 'instagram-aplicacion-tecnologia-lanzamiento-sociedad-historia.jpg.57', 1),
(11, 'Subscriptores', 'descarga.png.57', 2),
(12, 'Seguidores', 'tuiterr.png.57', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_cantidad`
--

CREATE TABLE `producto_cantidad` (
  `id` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_ars` int(11) NOT NULL,
  `precio_usd` int(11) NOT NULL,
  `precio_eur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_cantidad`
--

INSERT INTO `producto_cantidad` (`id`, `idProducto`, `cantidad`, `precio_ars`, `precio_usd`, `precio_eur`) VALUES
(1, 1, 100, 1000, 10, 12),
(3, 1, 500, 2000, 20, 25),
(4, 3, 111, 0, 0, 0),
(7, 4, 3333, 3333, 333, 33333),
(8, 5, 111, 222, 0, 0),
(9, 6, 500, 11, 22, 33),
(11, 7, 333, 333, 33, 333),
(12, 1, 1000, 4000, 50, 55),
(13, 8, 100, 1000, 10, 7),
(14, 8, 500, 2000, 20, 15),
(15, 8, 1000, 3000, 30, 25),
(16, 9, 100, 1000, 10, 7),
(17, 9, 500, 2000, 20, 15),
(18, 9, 1000, 3000, 30, 26),
(19, 10, 7777, 8888, 9999, 99999),
(20, 10, 500, 15000, 50, 50),
(21, 10, 1000, 30000, 100, 90),
(22, 11, 100, 1500, 10, 7),
(23, 11, 500, 5000, 30, 26),
(24, 11, 1000, 8000, 50, 45),
(25, 12, 1000, 1000, 10, 7),
(26, 12, 2000, 2000, 15, 14),
(27, 12, 5000, 4500, 10, 5),
(28, 13, 100, 1000, 10, 8),
(29, 13, 500, 2000, 20, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `social`
--

INSERT INTO `social` (`id`, `nombre`, `imagen`) VALUES
(1, 'Instagram', 'instagram logos.jpg.57'),
(2, 'Youtube', 'descarga.png.57'),
(3, 'Twitter', 'tuiterr.png.57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiracion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contra`, `token`, `expiracion`) VALUES
(1, 'tino', 'asd123', 'tpWWlyl2LBIqdT78rnjvi3g41fScr0', '2023/08/25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('301cf565-80cb-4b3b-9185-c315ad500477', '7dc7085f4974ed01090068a0e5953b0a0398c63f5c63d7de8b57132f3e6807d8', '2023-07-20 19:42:43.646', '20230720194243_migrate', NULL, NULL, '2023-07-20 19:42:43.628', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_cantidad`
--
ALTER TABLE `producto_cantidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `credenciales`
--
ALTER TABLE `credenciales`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `producto_cantidad`
--
ALTER TABLE `producto_cantidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
