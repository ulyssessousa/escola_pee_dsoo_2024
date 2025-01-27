-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: escola_pee_dsoo
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `idaluno` int NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `datanascimento` date NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idaluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `codigodepartamento` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `sigla` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`codigodepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Departamento de Computação','DCOMP'),(2,'Departamento de Letras','DAL');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diasemana`
--

DROP TABLE IF EXISTS `diasemana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diasemana` (
  `iddiasemana` int NOT NULL AUTO_INCREMENT,
  `dia` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`iddiasemana`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diasemana`
--

LOCK TABLES `diasemana` WRITE;
/*!40000 ALTER TABLE `diasemana` DISABLE KEYS */;
INSERT INTO `diasemana` VALUES (1,'Segunda-feira'),(2,'Terça-feira'),(3,'Quarta-feira'),(4,'Quinta-feira'),(5,'Sexta-feira'),(6,'Sábado');
/*!40000 ALTER TABLE `diasemana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `codigodisciplina` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `creditos` int NOT NULL,
  PRIMARY KEY (`codigodisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Introdução à Programação',80),(2,'Língua Portuguesa I',80),(3,'Programação Orientada a Objetos',80);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `idhorario` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,'7:15 - 8:05'),(2,'8:05 - 8:55'),(3,'8:55 - 9:45'),(4,'9:45 - 10:35'),(5,'10:50 - 11:40'),(6,'11:40 - 12:30'),(7,'13:10  14:00'),(8,'14:00 - 14:50'),(9,'14:50 - 15:40'),(10,'15:40 - 16:30'),(11,'16:45 - 17:35'),(12,'17:35 - 18:25');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariosdisponiveis`
--

DROP TABLE IF EXISTS `horariosdisponiveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horariosdisponiveis` (
  `idhorario` int NOT NULL,
  `iddiasemana` int NOT NULL,
  PRIMARY KEY (`idhorario`,`iddiasemana`),
  KEY `FK_horario_idx` (`idhorario`),
  KEY `FK_diasemana_idx` (`iddiasemana`),
  CONSTRAINT `FK_diasemana` FOREIGN KEY (`iddiasemana`) REFERENCES `diasemana` (`iddiasemana`),
  CONSTRAINT `FK_horario` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariosdisponiveis`
--

LOCK TABLES `horariosdisponiveis` WRITE;
/*!40000 ALTER TABLE `horariosdisponiveis` DISABLE KEYS */;
INSERT INTO `horariosdisponiveis` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6);
/*!40000 ALTER TABLE `horariosdisponiveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarioturma`
--

DROP TABLE IF EXISTS `horarioturma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarioturma` (
  `codigoturma` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `iddiasemana` int NOT NULL,
  `idhorario` int NOT NULL,
  PRIMARY KEY (`codigoturma`,`iddiasemana`,`idhorario`),
  KEY `FK_horariosdisponiveis_idx` (`iddiasemana`,`idhorario`),
  CONSTRAINT `FK_horariosdisponiveis` FOREIGN KEY (`iddiasemana`, `idhorario`) REFERENCES `horariosdisponiveis` (`iddiasemana`, `idhorario`),
  CONSTRAINT `FK_turma` FOREIGN KEY (`codigoturma`) REFERENCES `turma` (`codigoturma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarioturma`
--

LOCK TABLES `horarioturma` WRITE;
/*!40000 ALTER TABLE `horarioturma` DISABLE KEYS */;
/*!40000 ALTER TABLE `horarioturma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `idprofessor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `codigodepartamento` int NOT NULL,
  PRIMARY KEY (`idprofessor`),
  KEY `PK_DEP_idx` (`codigodepartamento`),
  CONSTRAINT `PK_DEP` FOREIGN KEY (`codigodepartamento`) REFERENCES `departamento` (`codigodepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `codigoturma` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `descricao` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `anosemestre` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `codigodisciplina` int NOT NULL,
  `idprofessor` int NOT NULL,
  PRIMARY KEY (`codigoturma`),
  KEY `FK_disciplina_idx` (`codigodisciplina`),
  KEY `FK_professor_idx` (`idprofessor`),
  CONSTRAINT `FK_disciplina` FOREIGN KEY (`codigodisciplina`) REFERENCES `disciplina` (`codigodisciplina`),
  CONSTRAINT `FK_professor` FOREIGN KEY (`idprofessor`) REFERENCES `professor` (`idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmaalunos`
--

DROP TABLE IF EXISTS `turmaalunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turmaalunos` (
  `codigoturma` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `idaluno` int NOT NULL,
  PRIMARY KEY (`codigoturma`,`idaluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmaalunos`
--

LOCK TABLES `turmaalunos` WRITE;
/*!40000 ALTER TABLE `turmaalunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `turmaalunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-27 14:17:16
