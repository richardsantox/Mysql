-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 18:53
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
(5, 'STF concede prisão domiciliar a pais de menores de 12 anos', 'Por unanimidade, a Segunda Turma do STF (Supremo Tribunal Federal) atendeu, em julgamento por videoconferência nesta terça-feira (20), um habeas corpus coletivo apresentado pela Defensoria Pública da União (DPU) para conceder prisão domiciliar a todos os presos provisórios que têm sob sua única responsabilidade a tutela de pessoas com deficiência e crianças menores de 12 anos de idade.', 3, 3, 21, 2020, 10),
(7, 'Cinema Drive-In, a Nova Opção de Entretenimento do Casino Buenos Aires', 'Enquanto aguarda a permissão das autoridades responsáveis para reabrir com os protocolos de segurança para o público, o Casino Buenos Aires está disponibilizando uma nova opção de diversão. \r\n\r\n“Este ano nos levou a nos reinventar e buscar novas propostas, por isso o Casino Buenos Aires inaugura seu drive-in teatro no estacionamento”, assim a empresa apresentou a sua mais nova atração.\r\n\r\nO novo programa oferecido pelo estabelecimento cumpre todas as medidas sanitárias determinadas pela Prefeitura de Buenos Aires para a entrada dos carros, a permanência na propriedade e a saída.\r\n\r\nA experiência completa inclui uma programação de filmes com uma grande variedade de gêneros. Do carro, o público pode assistir ao seu filme favorito em uma tela de alta definição e ouvir o áudio em uma rádio FM. Os fones de ouvido exclusivos podem ser usados para uma experiência premium.', 7, 2, 21, 2020, 10),
(8, 'Ministério da Saúde se desmente e nega compra de vacina\r\n', 'O Ministério da Saúde negou nesta quarta-feira (21) que tenha fechado um acordo com o governo de São Paulo para comprar 46 milhões de doses da vacina Coronavac, desenvolvida pelo laboratório chinês Sinovac e que será produzida no Brasil pelo Instituto Butantan.', 3, 4, 21, 2020, 10),
(9, 'Coronavac: Secretaria de Saúde e Instituto Butantan dizem ter recebido com ‘surpresa e indignação’ recuo do Ministério da Saúde', 'Nesta quarta-feira, 21, o presidente Jair Bolsonaro (sem partido) vetou a decisão do Ministério da Saúde ao afirmar que o Brasil não vai comprar a Coronavac, a vacina contra a Covid-19 produzida pelo laboratório chinês Sinovac em parceria com o Instituto Butantan. Além dele, o secretário-executivo do Ministério da Saúde, Élcio Franco, reforçou que “não há intenção de compra de vacinas chinesas.” As declarações ocorreram após o ministro da Saúde, Eduardo Pazuello, anunciar nesta terça, em reunião com governadores, uma negociação com o Instituto Butantan para firmar o compromisso de aquisição dos imunizantes que serão fabricados até o fim de janeiro.', 3, 4, 20, 2020, 10),
(10, 'Ramírez explica o não ao Palmeiras: \"Tenho de pisar em solos firmes\"', 'Miguel Ángel Ramírez falou depois da vitória sobre o Barcelona (EQU), pela Copa Libertadores, por que não quis deixar o Independiente Del Valle (EQU) imediatamente para assumir o Palmeiras. Segundo o treinador espanhol de 35 anos de idade, este é um momento na carreira em que precisa \"medir bem seus passos\".... - Veja mais em https://www.uol.com.br/esporte/futebol/ultimas-noticias/2020/10/22/ramirez-explica-o-nao-ao-palmeiras-tenho-de-pisar-em-solos-firmes.htm?cmpid=copiaecola', 7, 1, 21, 2020, 10),
(11, 'Atuações do Corinthians: Gustavo Mantuan e Everaldo têm noite decisiva contra o Vasco', 'Meia marca o primeiro gol como profissional, e atacante decide mais uma vez.\r\nGustavo Mantuan: fez gol de categoria e técnica após assistência de Cazares. Participativo, iniciou boas jogadas de ataque e sofreu um suposto pênalti de Miranda que o VAR não deu. Recebeu bola em impedimento em lance que deu gol para Ramiro marcar, em lance anulado. Saiu com o time vencendo por 1 a 0. Nota: 7,5', 1, 1, 21, 2020, 10),
(12, 'Turismo náutico cresce no Brasil e no mundo durante a pandemia', 'Com distanciamento social e contato com a natureza, alugar barcos e lanchas atrai viajantes que buscam alternativa às aglomerações das praias.\r\nSeguindo a mesma tendência das viagens de motorhome, o turismo náutico vive um boom nos tempos de pandemia. Em busca de alternativas seguras, isoladas e não muito distantes de casa, viajantes encontraram nas embarcações uma opção viável e longe de aglomerações para conseguir sair e respirar novos ares sem se expor ao novo coronavírus – e melhor: sem precisar ser dono ou conhecer alguém que tenha uma lancha, barco ou similar para embarcar nessa nova tendência.', 5, 5, 20, 2020, 10),
(13, 'Chuvas ajudam a reduzir em 80% focos de incêndio no Pantanal do Mato Grosso do Sul', 'A chuva dos últimos dias está permitindo o controle das piores queimadas no Pantanal em mais de 20 anos. No Mato Grosso do Sul, já há uma redução de 80% nos focos de incêndio. A previsão é de mais chuva no Pantanal ao longo desta semana. Um alívio na região que enfrentou este ano a pior estiagem em cinco décadas. Para evitar queimadas como estas nas próximas estações secas, o Instituto de Meio de Ambiente do Mato Grosso do Sul estuda a criação de uma brigada fixa e permanente.', 1, 11, 21, 2020, 10);

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
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
