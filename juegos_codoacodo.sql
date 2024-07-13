-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2024 a las 06:22:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegos_codoacodo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `desarrollador` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `plataforma` varchar(25) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `nombre`, `desarrollador`, `descripcion`, `genero`, `plataforma`, `imagen`) VALUES
(1, 'Ark Survival Evolved', 'Studio Wildcard', 'Juega como un hombre o una mujer desnudo, congelandote y muriendote de hambre en una isla misteriosa. Debes cazar, cosechar, crear objetos, cultivar, y construir refugios para sobrevivir. Usa tu habilidad y astucia para matar, domesticar, criar y cabalgar dinosaurios y otras criaturas primitivas.', 'Supervivencia, Mundo Abierto, Rol', 'PC', 'ark_survival_evolved.png'),
(2, 'Assassin\'s Creed Odyssey', 'Ubisoft Quebec', 'Elige tu destino en Assassin\'s Creed Odyssey. Pasa de la marginacion a la gloria embarcandote en una odisea para descubrir los secretos de tu pasado y cambiar el destino de la antigua Grecia.', 'Mundo Abierto, Rol, Un jugador', 'PC', 'assassins_creed_odyssey.png'),
(3, 'Assassin\'s Creed Origins', 'Ubisoft Montreal', 'El esplendor y la intriga del antiguo Egipto se desdibujan en una cruenta lucha por el poder. Desvela secretos y mitos ya olvidados en un momento crucial: el origen de la Hermandad de los Assassins. Navega por el Nilo, explora una tierra vasta e impredecible y descubre los misterios de las piramides mientras sobrevives a peligrosas facciones y bestias salvajes.', 'Mundo Abierto, Accion, Rol, Sigilo', 'PC', 'assassins_creed_origins.png'),
(4, 'Atomic Heart', 'Mundfish', 'Ten encuentros explosivos en un delirante y sublime mundo utopico. Adapta tu estilo de combate a cada rival, aprovecha el entorno y mejora el equipamiento para cumplir la mision. El precio de averiguar la verdad tendras que pagarlo con sangre.', 'Terror, FPS, Puzzles, Misterio', 'PC', 'atomic_heart.png'),
(5, 'Day Z', 'Bohemia Interactive', 'Cuanto podras sobrevivir en un mundo posapocaliptico? Es una tierra plagada de zombis infectados donde compites por recursos escasos. ¿Colaboraras con desconocidos y permanecereis juntos? ¿O iras de lobo solitario para evitar traiciones? Esto es DayZ. Esta es tu historia.', 'Supervivencia, Cooperativo, Mundo Abierto', 'PC', 'day_z.png'),
(6, 'Dead Space', 'Electronic Arts', 'Vuelve el clasico de terror y supervivencia de ciencia ficcion, recreado completamente para ofrecer una experiencia mas inmersiva (incluidas mejoras visuales, sonoras y de jugabilidad) al mismo tiempo que se mantiene fiel a la emocionante vision del juego original.', 'Terror, Tercera Persona, Espacio Exterior', 'PC', 'dead_space.png'),
(7, 'Dishonored 2', 'Arkane Studios', 'Dishonored 2 tiene lugar 15 anios despues de la derrota del lord Regente. La temible peste ha pasado a la historia y un usurpador de otro mundo se ha hecho con el trono de la emperatriz Emily Kaldwin. El futuro de las islas pende de un hilo. Asume el papel de Emily o Corvo y repite tu papel de asesino sobrenatural en Dishonored 2.', 'Sigilo, Primera Persona, Accion, Asesinos', 'PC', 'dishonored_2.png'),
(8, 'Fallout 4', 'Bethesda Game Studios', 'Eres el unico superviviente del Refugio 111 en un mundo destruido por la guerra nuclear. Cada segundo es una lucha por la supervivencia, y en tus manos estaran todas las decisiones. Solo tu puedes reconstruir el yermo y decidir su futuro. Bienvenido a casa.', 'Mundo Abierto, Postapocaliptico, Un Jugador, Rol', 'PC', 'fallout_4.png'),
(9, 'Fallout 76', 'Bethesda Game Studios', 'Bethesda Game Studios te da la bienvenida a Fallout 76. Veinticinco anios despues de la caida de las bombas, saldras junto a los demas companeros moradores del refugio a la America posnuclear. Explora un amplio Yermo en este juego multijugador de mundo abierto que completa la historia de Fallout.', 'Mundo Abierto, Rol, Multijugador', 'PC', 'fallout_76.png'),
(10, 'Sea of Thieves', 'Rare Ltd.', 'Sea of Thieves es un exitoso juego de aventuras piratas que ofrece la experiencia pirata por excelencia de saquear tesoros perdidos, batallas intensas, vencer monstruos marinos y mas. Sumergete en esta edicion revisada del juego, que incluye acceso a medios digitales de bonificacion.', 'Multijugador, Aventura, Mundo Abierto, Piratas', 'PC', 'sea_of_thieves.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_backup`
--

CREATE TABLE `juegos_backup` (
  `id_juego` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) DEFAULT NULL,
  `desarrollador` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `plataforma` varchar(25) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `juegos_backup`
--

INSERT INTO `juegos_backup` (`id_juego`, `nombre`, `desarrollador`, `descripcion`, `genero`, `plataforma`, `imagen`) VALUES
(1, 'Ark Survival Evolved', 'Studio Wildcard', 'Juega como un hombre o una mujer desnudo, congelandote y muriendote de hambre en una isla misteriosa. Debes cazar, cosechar, crear objetos, cultivar, y construir refugios para sobrevivir. Usa tu habilidad y astucia para matar, domesticar, criar y cabalgar dinosaurios y otras criaturas primitivas.', 'Supervivencia, Mundo Abierto, Rol', 'PC', 'ark_survival_evolved.png'),
(2, 'Assassin\'s Creed Odyssey', 'Ubisoft Quebec', 'Elige tu destino en Assassin\'s Creed Odyssey. Pasa de la marginacion a la gloria embarcandote en una odisea para descubrir los secretos de tu pasado y cambiar el destino de la antigua Grecia.', 'Mundo Abierto, Rol, Un jugador', 'PC', 'assassins_creed_odyssey.png'),
(3, 'Assassin\'s Creed Origins', 'Ubisoft Montreal', 'El esplendor y la intriga del antiguo Egipto se desdibujan en una cruenta lucha por el poder. Desvela secretos y mitos ya olvidados en un momento crucial: el origen de la Hermandad de los Assassins. Navega por el Nilo, explora una tierra vasta e impredecible y descubre los misterios de las piramides mientras sobrevives a peligrosas facciones y bestias salvajes.', 'Mundo Abierto, Accion, Rol, Sigilo', 'PC', 'assassins_creed_origins.png'),
(4, 'Atomic Heart', 'Mundfish', 'Ten encuentros explosivos en un delirante y sublime mundo utopico. Adapta tu estilo de combate a cada rival, aprovecha el entorno y mejora el equipamiento para cumplir la mision. El precio de averiguar la verdad tendras que pagarlo con sangre.', 'Terror, FPS, Puzzles, Misterio', 'PC', 'atomic_heart.png'),
(5, 'Day Z', 'Bohemia Interactive', 'Cuanto podras sobrevivir en un mundo posapocaliptico? Es una tierra plagada de zombis infectados donde compites por recursos escasos. ¿Colaboraras con desconocidos y permanecereis juntos? ¿O iras de lobo solitario para evitar traiciones? Esto es DayZ. Esta es tu historia.', 'Supervivencia, Cooperativo, Mundo Abierto', 'PC', 'day_z.png'),
(6, 'Dead Space', 'Electronic Arts', 'Vuelve el clasico de terror y supervivencia de ciencia ficcion, recreado completamente para ofrecer una experiencia mas inmersiva (incluidas mejoras visuales, sonoras y de jugabilidad) al mismo tiempo que se mantiene fiel a la emocionante vision del juego original.', 'Terror, Tercera Persona, Espacio Exterior', 'PC', 'dead_space.png'),
(7, 'Dishonored 2', 'Arkane Studios', 'Dishonored 2 tiene lugar 15 anios despues de la derrota del lord Regente. La temible peste ha pasado a la historia y un usurpador de otro mundo se ha hecho con el trono de la emperatriz Emily Kaldwin. El futuro de las islas pende de un hilo. Asume el papel de Emily o Corvo y repite tu papel de asesino sobrenatural en Dishonored 2.', 'Sigilo, Primera Persona, Accion, Asesinos', 'PC', 'dishonored_2.png'),
(8, 'Fallout 4', 'Bethesda Game Studios', 'Eres el unico superviviente del Refugio 111 en un mundo destruido por la guerra nuclear. Cada segundo es una lucha por la supervivencia, y en tus manos estaran todas las decisiones. Solo tu puedes reconstruir el yermo y decidir su futuro. Bienvenido a casa.', 'Mundo Abierto, Postapocaliptico, Un Jugador, Rol', 'PC', 'fallout_4.png'),
(9, 'Fallout 76', 'Bethesda Game Studios', 'Bethesda Game Studios te da la bienvenida a Fallout 76. Veinticinco anios despues de la caida de las bombas, saldras junto a los demas companeros moradores del refugio a la America posnuclear. Explora un amplio Yermo en este juego multijugador de mundo abierto que completa la historia de Fallout.', 'Mundo Abierto, Rol, Multijugador', 'PC', 'fallout_76.png'),
(10, 'Sea of Thieves', 'Rare Ltd.', 'Sea of Thieves es un exitoso juego de aventuras piratas que ofrece la experiencia pirata por excelencia de saquear tesoros perdidos, batallas intensas, vencer monstruos marinos y mas. Sumergete en esta edicion revisada del juego, que incluye acceso a medios digitales de bonificacion.', 'Multijugador, Aventura, Mundo Abierto, Piratas', 'PC', 'sea_of_thieves.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
