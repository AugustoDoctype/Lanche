-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Set-2024 às 15:51
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lanchonete`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`ID`, `Nome`) VALUES
(1, 'Lanches'),
(2, 'Bebidas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lanche`
--

CREATE TABLE `lanche` (
  `id_lanche` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` text DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `CategoriaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lanche`
--

INSERT INTO `lanche` (`id_lanche`, `nome`, `preco`, `descricao`, `imagem`, `CategoriaID`) VALUES
(1, 'Pizza muito top', '29.00', 'Uma pizza muito top', 'https://www.bing.com/images/search?view=detailV2&ccid=9kyhvpRl&id=7A5E4591C39AF3C6108B09BF0184C04C76A44A26&thid=OIP.9kyhvpRlMSr4_w5Dx09ALQHaFj&mediaurl=https%3a%2f%2fwww.pizzarecipe.org%2fwp-content%2fuploads%2f2019%2f01%2fNew-York-Style-Pizza.jpg&cdnurl=', 1),
(2, 'Refri top 250ML', '2.00', 'Refri muito top', 'https://www.bing.com/images/search?view=detailV2&ccid=ZL8BcBZ0&id=BC9DDE44DE4F249CA685F506EE95FC673999F30A&thid=OIP.ZL8BcBZ0T3IC75cKZaQf3wHaHa&mediaurl=https%3a%2f%2floja.supermerclick.com.br%2fimage%2fcache%2fcatalog%2fprodutos-integracao%2f003882-omie__', 2),
(9, 'Cachaça de Palmeirense', '20.00', 'Pra aquele que deseja ganhar um mundial', 'https://www.bing.com/images/search?view=detailV2&ccid=xD9SktKT&id=6B782D4CEF3F86794F281421A409CBE47FE57CAC&thid=OIP.xD9SktKTomPbb3TUtYRFXwHaHa&mediaurl=https%3a%2f%2fcdn.awsli.com.br%2f800x800%2f1718%2f1718534%2fproduto%2f172158822%2fac31307456.jpg&cdnurl', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pratos`
--

CREATE TABLE `pratos` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Descrição` text DEFAULT NULL,
  `Preço` decimal(10,2) NOT NULL,
  `CategoriaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `lanche`
--
ALTER TABLE `lanche`
  ADD PRIMARY KEY (`id_lanche`),
  ADD KEY `CategoriaID` (`CategoriaID`);

--
-- Índices para tabela `pratos`
--
ALTER TABLE `pratos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoriaID` (`CategoriaID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lanche`
--
ALTER TABLE `lanche`
  MODIFY `id_lanche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pratos`
--
ALTER TABLE `pratos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `lanche`
--
ALTER TABLE `lanche`
  ADD CONSTRAINT `lanche_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categoria` (`ID`);

--
-- Limitadores para a tabela `pratos`
--
ALTER TABLE `pratos`
  ADD CONSTRAINT `pratos_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categoria` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
