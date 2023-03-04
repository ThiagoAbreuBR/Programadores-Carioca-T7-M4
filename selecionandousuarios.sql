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
-- Banco de dados: `selecionandousuarios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `apelido` varchar(60) NOT NULL,
  `num_cartao` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`cod_cliente`, `nome`, `apelido`, `num_cartao`, `email`, `senha`) VALUES
(1, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(2, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(3, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(4, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(5, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(6, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(7, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(8, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(9, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(10, 'DESATIVADO', 'DESATIVADO', '', 'email@invalido.com.br', 'DESATIVADO'),
(11, 'Thiago', 'ThiagoBR', '0024326549875464', 'thiago@gmail.com', 'thi314'),
(12, 'Fernada', 'FernadaBR', '3444546768788943', 'fernanda@gmail.com', 'fer986'),
(13, 'Lucas', 'LucasBR', '4357567658769786', 'lucas@gmail.com', 'luc755'),
(14, 'Maria', 'MariaBR', '3435435667676452', 'maria@gmail.com', 'mar823'),
(15, 'Danilo', 'DaniloBR', '5553526562446456', 'danilo@gmail.com', 'dan355'),
(16, 'Emerson', 'EmersonBR', '6434345663456653', 'emerson@gmail.com', 'emer774');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
