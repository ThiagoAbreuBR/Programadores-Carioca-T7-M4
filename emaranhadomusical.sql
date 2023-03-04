-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Mar-2023 às 15:06
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `emaranhadomusical`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nome` varchar(75) NOT NULL,
  `id_artista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `album`
--

INSERT INTO `album` (`id_album`, `nome`, `id_artista`) VALUES
(1, 'A Night at the Opera', 1),
(2, 'Point of Know Return', 2),
(3, 'Crazy World', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `artista`
--

CREATE TABLE `artista` (
  `id_artista` int(11) NOT NULL,
  `nome` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `artista`
--

INSERT INTO `artista` (`id_artista`, `nome`) VALUES
(1, 'Queen'),
(2, 'Kansas'),
(3, 'Scorpions');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id_musica` int(11) NOT NULL,
  `nome` varchar(75) NOT NULL,
  `duracao` int(11) NOT NULL,
  `id_album` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`id_musica`, `nome`, `duracao`, `id_album`) VALUES
(1, 'Bohemian Rhapsody', 5, 1),
(2, 'Dust in the Wind', 3, 2),
(3, 'Wind of Change', 5, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `pertence` (`id_artista`);

--
-- Índices para tabela `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id_artista`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id_musica`),
  ADD KEY `pertencem` (`id_album`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `artista`
--
ALTER TABLE `artista`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `pertence` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`);

--
-- Limitadores para a tabela `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `pertencem` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
