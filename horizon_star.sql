-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 25-Out-2018 às 14:46
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `senha`) VALUES
(4, 'matheus', '123'),
(5, 'vinicius', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
CREATE TABLE IF NOT EXISTS `cadastro` (
  `idCliente` int(11) NOT NULL,
  `NOME` varchar(60) NOT NULL,
  `ENDERECO` varchar(70) NOT NULL,
  `TELEFONE` varchar(12) NOT NULL,
  `Endereco_idCliente` int(11) NOT NULL,
  `login_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_Cadastro_Endereco1_idx` (`Endereco_idCliente`),
  KEY `fk_Cadastro_login1_idx` (`login_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
CREATE TABLE IF NOT EXISTS `carrinho` (
  `login_idCliente` int(11) NOT NULL,
  `produtos_idprodutos` int(11) NOT NULL,
  `Tamanho` varchar(2) NOT NULL,
  `Quant` int(11) NOT NULL,
  PRIMARY KEY (`login_idCliente`,`produtos_idprodutos`),
  KEY `fk_Carrinho_produtos1_idx` (`produtos_idprodutos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `iduser` int(11) NOT NULL,
  `idprodutos` int(11) NOT NULL,
  `tamanho` varchar(100) NOT NULL,
  `quant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`iduser`, `idprodutos`, `tamanho`, `quant`) VALUES
(2, 3, '0', 3),
(2, 3, '0', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, 'm', 3),
(2, 3, '', 0),
(2, 3, '', 0),
(1, 3, '', 0),
(1, 3, 'pp', 6),
(1, 3, 'pp', 4),
(1, 3, 'pp', 6),
(1, 3, 'g', 6),
(1, 3, 'g', 6),
(1, 3, '', 0),
(0, 3, '', 0),
(1, 3, '', 0),
(1, 3, 'gg', 6),
(1, 4, 'pp', 4),
(1, 4, 'pp', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `idCategorias` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idCategorias`, `NOME`) VALUES
(1, 'Camisetas'),
(2, 'Canecas'),
(3, 'Quadros'),
(4, 'Posters');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `Endereco` varchar(80) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensvenda`
--

DROP TABLE IF EXISTS `itensvenda`;
CREATE TABLE IF NOT EXISTS `itensvenda` (
  `Valor` varchar(45) NOT NULL,
  `Quant` varchar(45) NOT NULL,
  `Data` varchar(45) NOT NULL,
  `Produtos_idProdutos` int(11) NOT NULL,
  PRIMARY KEY (`Produtos_idProdutos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `EMAIL` varchar(45) NOT NULL,
  `SENHA` varchar(45) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `master_admin`
--

DROP TABLE IF EXISTS `master_admin`;
CREATE TABLE IF NOT EXISTS `master_admin` (
  `id` int(100) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `montados`
--

DROP TABLE IF EXISTS `montados`;
CREATE TABLE IF NOT EXISTS `montados` (
  `idMontados` int(11) NOT NULL,
  `idVENDAS` varchar(45) NOT NULL,
  `FOTOS` varchar(45) NOT NULL,
  `Produtos_idProdutos` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idMontados`),
  KEY `fk_Montados_Produtos1_idx` (`Produtos_idProdutos`),
  KEY `fk_Montados_Cliente1_idx` (`Cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `idprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `preco` decimal(5,2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `habilitado` varchar(100) NOT NULL,
  `foto1` varchar(50) DEFAULT NULL,
  `foto2` varchar(50) DEFAULT NULL,
  `foto3` varchar(50) DEFAULT NULL,
  `foto4` varchar(50) DEFAULT NULL,
  `thumb1` varchar(50) DEFAULT NULL,
  `thumb2` varchar(50) DEFAULT NULL,
  `Categorias_idCategorias` int(11) NOT NULL,
  PRIMARY KEY (`idprodutos`),
  KEY `fk_Produtos_Categorias1_idx` (`Categorias_idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `nome`, `preco`, `descricao`, `habilitado`, `foto1`, `foto2`, `foto3`, `foto4`, `thumb1`, `thumb2`, `Categorias_idCategorias`) VALUES
(3, 'Teste', '10.99', 'esta é a descrição deste produto', 'desabilitado', NULL, 'b0b2fc162ae80592ae7c537c850c7d72.jpg', NULL, NULL, '67902bfbb762f0815a47a81a6ef586c7.jpg', NULL, 1),
(4, 'Vinícius Nonato Rodrigues', '10.99', 'esta é a descrição deste produto', 'desabilitado', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 'Camiseta CSGO', '15.99', 'ESSA É A CAMISETA CSGO', 'habilitado', '8557f24ea23ffc9c0a56ae8f37645d84.jpg', 'd0db301e32fd1d4216477f5ae57c43b9.jpg', '39ccd5d9412d55dac1c6b231829f5086.jpg', 'e05e34df2f402620fb15d4ad918bf54f.jpg', '481fdcb663f055fc3aa3abb57d78b4c4.jpg', 'd8a4935950048c82d664af285a4ca8fe.jpg', 1),
(6, 'Camiseta Rick & Morty', '15.99', 'ESSA É A CAMISETA rick & morty', 'habilitado', '74a332b992b607dade152c0d8d2d9093.jpg', '06db4498266689acd91737a665989ac6.jpg', 'a0b5a2fa186e86cce2791c6782a1a22b.jpg', '570a8c85d33918ea4e9442efed1092d8.jpg', '4e0f064d67ee2abb0148dbbc4d7fc722.jpg', 'fa9f43d7a1076f4b26eca560e11f2b14.jpg', 1),
(7, 'Camiseta Capitão América', '15.99', 'ESSA É A CAMISETA CAPITÃO AMERICA', 'habilitado', '0ffeeea42afb06dd40d0a380e5f85053.jpg', '62530f6335ca8a354623fe5bef96c839.jpg', '7f72c730cab0eff86a287177555d58d2.jpg', '2694292343556e478d9ee3bcafe8ef12.jpg', 'e95d795df659d70a3d3f61a5af839c02.jpg', '3f5bf5767dbdd02aa5b6a9a089d564b8.jpg', 1),
(8, 'Camiseta X1 Lixo', '15.99', 'ESSA É A CAMISETA YaSUO', 'habilitado', '91d8c3702bfdb5186232f9b90dc87993.jpg', 'bfaf175546a5fe2e52db111c981c694f.jpg', '0a86f68201a6b289ef860e6d72ccabb7.jpg', 'ac99954b881e32296060dc2a7908636c.jpg', '33736ac649d64993188fae25051f1d17.jpg', 'fe9390e8fa86d1f9204a8379410a8d2d.jpg', 1),
(9, 'Camiseta STORMTROOPERS', '15.99', 'ESSA É A CAMISETA STORMTROOPERS', 'habilitado', '750c22a368f1bb085e50fcc832e354ad.png', '927d2c6ff0b1d8e223833362326376ce.png', 'f25cf695b2413365a468f7ebe26a869c.png', 'ab77328aeb45577158e1915dbc20bbcd.png', '1126fd2aec98d12e1dac7f579155505a.png', '42257029e39c1e5c75c4cb7bde3c4f0e.png', 1),
(10, 'Camiseta BATMAN', '16.99', 'ESSA É A CAMISETA BATMAN', 'habilitado', 'be1b8f905d72ea886b83b6c8d645a464.png', 'a19d43bf782a5dd8d0f70ed033c640e1.png', 'c0e205deb69909c62c56681182aa21c9.png', 'f6df38cf4469f49134fc420b74dab546.png', '9da1a0330781d8b1a2c18924168f76d6.png', 'e5c509076692339665ab18d1dce81f71.png', 1),
(11, 'Caneca Horizon Star', '25.99', 'ESSA É A CANECA HZ', 'habilitado', 'ec4753a5e3bf6f01b6d8dc5bb492eb6a.jpg', 'f537d880c6b4a935944c3e68da694dc9.jpg', '433c643debab1b4e7af411ef7db71d6a.jpg', '5ced0e3f21b749cfc97de5f1b632531d.jpg', 'cc6fb7d83aa0d98f95e79ff53c0d0905.jpg', '8578e4abb07308943a6a13b506a851ca.jpg', 2),
(12, 'Caneca GUCCI', '25.99', 'ESSA É A CANECA GUCCI', 'habilitado', 'd85d0e99b2c51ff4038685968e729073.jpg', '090fec766d5359959b5f6dd842304396.jpg', '0d91a73e3bc4388d60c07e3a9b47abfe.jpg', 'ae94161e627182d23846bdf649729600.jpg', '32c917e29eb5f9d94f2c2bd9176cb534.jpg', '31eb40717108a520bab1113e9bac177a.jpg', 2),
(13, 'Caneca MAPA DO MAROTO', '25.99', 'ESSA É A CANECA MAPA DO MAROTO', 'habilitado', '2de0a8908eb29e825025ea08bca21ae8.jpg', '848a6da49b4aa2282fe865d6f1895ec6.jpg', 'd82e615ed17b4df27730f4bf333a710d.jpg', '82dbc88b0cc18fa973785a020acd970f.jpg', '792f442530f07c4fdfb5ea6ec5cb523e.jpg', '529e9adefb07bef1e2d9a4e8dc01263b.jpg', 2),
(14, 'Caneca Caiao', '25.99', 'ESSA É A CANECA CAIAO', 'habilitado', '473c5797a538efe1a4e22a68606e2b51.jpg', '381b3e4781b4989df0cec0850045fd51.jpg', '38fbff6be0e81c4ae79d9ecc5b95add7.jpg', 'fb00c1b594b73b5abc2c0a0bf1b86ea1.jpg', 'd2c6e226108a95f98d540944e4d7a2e1.jpg', 'caa75e76d34c194effcd8aa3b57e2e37.jpg', 2),
(15, 'Caneca Horizon Star 2', '25.99', 'ESSA É A CANECA HZ2', 'habilitado', '45f1956df61478cc9fac0e21ee3a8f3c.jpg', '9898eae7b99248fbc9378e8d6e2ec0b1.jpg', '83c457993f10fb12042ba286d285692e.jpg', '550765ab0cd300a6093b160000fb30eb.jpg', '20d0c5884e0c0f74d8fa75ecbc8b8862.jpg', 'e837509b1d9f46d506a331019ed30b43.jpg', 2),
(16, 'Caneca Horizon Star 3', '25.99', 'ESSA É A CANECA HZ3', 'habilitado', '69ddd662343a9e0cf67b0e13c2f65036.jpg', '132ce92ea8a2860d0be899df1cbe24d1.jpg', '81bf043ec6ffdee6e4bc699fbd3c8aed.jpg', '743baa8449df749be54a5b16efb8db55.jpg', '431be05df9d52f4c3083bc293e481948.jpg', '8a095e80243ba717431ea13a6c3e883e.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idcliente` int(100) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idcliente`, `usuario`, `email`, `senha`) VALUES
(1, 'teste 2', 'teste@gmail.coms', '123123'),
(2, 'teste 2', 'teste@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `idVendas` int(11) NOT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `valor_venda` decimal(3,2) NOT NULL,
  PRIMARY KEY (`idVendas`),
  KEY `fk_Vendas_Cliente1_idx` (`Cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `fk_Cadastro_Endereco1` FOREIGN KEY (`Endereco_idCliente`) REFERENCES `endereco` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cadastro_login1` FOREIGN KEY (`login_idCliente`) REFERENCES `login` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `fk_Carrinho_login1` FOREIGN KEY (`login_idCliente`) REFERENCES `login` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Carrinho_produtos1` FOREIGN KEY (`produtos_idprodutos`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itensvenda`
--
ALTER TABLE `itensvenda`
  ADD CONSTRAINT `fk_ItensVenda_Produtos1` FOREIGN KEY (`Produtos_idProdutos`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `montados`
--
ALTER TABLE `montados`
  ADD CONSTRAINT `fk_Montados_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cadastro` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Montados_Produtos1` FOREIGN KEY (`Produtos_idProdutos`) REFERENCES `produtos` (`idprodutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_Produtos_Categorias1` FOREIGN KEY (`Categorias_idCategorias`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_Vendas_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cadastro` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
