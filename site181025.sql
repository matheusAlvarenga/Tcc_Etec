-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 25-Out-2018 às 17:23
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
(1, 4, 'pp', 4),
(3, 5, '', 1),
(3, 5, '', 4),
(3, 5, '', 4),
(3, 5, '', 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

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
(16, 'Caneca Horizon Star 3', '25.99', 'ESSA É A CANECA HZ3', 'habilitado', '69ddd662343a9e0cf67b0e13c2f65036.jpg', '132ce92ea8a2860d0be899df1cbe24d1.jpg', '81bf043ec6ffdee6e4bc699fbd3c8aed.jpg', '743baa8449df749be54a5b16efb8db55.jpg', '431be05df9d52f4c3083bc293e481948.jpg', '8a095e80243ba717431ea13a6c3e883e.jpg', 2),
(17, 'Quadro CSGO Armas', '89.98', 'ESSE É UM QUADRO CSGO ARMAS', 'habilitado', 'ea9ee4664dc59c7078338a875f5f79e6.jpg', '717647dc21df4aad4b547d67dfb32469.jpg', '8ebca6b5cc1c7f5cac48c9e816d75cb6.jpg', 'c33e2f1c31cbb6a511eb5b24ae35df0e.jpg', 'cf25569f14e33122c48b4da27a985cfe.jpg', 'b6b93d1d461bdf1180924518203a34af.jpg', 3),
(18, 'Quadro CSGO Maibear', '89.98', 'ESSE É UM QUADRO CSG MAIBEAR', 'habilitado', 'eb589641df94bc56bc004476df80d092.jpg', '48cd31bf65125f5a36e1d4f4ab2877aa.jpg', 'b28f983c5c3768746b9c5e65f24f9ae2.jpg', '19562625dcd06ffe809a2353271cb8e4.jpg', '4dd91a95aee6a9b3e118a284a340026c.jpg', '6eb0ab44cb27227cf9f0c805c53e9bc5.jpg', 3),
(19, 'Quadro CSGO KEEP CALM', '89.98', 'ESSE É UM QUADRO CSGO KEEP CALM', 'habilitado', NULL, '2bfeb627f035face51d7848742e645fe.jpg', NULL, '8610f0d01be9954468b7e621279d8312.jpg', 'de7123ca629cad3c4d523cf62e37bf8e.jpg', '2331f314cad0f79618db2c40e6931682.jpg', 3),
(20, 'Quadro CSGO KEEP CALM 2', '89.98', 'ESSE É UM QUADRO CSGO KEEP CALM 2', 'habilitado', '7fc4cb19f45149a99d185a24ddab682b.jpg', '563256433d80fbf55407291c84faba4f.jpg', '18ca5109d546ee3ea623a785747cc841.jpg', '77fca9a5e49cd5c2c326570863cfdd9d.jpg', 'd73fdd0456842ef50bd847274f942a05.jpg', '30114b740e93db9fa542cae7c74a6032.jpg', 3),
(21, 'Quadro CSGO Maibear', '89.98', 'ESSE É UM QUADRO CSG MAIBEAR', 'habilitado', 'eb589641df94bc56bc004476df80d092.jpg', '48cd31bf65125f5a36e1d4f4ab2877aa.jpg', 'b28f983c5c3768746b9c5e65f24f9ae2.jpg', '19562625dcd06ffe809a2353271cb8e4.jpg', '4dd91a95aee6a9b3e118a284a340026c.jpg', '6eb0ab44cb27227cf9f0c805c53e9bc5.jpg', 3),
(22, 'Quadro CSGO Armas', '89.98', 'ESSE É UM QUADRO CSGO ARMAS', 'habilitado', 'ea9ee4664dc59c7078338a875f5f79e6.jpg', '717647dc21df4aad4b547d67dfb32469.jpg', '8ebca6b5cc1c7f5cac48c9e816d75cb6.jpg', 'c33e2f1c31cbb6a511eb5b24ae35df0e.jpg', 'cf25569f14e33122c48b4da27a985cfe.jpg', 'b6b93d1d461bdf1180924518203a34af.jpg', 3),
(23, 'Poster CSGO Maibear', '789.99', 'ESSE É UM POSTER CSGO MAIBEAR', 'habilitado', '982f6322cfcd47b5c8b81b2d991fd382.jpg', '26adfc131a92907cc763fe94a0afda2f.jpg', '744a8a3d2bbe5c0967fbf19ed9dbbb75.jpg', '53b7cd9c409cc0ee12f504cb51bf276f.jpg', 'e15f62b1ec395c4935ed84d10d4e9dae.jpg', 'a5d4d3b34242e0d9571a31d44adf90d7.jpg', 4),
(24, 'Poster CSGO CT', '789.99', 'ESSE É UM POSTER CSGO CT', 'habilitado', '9cf5e2fc9877dbe3f8c2d9e798619219.jpg', 'fa75915c182d8a101cacf14a6b5506bc.jpg', 'aa471d0cf8fb26fd705eeded5c5eeb44.jpg', '633e9954001d839ce4b1fb6c194adc39.jpg', 'f2806bd5842c93e70237416b388a2f88.jpg', 'edbb2575f85edb28d125512afc6865d0.jpg', 4),
(25, 'Poster CSGO TR', '789.99', 'ESSE É UM POSTER CSGO TR', 'habilitado', 'dfb0f21aa3f8f6439c53a8e0f46bd09c.jpg', '3d1e9a20a269b8cd0d8a3dd02708629f.jpg', '60141d57e93c2262a56dc20149379400.jpg', 'd81d3841f31ddf73738aef3cbbe2ce44.jpg', '38ddf266a950ef13a9ab969af64e0b69.jpg', '4d9e3e551d9ab6a32d8cdd03bcdc78d8.jpg', 4),
(26, 'Poster CSGO Maibear 2', '789.99', 'ESSE É UM POSTER CSGO MAIBEAR', 'habilitado', 'be3dd23f8ad5c0283585869d712903ee.jpg', '1af81cb9e6ed39e116995afbf827b5b1.jpg', '2b8a8de510d9f682bc17f5917dd576a8.jpg', '5f47084e768fdcd51822207cc03b49a1.jpg', '628eb5c4d0989c1175048fec04387374.jpg', '9cb2b7a49cea5cfecb0dec3318bb9153.jpg', 4),
(27, 'Poster CSGO CT 2', '789.99', 'ESSE É UM POSTER CSGO CT 2', 'habilitado', '9e9bf4f4c133858ec4f3ebf97f94d224.jpg', '88bc7981ef736ee1f77338ad0399a205.jpg', '525b32fb9eb1ae7de709235954b8b1b2.jpg', '50dabf2ac8c3c77355615437decbf3c5.jpg', 'f724c2728681ad2f3f60f233ccb93ecc.jpg', 'a629ee383898cf97e37351c8c563c949.jpg', 4),
(28, 'Poster CSGO TR 2', '789.99', 'ESSE É UM POSTER CSGO TR 2', 'habilitado', '36fc6d755ee397acf573fcbc718f7782.jpg', 'b0a411a264d1e6d83b81cb8f2e7fd6f5.jpg', '76e5468e14fa53f10aa8b1fc5d0b3e16.jpg', '7d31c7bcd36e07f6fe34b906c559924f.jpg', 'db7e7c907c51d86737236be0d0e776e1.jpg', '68ac3a22038bcef7fe6bad5229f7c936.jpg', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idcliente`, `usuario`, `email`, `senha`) VALUES
(1, 'teste 2', 'teste@gmail.coms', '123123'),
(2, 'teste 2', 'teste@gmail.com', '123'),
(3, 'matheus', 'gop@gmail.com', '123');

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
