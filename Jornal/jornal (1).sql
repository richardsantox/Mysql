-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 01:55
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `Ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`Ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entreterimento'),
(3, 'Politica'),
(4, 'Saúde'),
(5, 'viagem'),
(11, 'MeioAmbiente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `Dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`Dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `Mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`Mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `Dia`, `Ano`, `Mes`) VALUES
(1, 'Marília Mendonça diz que término de famosos não é entretenimento', 'A cantora Marília Mendonça, 25, fez um desabafo em suas redes sociais na tarde desta terça-feira (20) sobre os boatos e especulações que têm surgido em torno do término de relacionamentos de alguns famosos. Ela, que rompeu recentemente com Murilo Huff, 25, afirmou que a vida dos artistas não é uma novela.', 5, 2, 21, 2020, 10),
(2, 'Fazendas de camarão colocam em risco manguezais da Amazônia e meio ambiente', 'Muito provavelmente você não lembra de nenhuma praia paradisíaca entre o litoral do Pará e o do Maranhão. Não se culpe: os 670 quilômetros de costa entre os dois Estados formam o maior cinturão contínuo de manguezais do mundo. Esse ecossistema pode não ter tanto apelo turístico, mas é fundamental para o meio ambiente marinho e terrestre do mundo, assim como para a cultura e o sustento das populações locais.', 1, 11, 21, 2020, 10),
(5, 'STF concede prisão domiciliar a pais de menores de 12 anos', 'Por unanimidade, a Segunda Turma do STF (Supremo Tribunal Federal) atendeu, em julgamento por videoconferência nesta terça-feira (20), um habeas corpus coletivo apresentado pela Defensoria Pública da União (DPU) para conceder prisão domiciliar a todos os presos provisórios que têm sob sua única responsabilidade a tutela de pessoas com deficiência e crianças menores de 12 anos de idade.', 3, 3, 21, 2020, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `telefone`, `cidade`, `ddd`, `codTurma`, `Dia`, `Mes`, `Ano`) VALUES
(1, 'Richard', 'Pereira', 'pereira@email.com', '99564-4528', 'Rio Grande da Serra', 11, 2, 8, 4, 2003),
(3, 'Priscila ', 'Souza', 'souza@email.com', '99741-8210', 'Ribeirão Pires', 11, 6, 18, 11, 1995),
(5, 'Karina', 'Buarque', 'buarque@email.com', '95645-2321', 'Mauá', 11, 1, 13, 6, 2004),
(7, 'João', 'Xavier', 'xavier@email.com', '93841-5478', 'mauá', 11, 5, 14, 9, 2002);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`Ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`Dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`Mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Ano` (`Ano`),
  ADD KEY `Mes` (`Mes`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Mes` (`Mes`),
  ADD KEY `Ano` (`Ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
