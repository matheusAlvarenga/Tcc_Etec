-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Ago-2018 às 02:30
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horizon_star`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `senha`) VALUES
(0, 'vinicius', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `master_admin`
--

CREATE TABLE `master_admin` (
  `id` int(100) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `master_admin`
--

INSERT INTO `master_admin` (`id`, `admin`, `senha`) VALUES
(1, 'Horizon_Star_Master', '2444666668888888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idprodutos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `habilitado` varchar(100) NOT NULL,
  `fotos` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `nome`, `preco`, `descricao`, `habilitado`, `fotos`) VALUES
(2, '', '0.00', '', 'habilitado', ''),
(3, 'Teste', '10.99', 'descriccao', '', ''),
(4, 'Teste', '10.99', 'descriccao', '', ''),
(5, 'Teste', '11.00', 'descricao de um produto', 'habilitado', ''),
(6, 'Teste 123', '10.99', 'descriccao', 'desabilitado', ''),
(7, 'Teste 123', '10.99', 'descriccao', '', ''),
(8, 'Teste 123', '10.99', 'descriccao', '', ''),
(9, 'foto', '10.99', 'descriccao', '', ''),
(10, 'foto', '10.99', 'descriccao', '', ''),
(11, 'Teste', '10.99', 'descriccao', '', ''),
(12, 'Teste', '10.99', 'descriccao', '', ''),
(13, 'Teste', '10.99', 'descriccao', '', ''),
(14, 'Teste', '10.99', 'descriccao', '', ''),
(15, 'Teste', '10.99', 'descriccao', '', ''),
(16, 'Teste', '10.99', 'descriccao', '', ''),
(17, 'Teste', '10.99', 'descriccao', '', ''),
(18, 'Teste 123', '10.99', 'descriccao', '', ''),
(19, 'ds', '10.99', 'dasd', 'habilitado', NULL),
(20, 'ds', '10.99', 'dasd', 'habilitado', NULL),
(21, 'ds', '10.99', 'dasd', 'habilitado', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `senha`) VALUES
(2, 'Vinícius', 'vinicius@gmail.com', 'teste1'),
(3, 'teste 2', 'teste@gmail.coms', 'dsadas'),
(4, 'teste 2', 'teste@gmail.coms', 'dsadas'),
(5, 'teste 2', 'teste@gmail.coms', 'dsadas'),
(6, 'teste 2', 'teste@gmail.coms', 'dsa'),
(7, 'teste 2', '', 'dsadas'),
(8, 'teste 3', 'teste3@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodutos`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idprodutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
