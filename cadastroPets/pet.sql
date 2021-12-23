-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Dez-2021 às 19:18
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `idPet` int(11) NOT NULL AUTO_INCREMENT,
  `nomePet` varchar(60) NOT NULL,
  `dataNascPet` date NOT NULL,
  `tipo` varchar(60) NOT NULL,
  `sexo` varchar(60) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `idProp` int(11) NOT NULL,
  PRIMARY KEY (`idPet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE IF NOT EXISTS `proprietario` (
  `idProprietario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProprietario` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `dataNascProp` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `idPet` int(11) NOT NULL,
  PRIMARY KEY (`idProprietario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
