-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_educativa
-- ------------------------------------------------------
-- Server version	8.0.32
create schema bd_educativa;
use bd_educativa;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `carnet_alumno` varchar(15) NOT NULL,
  `nombre_alumno` varchar(45) DEFAULT NULL,
  `direccion_alumno` varchar(45) DEFAULT NULL,
  `telefono_alumno` varchar(45) DEFAULT NULL,
  `email_alumno` varchar(20) DEFAULT NULL,
  `estatus_alumno` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`carnet_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacioncursosalumnos`
--

DROP TABLE IF EXISTS `asignacioncursosalumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacioncursosalumnos` (
  `codigo_carrera` varchar(5) NOT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL,
  `carnet_alumno` varchar(15) NOT NULL,
  `nota_asignacioncursoalumnos` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_carrera`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`,`carnet_alumno`),
  KEY `codigo_sede` (`codigo_sede`),
  KEY `codigo_jornada` (`codigo_jornada`),
  KEY `codigo_seccion` (`codigo_seccion`),
  KEY `codigo_aula` (`codigo_aula`),
  KEY `codigo_curso` (`codigo_curso`),
  KEY `carnet_alumno` (`carnet_alumno`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`codigo_sede`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  CONSTRAINT `asignacioncursosalumnos_ibfk_7` FOREIGN KEY (`carnet_alumno`) REFERENCES `alumnos` (`carnet_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacioncursosalumnos`
--

LOCK TABLES `asignacioncursosalumnos` WRITE;
/*!40000 ALTER TABLE `asignacioncursosalumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacioncursosalumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacioncursosmastros`
--

DROP TABLE IF EXISTS `asignacioncursosmastros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacioncursosmastros` (
  `codigo_carrera` varchar(5) NOT NULL,
  `codigo_sede` varchar(5) NOT NULL,
  `codigo_jornada` varchar(5) NOT NULL,
  `codigo_seccion` varchar(5) NOT NULL,
  `codigo_aula` varchar(5) NOT NULL,
  `codigo_curso` varchar(5) NOT NULL,
  `codigo_maestro` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`codigo_carrera`,`codigo_sede`,`codigo_jornada`,`codigo_seccion`,`codigo_aula`,`codigo_curso`),
  KEY `codigo_sede` (`codigo_sede`),
  KEY `codigo_jornada` (`codigo_jornada`),
  KEY `codigo_seccion` (`codigo_seccion`),
  KEY `codigo_aula` (`codigo_aula`),
  KEY `codigo_curso` (`codigo_curso`),
  KEY `codigo_maestro` (`codigo_maestro`),
  CONSTRAINT `asignacioncursosmastros_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`codigo_carrera`),
  CONSTRAINT `asignacioncursosmastros_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`codigo_sede`),
  CONSTRAINT `asignacioncursosmastros_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`codigo_jornada`),
  CONSTRAINT `asignacioncursosmastros_ibfk_4` FOREIGN KEY (`codigo_seccion`) REFERENCES `secciones` (`codigo_seccion`),
  CONSTRAINT `asignacioncursosmastros_ibfk_5` FOREIGN KEY (`codigo_aula`) REFERENCES `aulas` (`codigo_aula`),
  CONSTRAINT `asignacioncursosmastros_ibfk_6` FOREIGN KEY (`codigo_curso`) REFERENCES `cursos` (`codigo_curso`),
  CONSTRAINT `asignacioncursosmastros_ibfk_7` FOREIGN KEY (`codigo_maestro`) REFERENCES `maestros` (`codigo_maestro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacioncursosmastros`
--

LOCK TABLES `asignacioncursosmastros` WRITE;
/*!40000 ALTER TABLE `asignacioncursosmastros` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacioncursosmastros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aulas` (
  `codigo_aula` varchar(5) NOT NULL,
  `nombre_aula` varchar(45) DEFAULT NULL,
  `estatus_aula` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_aula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreras` (
  `codigo_carrera` varchar(5) NOT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `codigo_facultad` varchar(5) DEFAULT NULL,
  `estatus_carrera` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_carrera`),
  KEY `codigo_facultad` (`codigo_facultad`),
  CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`codigo_facultad`) REFERENCES `facultades` (`codigo_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `codigo_curso` varchar(5) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `estatus_curso` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultades`
--

DROP TABLE IF EXISTS `facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultades` (
  `codigo_facultad` varchar(5) NOT NULL,
  `nombre_facultad` varchar(45) DEFAULT NULL,
  `estatus_facultad` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_facultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultades`
--

LOCK TABLES `facultades` WRITE;
/*!40000 ALTER TABLE `facultades` DISABLE KEYS */;
/*!40000 ALTER TABLE `facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadas`
--

DROP TABLE IF EXISTS `jornadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jornadas` (
  `codigo_jornada` varchar(5) NOT NULL,
  `nombre_jornada` varchar(45) DEFAULT NULL,
  `estatus_jornada` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadas`
--

LOCK TABLES `jornadas` WRITE;
/*!40000 ALTER TABLE `jornadas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jornadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maestros` (
  `codigo_maestro` varchar(5) NOT NULL,
  `nombre_maestro` varchar(45) DEFAULT NULL,
  `direccion_maestro` varchar(45) DEFAULT NULL,
  `telefono_maetro` varchar(45) DEFAULT NULL,
  `email_maestro` varchar(20) DEFAULT NULL,
  `estatus_maestro` varchar(1) DEFAULT NULL,
  `pago_maestro` double DEFAULT NULL,
  PRIMARY KEY (`codigo_maestro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestros`
--

LOCK TABLES `maestros` WRITE;
/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secciones` (
  `codigo_seccion` varchar(5) NOT NULL,
  `nombre_seccion` varchar(45) DEFAULT NULL,
  `estatus_seccion` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_seccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedes` (
  `codigo_sede` varchar(5) NOT NULL,
  `nombre_sede` varchar(45) DEFAULT NULL,
  `estatus_sede` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aplicaciones`
--

DROP TABLE IF EXISTS `tbl_aplicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aplicaciones` (
  `pk_id_aplicacion` int NOT NULL,
  `nombre_aplicacion` varchar(50) NOT NULL,
  `descripcion_aplicacion` varchar(150) NOT NULL,
  `estado_aplicacion` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aplicaciones`
--

LOCK TABLES `tbl_aplicaciones` WRITE;
/*!40000 ALTER TABLE `tbl_aplicaciones` DISABLE KEYS */;
INSERT INTO `tbl_aplicaciones` VALUES (1,'Menu','Ingreso Login',1),(999,'Cerrar Sesion','Cerrar Sesion',1),(1000,'MDI SEGURIDAD','PARA SEGURIDAD',1),(1001,'Mant. Usuario','PARA SEGURIDAD',1),(1002,'Mant. Aplicación','PARA SEGURIDAD',1),(1003,'Mant. Modulo','PARA SEGURIDAD',1),(1004,'Mant. Perfil','PARA SEGURIDAD',1),(1101,'Asign. Modulo Aplicacion','PARA SEGURIDAD',1),(1102,'Asign. Aplicacion Perfil','PARA SEGURIDAD',1),(1103,'Asign. Perfil Usuario','PARA SEGURIDAD',1),(1201,'Pcs. Cambio Contraseña','PARA SEGURIDAD',1),(1301,'Pcs. BITACORA','PARA SEGURIDAD',1),(8000,'MDI Prototipo','Proto',1),(8001,'Historial de Cliente','Historial',1),(8002,'Pago de Servicios','Servicios',1),(8003,'Transacciones','Transacciones',1),(8004,'AgregarCuentaAmiga','Cuenta',1),(8005,'EstadoCuenta','Estado',1),(8006,'Deposito','Deposito',1),(8007,'Cheques','Cheques',1),(8008,'NotasCyD','Notas',1),(8009,'Tarjetas','Tarjetas',1),(8010,'BancosEx','Bancos',1),(8011,'Man_Cuenta','Man_Cuenta',1),(8012,'Man_Tipo_C','Tipo_Cuenta',1),(8013,'Man_Moneda','Moneda',1),(8014,'Man_Cliente','Cliente',1),(8015,'Man_Estados','Estados',1),(8016,'Man_Tarjeta','Tarjeta',1),(8017,'Man_Tipo_Tarjeta','Tipo_Tarjeta',1),(8018,'Man_Transacciones','Transacc',1),(8019,'Man_Tipo_Trans','Tipo_Trans',1),(8020,'Tar','Tar',1);
/*!40000 ALTER TABLE `tbl_aplicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionesperfilsusuario`
--

DROP TABLE IF EXISTS `tbl_asignacionesperfilsusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionesperfilsusuario` (
  `fk_id_usuario` int NOT NULL,
  `fk_id_perfil` int NOT NULL,
  PRIMARY KEY (`fk_id_usuario`,`fk_id_perfil`),
  KEY `fk_id_perfil` (`fk_id_perfil`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_asignacionesperfilsusuario_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionesperfilsusuario`
--

LOCK TABLES `tbl_asignacionesperfilsusuario` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` DISABLE KEYS */;
INSERT INTO `tbl_asignacionesperfilsusuario` VALUES (1,1),(2,1),(3,3),(4,3);
/*!40000 ALTER TABLE `tbl_asignacionesperfilsusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_asignacionmoduloaplicacion`
--

DROP TABLE IF EXISTS `tbl_asignacionmoduloaplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_asignacionmoduloaplicacion` (
  `fk_id_modulos` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  PRIMARY KEY (`fk_id_modulos`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_1` FOREIGN KEY (`fk_id_modulos`) REFERENCES `tbl_modulos` (`pk_id_modulos`),
  CONSTRAINT `tbl_asignacionmoduloaplicacion_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_asignacionmoduloaplicacion`
--

LOCK TABLES `tbl_asignacionmoduloaplicacion` WRITE;
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` DISABLE KEYS */;
INSERT INTO `tbl_asignacionmoduloaplicacion` VALUES (1000,1000),(1000,1001),(1000,1002),(1000,1003),(1000,1004),(1000,1102),(1000,1103),(1000,1201),(1000,1301),(8000,8000),(8000,8001),(8000,8002),(8000,8003),(8000,8004),(8000,8005),(8000,8006),(8000,8007),(8000,8008),(8000,8009),(8000,8010),(8000,8011),(8000,8012),(8000,8013),(8000,8014),(8000,8015),(8000,8016),(8000,8017),(8000,8018),(8000,8019),(8000,8020);
/*!40000 ALTER TABLE `tbl_asignacionmoduloaplicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bitacoradeeventos`
--

DROP TABLE IF EXISTS `tbl_bitacoradeeventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bitacoradeeventos` (
  `pk_id_bitacora` int NOT NULL AUTO_INCREMENT,
  `fk_id_usuario` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `fecha_bitacora` date NOT NULL,
  `hora_bitacora` time NOT NULL,
  `host_bitacora` varchar(45) NOT NULL,
  `ip_bitacora` varchar(100) NOT NULL,
  `accion_bitacora` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_bitacora`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_1` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`),
  CONSTRAINT `tbl_bitacoradeeventos_ibfk_2` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bitacoradeeventos`
--

LOCK TABLES `tbl_bitacoradeeventos` WRITE;
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` DISABLE KEYS */;
INSERT INTO `tbl_bitacoradeeventos` VALUES (1,1,1,'2024-04-26','15:29:08','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(2,1,8000,'2024-04-26','15:30:03','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(3,1,1,'2024-04-26','15:31:32','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(4,1,8000,'2024-04-26','15:31:34','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(5,1,1,'2024-04-26','15:56:33','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(6,1,1,'2024-04-26','16:39:44','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(7,1,8000,'2024-04-26','16:39:46','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(8,1,1,'2024-04-26','16:41:29','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(9,1,8000,'2024-04-26','16:41:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(10,1,1,'2024-04-26','16:42:34','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(11,1,8000,'2024-04-26','16:42:37','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(12,1,1,'2024-04-26','16:44:04','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(13,1,8000,'2024-04-26','16:44:06','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(14,1,1,'2024-04-26','16:45:18','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(15,1,8000,'2024-04-26','16:45:20','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(16,1,1,'2024-04-28','17:15:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(17,1,8000,'2024-04-28','17:15:43','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(18,1,1,'2024-04-28','19:01:21','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(19,1,1000,'2024-04-28','19:01:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Seguridad'),(20,1,1001,'2024-04-28','19:02:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Guardar'),(21,2,1,'2024-04-28','19:02:32','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(22,2,999,'2024-04-28','19:02:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(23,2,1,'2024-04-28','19:02:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(24,2,1,'2024-04-28','19:04:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(25,2,8000,'2024-04-28','19:04:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(26,1,1,'2024-04-28','19:28:45','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(27,1,8000,'2024-04-28','19:28:50','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(28,1,999,'2024-04-28','19:29:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(29,1,1,'2024-04-28','19:41:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(30,1,8000,'2024-04-28','19:41:28','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(31,1,1,'2024-04-28','19:44:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(32,1,8000,'2024-04-28','19:44:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(33,1,1,'2024-04-28','20:11:24','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(34,1,8000,'2024-04-28','20:11:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(35,1,1,'2024-04-28','20:12:48','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(36,1,8000,'2024-04-28','20:12:48','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(37,1,999,'2024-04-28','20:12:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(38,1,1,'2024-04-28','20:13:45','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(39,1,8000,'2024-04-28','20:13:46','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(40,1,999,'2024-04-28','20:13:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(41,1,1,'2024-04-28','20:14:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(42,1,8000,'2024-04-28','20:14:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(43,1,999,'2024-04-28','20:15:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(44,1,1,'2024-04-28','21:21:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(45,1,8000,'2024-04-28','21:21:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(46,1,1,'2024-04-28','21:22:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(47,1,8000,'2024-04-28','21:22:24','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(48,1,1,'2024-04-28','21:23:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(49,1,8000,'2024-04-28','21:23:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(50,1,1,'2024-04-28','21:26:24','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(51,1,8000,'2024-04-28','21:26:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(52,1,1,'2024-04-28','21:29:09','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(53,1,8000,'2024-04-28','21:29:10','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(54,1,1,'2024-04-28','21:31:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(55,1,8000,'2024-04-28','21:32:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(56,1,1,'2024-04-30','08:57:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(57,1,8000,'2024-04-30','08:57:02','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(58,1,1,'2024-04-30','08:58:09','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(59,1,8000,'2024-04-30','08:58:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(60,1,1,'2024-05-03','13:04:48','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(61,1,8000,'2024-05-03','13:04:50','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(62,1,999,'2024-05-03','13:04:58','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerró Sesión'),(63,1,1,'2024-05-03','13:10:49','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(64,1,1000,'2024-05-03','13:10:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Seguridad'),(65,1,1,'2024-05-10','12:34:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(66,1,8000,'2024-05-10','12:34:02','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(67,1,1,'2024-05-10','13:06:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(68,1,8000,'2024-05-10','13:06:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(69,1,1,'2024-05-10','13:06:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(70,1,8000,'2024-05-10','13:06:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(71,1,1,'2024-05-10','13:27:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(72,1,8000,'2024-05-10','13:27:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(73,1,1,'2024-05-10','13:49:54','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(74,1,8000,'2024-05-10','13:49:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(75,1,1,'2024-05-10','13:51:22','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(76,1,8000,'2024-05-10','13:51:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(77,1,1,'2024-05-10','13:58:02','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(78,1,8000,'2024-05-10','13:58:03','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(79,1,1,'2024-05-10','14:03:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(80,1,8000,'2024-05-10','14:03:12','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(81,1,1,'2024-05-10','14:05:03','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(82,1,8000,'2024-05-10','14:05:04','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(83,1,1,'2024-05-10','14:13:29','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(84,1,8000,'2024-05-10','14:13:29','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(85,1,1,'2024-05-10','14:15:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(86,1,8000,'2024-05-10','14:15:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(87,1,1,'2024-05-10','14:18:13','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(88,1,8000,'2024-05-10','14:18:14','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(89,1,1,'2024-05-10','14:26:25','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(90,1,8000,'2024-05-10','14:26:26','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(91,1,1,'2024-05-10','14:28:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(92,1,8000,'2024-05-10','14:28:12','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(93,1,1,'2024-05-12','00:48:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(94,1,8000,'2024-05-12','00:48:17','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(95,1,1,'2024-05-13','21:57:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(96,1,1000,'2024-05-13','21:57:57','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Seguridad'),(97,1,1001,'2024-05-13','21:58:49','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar'),(98,1,1001,'2024-05-13','21:59:12','OLSTER','fe80::a328:23e5:7f78:af4f%13','Reportes'),(99,1,1,'2024-05-13','21:59:31','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(100,1,1000,'2024-05-13','21:59:34','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Seguridad'),(101,1,1003,'2024-05-13','22:00:09','OLSTER','fe80::a328:23e5:7f78:af4f%13','Guardar'),(102,3,1,'2024-05-13','22:07:32','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(103,3,8000,'2024-05-13','22:07:35','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(104,3,999,'2024-05-13','22:08:36','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerró Sesión'),(105,3,1,'2024-05-13','23:09:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(106,3,8000,'2024-05-13','23:09:16','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(107,1,1,'2024-05-13','23:18:04','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(108,1,8000,'2024-05-13','23:18:05','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(109,3,1,'2024-05-13','23:18:26','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(110,3,8000,'2024-05-13','23:18:27','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(111,3,1,'2024-05-13','23:20:33','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(112,3,8000,'2024-05-13','23:20:34','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(113,3,1,'2024-05-13','23:22:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(114,3,8000,'2024-05-13','23:22:02','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(115,3,1,'2024-05-13','23:25:23','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(116,3,8000,'2024-05-13','23:25:25','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(117,3,1,'2024-05-13','23:27:26','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(118,3,8000,'2024-05-13','23:27:27','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(119,3,1,'2024-05-13','23:29:13','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(120,3,8000,'2024-05-13','23:29:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(121,3,1,'2024-05-13','23:31:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(122,3,8000,'2024-05-13','23:31:43','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(123,3,1,'2024-05-13','23:33:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(124,3,8000,'2024-05-13','23:33:15','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(125,3,1,'2024-05-13','23:34:21','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(126,3,8000,'2024-05-13','23:34:23','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(127,3,1,'2024-05-13','23:34:59','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(128,3,8000,'2024-05-13','23:35:00','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(129,3,1,'2024-05-13','23:37:10','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(130,3,8000,'2024-05-13','23:37:12','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(131,3,999,'2024-05-13','23:37:33','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerró Sesión'),(132,3,1,'2024-05-13','23:48:00','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(133,3,8000,'2024-05-13','23:48:01','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(134,3,1,'2024-05-13','23:50:56','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(135,3,8000,'2024-05-13','23:50:57','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(136,3,1,'2024-05-13','23:53:37','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(137,3,8000,'2024-05-13','23:53:38','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(139,3,1,'2024-05-14','00:02:11','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(140,3,8000,'2024-05-14','00:02:12','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(141,3,1,'2024-05-14','09:54:39','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(142,3,8000,'2024-05-14','09:54:42','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(143,3,8000,'2024-05-14','09:54:52','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(144,3,1,'2024-05-14','09:56:28','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(145,3,8000,'2024-05-14','09:56:30','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso a bancos'),(146,1,1,'2024-05-14','17:30:13','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(147,3,1,'2024-05-14','17:30:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(148,3,8000,'2024-05-14','17:30:35','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(149,3,1,'2024-05-14','17:34:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(150,3,8000,'2024-05-14','17:34:15','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(151,3,1,'2024-05-14','17:35:19','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(152,3,8000,'2024-05-14','17:35:21','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(153,3,999,'2024-05-14','17:39:47','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(154,1,1,'2024-05-14','17:39:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(155,1,8000,'2024-05-14','17:39:52','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso a bancos'),(156,3,1,'2024-05-14','21:17:03','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(157,3,1,'2024-05-14','21:18:38','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(158,3,1,'2024-05-15','22:49:34','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(159,1,1,'2024-05-15','23:02:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(160,1,1,'2024-05-15','23:05:31','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(161,1,1,'2024-05-15','23:11:48','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(162,1,1,'2024-05-15','23:21:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(163,1,1,'2024-05-15','23:22:17','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(164,1,1,'2024-05-15','23:23:18','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(165,1,1,'2024-05-15','23:24:33','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(166,1,1,'2024-05-15','23:26:30','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(167,1,1,'2024-05-15','23:29:24','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(168,1,1,'2024-05-15','23:30:53','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(169,1,1,'2024-05-15','23:40:47','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(170,1,1,'2024-05-15','23:41:59','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(171,1,1,'2024-05-15','23:43:23','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(172,1,1,'2024-05-15','23:45:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(173,1,1,'2024-05-16','00:02:22','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(174,1,1,'2024-05-16','00:22:19','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(175,1,1,'2024-05-16','00:35:29','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(176,1,1,'2024-05-16','00:39:18','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(177,1,1,'2024-05-16','20:04:56','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(178,1,1,'2024-05-16','20:06:35','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(179,1,1,'2024-05-16','20:10:55','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(180,1,999,'2024-05-16','20:11:17','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(181,2,1,'2024-05-16','20:12:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(182,2,1,'2024-05-16','20:17:10','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(183,1,1,'2024-05-16','20:21:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(184,1,1,'2024-05-16','20:24:13','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(185,1,999,'2024-05-16','20:25:46','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(186,3,1,'2024-05-16','20:25:51','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(187,3,999,'2024-05-16','20:26:11','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(188,1,1,'2024-05-16','20:26:16','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(189,1,1000,'2024-05-16','20:28:24','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Seguridad'),(190,3,1,'2024-05-16','20:28:40','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(191,3,1,'2024-05-17','13:45:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(192,3,1,'2024-05-17','13:47:42','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(193,3,1,'2024-05-17','14:32:12','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(194,1,1,'2024-05-17','14:33:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(195,3,1,'2024-05-17','14:33:54','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(196,3,1,'2024-05-17','14:56:08','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(197,3,1,'2024-05-17','14:57:20','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(198,3,1,'2024-05-17','14:58:14','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(199,3,1,'2024-05-17','15:00:04','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(200,3,1,'2024-05-17','15:01:30','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(201,3,1,'2024-05-17','15:03:27','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(202,3,1,'2024-05-17','15:07:28','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(203,3,1,'2024-05-17','15:13:43','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(204,3,1,'2024-05-17','15:16:10','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(205,3,1,'2024-05-17','15:16:57','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(206,3,1,'2024-05-17','15:19:15','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(207,3,1,'2024-05-17','15:20:45','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(208,3,1,'2024-05-17','15:21:50','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(209,3,1,'2024-05-17','15:24:17','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(210,3,1,'2024-05-17','15:26:07','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(211,1,1,'2024-05-17','15:33:00','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(212,1,999,'2024-05-17','15:33:01','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Cerró Sesión'),(213,3,1,'2024-05-17','15:33:08','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(214,3,1,'2024-05-17','15:37:16','OLSTER','fe80::8a8a:66cd:92ea:16ea%17','Ingreso Login'),(215,1,1,'2024-05-20','22:58:14','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(216,1,1,'2024-05-20','23:01:41','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(217,1,999,'2024-05-20','23:02:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Cerró Sesión'),(218,3,1,'2024-05-20','23:02:27','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(219,1,1,'2024-05-22','19:33:29','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(220,1,1,'2024-05-22','19:35:32','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(221,1,1,'2024-05-22','19:36:45','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(222,1,1,'2024-05-22','19:38:20','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(223,1,1,'2024-05-22','19:40:48','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(224,1,1,'2024-05-22','19:42:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(225,1,1,'2024-05-22','19:45:09','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(226,1,1,'2024-05-22','19:47:17','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(227,1,1,'2024-05-22','20:23:13','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(228,1,1,'2024-05-22','20:24:55','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(229,1,1,'2024-05-22','20:33:49','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(230,1,1,'2024-05-22','22:27:22','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(231,1,1,'2024-05-22','22:51:10','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(232,1,1,'2024-05-22','22:53:51','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(233,2,8000,'2024-05-22','22:54:04','olster','192.168.56.1','Deposito'),(234,3,1,'2024-05-22','23:10:54','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(235,3,1,'2024-05-22','23:16:29','OLSTER','fe80::a328:23e5:7f78:af4f%13','Ingreso Login'),(236,2,8000,'2024-05-22','23:16:59','olster','192.168.56.1','Deposito'),(237,3,8000,'2024-05-22','23:16:59','olster','192.168.56.1','Retiro'),(238,1,1,'2024-05-24','00:15:04','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(239,1,1,'2024-05-24','01:20:05','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(240,1,1000,'2024-05-24','01:20:06','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Seguridad'),(241,1,1001,'2024-05-24','01:20:40','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Guardar'),(242,1,1103,'2024-05-24','01:20:52','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Asigno Perfil-Aplicacion'),(243,1,1,'2024-05-24','01:21:05','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(244,1,8005,'2024-05-24','01:21:50','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Se ha guardado un registro'),(245,1,8003,'2024-05-24','01:22:26','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Se ha guardado un registro'),(246,1,999,'2024-05-24','01:22:32','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Cerró Sesión'),(247,4,1,'2024-05-24','01:22:38','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(248,3,8000,'2024-05-24','01:24:29','DESKTOP-HCCDANL','192.168.56.1','Deposito'),(249,4,8000,'2024-05-24','01:24:29','DESKTOP-HCCDANL','192.168.56.1','Retiro'),(250,4,999,'2024-05-24','01:24:45','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Cerró Sesión'),(251,1,1,'2024-05-24','01:24:52','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(252,3,8000,'2024-05-24','01:25:08','DESKTOP-HCCDANL','192.168.56.1','Deposito'),(253,3,8000,'2024-05-24','01:25:40','DESKTOP-HCCDANL','192.168.56.1','Retiro'),(254,4,8000,'2024-05-24','01:26:14','DESKTOP-HCCDANL','192.168.56.1','Deposito'),(255,1,8000,'2024-05-24','01:27:19','DESKTOP-HCCDANL','192.168.56.1','Retiro'),(256,1,8000,'2024-05-24','01:27:40','DESKTOP-HCCDANL','192.168.56.1','Retiro'),(257,3,1,'2024-05-24','01:31:02','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Ingreso Login'),(258,3,8000,'2024-05-24','01:31:51','DESKTOP-HCCDANL','192.168.56.1','Retiro'),(259,3,999,'2024-05-24','01:32:50','DESKTOP-HCCDANL','fe80::b70e:a166:8795:9d60%17','Cerró Sesión');
/*!40000 ALTER TABLE `tbl_bitacoradeeventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estados`
--

DROP TABLE IF EXISTS `tbl_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estados` (
  `pk_id_estado` int NOT NULL AUTO_INCREMENT,
  `est_info_estado` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `est_num_estado` int DEFAULT NULL,
  PRIMARY KEY (`pk_id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estados`
--

LOCK TABLES `tbl_estados` WRITE;
/*!40000 ALTER TABLE `tbl_estados` DISABLE KEYS */;
INSERT INTO `tbl_estados` VALUES (1,'Activo',1),(2,'Eliminado',2),(3,'Modificado',3);
/*!40000 ALTER TABLE `tbl_estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulos`
--

DROP TABLE IF EXISTS `tbl_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modulos` (
  `pk_id_modulos` int NOT NULL,
  `nombre_modulo` varchar(50) NOT NULL,
  `descripcion_modulo` varchar(150) NOT NULL,
  `estado_modulo` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_modulos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulos`
--

LOCK TABLES `tbl_modulos` WRITE;
/*!40000 ALTER TABLE `tbl_modulos` DISABLE KEYS */;
INSERT INTO `tbl_modulos` VALUES (1000,'SEGURIDAD','Seguridad',1),(8000,'Prototipo','Prototipo',1);
/*!40000 ALTER TABLE `tbl_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_perfiles`
--

DROP TABLE IF EXISTS `tbl_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_perfiles` (
  `pk_id_perfil` int NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(50) NOT NULL,
  `descripcion_perfil` varchar(150) NOT NULL,
  `estado_perfil` tinyint DEFAULT '0',
  PRIMARY KEY (`pk_id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_perfiles`
--

LOCK TABLES `tbl_perfiles` WRITE;
/*!40000 ALTER TABLE `tbl_perfiles` DISABLE KEYS */;
INSERT INTO `tbl_perfiles` VALUES (1,'ADMINISTRADOR','contiene todos los permisos del programa',1),(2,'SEGURIDAD','contiene todos los permisos de seguridad',1),(3,'Usuario','Puede realizar operaciones de usuario xd',1);
/*!40000 ALTER TABLE `tbl_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionesusuario`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionesusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionesusuario` (
  `fk_id_aplicacion` int NOT NULL,
  `fk_id_usuario` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_aplicacion`,`fk_id_usuario`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionesusuario_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tbl_usuarios` (`pk_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionesusuario`
--

LOCK TABLES `tbl_permisosaplicacionesusuario` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permisosaplicacionesusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisosaplicacionperfil`
--

DROP TABLE IF EXISTS `tbl_permisosaplicacionperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permisosaplicacionperfil` (
  `fk_id_perfil` int NOT NULL,
  `fk_id_aplicacion` int NOT NULL,
  `guardar_permiso` tinyint(1) DEFAULT '0',
  `modificar_permiso` tinyint(1) DEFAULT '0',
  `eliminar_permiso` tinyint(1) DEFAULT '0',
  `buscar_permiso` tinyint(1) DEFAULT '0',
  `imprimir_permiso` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fk_id_perfil`,`fk_id_aplicacion`),
  KEY `fk_id_aplicacion` (`fk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_1` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `tbl_aplicaciones` (`pk_id_aplicacion`),
  CONSTRAINT `tbl_permisosaplicacionperfil_ibfk_2` FOREIGN KEY (`fk_id_perfil`) REFERENCES `tbl_perfiles` (`pk_id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisosaplicacionperfil`
--

LOCK TABLES `tbl_permisosaplicacionperfil` WRITE;
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` DISABLE KEYS */;
INSERT INTO `tbl_permisosaplicacionperfil` VALUES (1,1000,1,1,1,1,1),(1,1001,1,1,1,1,1),(1,1002,1,1,1,1,1),(1,1003,1,1,1,1,1),(1,1004,1,1,1,1,1),(1,1101,1,1,1,1,1),(1,1102,1,1,1,1,1),(1,1103,1,1,1,1,1),(1,1201,1,1,1,1,1),(1,1301,1,1,1,1,1),(1,8000,1,1,1,1,1),(1,8001,1,1,1,1,1),(1,8002,1,1,1,1,1),(1,8003,1,1,1,1,1),(1,8004,1,1,1,1,1),(1,8005,1,1,1,1,1),(1,8006,1,1,1,1,1),(1,8007,1,1,1,1,1),(1,8008,1,1,1,1,1),(1,8009,1,1,1,1,1),(1,8010,1,1,1,1,1),(1,8011,1,1,1,1,1),(1,8012,1,1,1,1,1),(1,8013,1,1,1,1,1),(1,8014,1,1,1,1,1),(1,8015,1,1,1,1,1),(1,8016,1,1,1,1,1),(1,8017,1,1,1,1,1),(1,8018,1,1,1,1,1),(1,8019,1,1,1,1,1),(1,8020,1,1,1,1,1),(3,8000,1,1,1,1,1),(3,8002,1,1,1,1,1),(3,8003,1,1,1,1,1),(3,8004,1,1,1,1,1),(3,8005,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_permisosaplicacionperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reportes`
--

DROP TABLE IF EXISTS `tbl_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reportes` (
  `pk_id_reporte` int NOT NULL AUTO_INCREMENT,
  `rep_correlativo` int DEFAULT NULL,
  `rep_nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fk_estado` int DEFAULT NULL,
  `rep_fecha` datetime DEFAULT NULL,
  `rep_archivo` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `rep_fechaMod` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_id_reporte`),
  UNIQUE KEY `rep_correlativo` (`rep_correlativo`),
  KEY `fk_estado` (`fk_estado`),
  CONSTRAINT `tbl_reportes_ibfk_1` FOREIGN KEY (`fk_estado`) REFERENCES `tbl_estados` (`pk_id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reportes`
--

LOCK TABLES `tbl_reportes` WRITE;
/*!40000 ALTER TABLE `tbl_reportes` DISABLE KEYS */;
INSERT INTO `tbl_reportes` VALUES (10,10002,'planilssla.txt',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `pk_id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(50) NOT NULL,
  `username_usuario` varchar(20) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `estado_usuario` tinyint NOT NULL DEFAULT '0',
  `pregunta` varchar(50) NOT NULL,
  `respuesta` varchar(50) NOT NULL,
  PRIMARY KEY (`pk_id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'admin','admin','admin','HO0aGo4nM94=','esduardo@gmail.com',1,'COLOR FAVORITO','X9yc1/l1b2A='),(2,'Oliver','Jose','Oliver','jIM8RY7n0OdezrmUaQf3HA==','olstertecn597@gmail.com',1,'PRIMER MASCOTA','jIM8RY7n0OdezrmUaQf3HA=='),(3,'Danny','Perez','Danny','HO0aGo4nM94=','daanperz@gmail.com',1,'PRIMER MASCOTA','HO0aGo4nM94='),(4,'Jorge','Garcia','Jorge','HO0aGo4nM94=','jorge@gmail.com',1,'COLOR FAVORITO','HO0aGo4nM94=');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_aplicacion_perfil`
--

DROP TABLE IF EXISTS `vista_aplicacion_perfil`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacion_perfil` AS SELECT 
 1 AS `ID`,
 1 AS `Perfil`,
 1 AS `Aplicacion`,
 1 AS `Insertar`,
 1 AS `Modificar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_aplicacionusuario`
--

DROP TABLE IF EXISTS `vista_aplicacionusuario`;
/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_aplicacionusuario` AS SELECT 
 1 AS `Aplicacion`,
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `Insertar`,
 1 AS `Editar`,
 1 AS `Eliminar`,
 1 AS `Buscar`,
 1 AS `Reporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_modulo_aplicacion`
--

DROP TABLE IF EXISTS `vista_modulo_aplicacion`;
/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_modulo_aplicacion` AS SELECT 
 1 AS `ID`,
 1 AS `Modulo`,
 1 AS `Aplicacion`,
 1 AS `Nombre`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_perfil_usuario`
--

DROP TABLE IF EXISTS `vista_perfil_usuario`;
/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_perfil_usuario` AS SELECT 
 1 AS `ID`,
 1 AS `Usuario`,
 1 AS `nickName`,
 1 AS `perfil`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_aplicacion_perfil`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacion_perfil`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacion_perfil` AS select `b`.`fk_id_perfil` AS `ID`,`a`.`nombre_perfil` AS `Perfil`,`b`.`fk_id_aplicacion` AS `Aplicacion`,`b`.`guardar_permiso` AS `Insertar`,`b`.`modificar_permiso` AS `Modificar`,`b`.`eliminar_permiso` AS `Eliminar`,`b`.`buscar_permiso` AS `Buscar`,`b`.`imprimir_permiso` AS `Reporte` from (`tbl_permisosaplicacionperfil` `b` join `tbl_perfiles` `a` on((`a`.`pk_id_perfil` = `b`.`fk_id_perfil`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_aplicacionusuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_aplicacionusuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_aplicacionusuario` AS select `b`.`fk_id_aplicacion` AS `Aplicacion`,`b`.`fk_id_usuario` AS `ID`,`a`.`nombre_usuario` AS `Usuario`,`b`.`guardar_permiso` AS `Insertar`,`b`.`modificar_permiso` AS `Editar`,`b`.`eliminar_permiso` AS `Eliminar`,`b`.`buscar_permiso` AS `Buscar`,`b`.`imprimir_permiso` AS `Reporte` from (`tbl_permisosaplicacionesusuario` `b` join `tbl_usuarios` `a` on((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_modulo_aplicacion`
--

/*!50001 DROP VIEW IF EXISTS `vista_modulo_aplicacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_modulo_aplicacion` AS select `b`.`fk_id_modulos` AS `ID`,`a`.`nombre_modulo` AS `Modulo`,`b`.`fk_id_aplicacion` AS `Aplicacion`,`c`.`nombre_aplicacion` AS `Nombre`,`c`.`descripcion_aplicacion` AS `Descripcion` from ((`tbl_asignacionmoduloaplicacion` `b` join `tbl_modulos` `a` on((`a`.`pk_id_modulos` = `b`.`fk_id_modulos`))) join `tbl_aplicaciones` `c` on((`c`.`pk_id_aplicacion` = `b`.`fk_id_aplicacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_perfil_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_perfil_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_perfil_usuario` AS select `b`.`fk_id_usuario` AS `ID`,`a`.`nombre_usuario` AS `Usuario`,`a`.`username_usuario` AS `nickName`,`b`.`fk_id_perfil` AS `perfil`,`c`.`nombre_perfil` AS `Nombre` from ((`tbl_asignacionesperfilsusuario` `b` join `tbl_usuarios` `a` on((`a`.`pk_id_usuario` = `b`.`fk_id_usuario`))) join `tbl_perfiles` `c` on((`c`.`pk_id_perfil` = `b`.`fk_id_perfil`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 10:20:55
