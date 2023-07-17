-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: db_sd_almadinah
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detil_ttrx_assanahs`
--

DROP TABLE IF EXISTS `detil_ttrx_assanahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_assanahs` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdassanah` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_assanahs_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_assanahs_nkdassanah_foreign` (`nkdassanah`),
  CONSTRAINT `detil_ttrx_assanahs_nkdassanah_foreign` FOREIGN KEY (`nkdassanah`) REFERENCES `m_assanahs` (`nkdassanah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_assanahs_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_assanahs`
--

LOCK TABLES `detil_ttrx_assanahs` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_assanahs` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_assanahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_bukus`
--

DROP TABLE IF EXISTS `detil_ttrx_bukus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_bukus` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdpaket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_bukus_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_bukus_nkdpaket_foreign` (`nkdpaket`),
  CONSTRAINT `detil_ttrx_bukus_nkdpaket_foreign` FOREIGN KEY (`nkdpaket`) REFERENCES `m_paket_bukus` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_bukus_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_bukus`
--

LOCK TABLES `detil_ttrx_bukus` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_bukus` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_bukus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_formulirpendaftarans`
--

DROP TABLE IF EXISTS `detil_ttrx_formulirpendaftarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_formulirpendaftarans` (
  `nnotrx` bigint(20) NOT NULL,
  `nidpendaftaran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_formulirpendaftarans_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_formulirpendaftarans_nidpendaftaran_foreign` (`nidpendaftaran`),
  CONSTRAINT `detil_ttrx_formulirpendaftarans_nidpendaftaran_foreign` FOREIGN KEY (`nidpendaftaran`) REFERENCES `formulir_pendaftarans` (`nidpendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_formulirpendaftarans_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_formulirpendaftarans`
--

LOCK TABLES `detil_ttrx_formulirpendaftarans` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_formulirpendaftarans` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_formulirpendaftarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_kbms`
--

DROP TABLE IF EXISTS `detil_ttrx_kbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_kbms` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdkbm` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_kbms_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_kbms_nkdkbm_foreign` (`nkdkbm`),
  CONSTRAINT `detil_ttrx_kbms_nkdkbm_foreign` FOREIGN KEY (`nkdkbm`) REFERENCES `m_kbms` (`nkdkbm`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_kbms_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_kbms`
--

LOCK TABLES `detil_ttrx_kbms` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_kbms` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_kbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_komites`
--

DROP TABLE IF EXISTS `detil_ttrx_komites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_komites` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdkomite` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_komites_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_komites_nkdkomite_foreign` (`nkdkomite`),
  CONSTRAINT `detil_ttrx_komites_nkdkomite_foreign` FOREIGN KEY (`nkdkomite`) REFERENCES `m_komites` (`nkdkomite`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_komites_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_komites`
--

LOCK TABLES `detil_ttrx_komites` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_komites` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_komites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_pengembangans`
--

DROP TABLE IF EXISTS `detil_ttrx_pengembangans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_pengembangans` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdpengembangan` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_pengembangans_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_pengembangans_nkdpengembangan_foreign` (`nkdpengembangan`),
  CONSTRAINT `detil_ttrx_pengembangans_nkdpengembangan_foreign` FOREIGN KEY (`nkdpengembangan`) REFERENCES `m_pengembangans` (`nkdpengembangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_pengembangans_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_pengembangans`
--

LOCK TABLES `detil_ttrx_pengembangans` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_pengembangans` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_pengembangans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_ppdbs`
--

DROP TABLE IF EXISTS `detil_ttrx_ppdbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_ppdbs` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdppdb` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_ppdbs_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_ppdbs_nkdppdb_foreign` (`nkdppdb`),
  CONSTRAINT `detil_ttrx_ppdbs_nkdppdb_foreign` FOREIGN KEY (`nkdppdb`) REFERENCES `m_ppdbs` (`nkdppdb`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_ppdbs_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_ppdbs`
--

LOCK TABLES `detil_ttrx_ppdbs` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_ppdbs` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_ppdbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_seragams`
--

DROP TABLE IF EXISTS `detil_ttrx_seragams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_seragams` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdpaket` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_seragams_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_seragams_nkdpaket_foreign` (`nkdpaket`),
  CONSTRAINT `detil_ttrx_seragams_nkdpaket_foreign` FOREIGN KEY (`nkdpaket`) REFERENCES `m_paket_seragams` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_seragams_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_seragams`
--

LOCK TABLES `detil_ttrx_seragams` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_seragams` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_seragams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrx_spps`
--

DROP TABLE IF EXISTS `detil_ttrx_spps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrx_spps` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdspp` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrx_spps_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrx_spps_nkdspp_foreign` (`nkdspp`),
  CONSTRAINT `detil_ttrx_spps_nkdspp_foreign` FOREIGN KEY (`nkdspp`) REFERENCES `m_spps` (`nkdspp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrx_spps_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrx_spps`
--

LOCK TABLES `detil_ttrx_spps` WRITE;
/*!40000 ALTER TABLE `detil_ttrx_spps` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrx_spps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detil_ttrxes`
--

DROP TABLE IF EXISTS `detil_ttrxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detil_ttrxes` (
  `nnotrx` bigint(20) NOT NULL,
  `nkdakun` varchar(255) NOT NULL,
  `debit` double(11,2) NOT NULL DEFAULT 0.00,
  `kredit` double(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `detil_ttrxes_nnotrx_foreign` (`nnotrx`),
  KEY `detil_ttrxes_nkdakun_foreign` (`nkdakun`),
  CONSTRAINT `detil_ttrxes_nkdakun_foreign` FOREIGN KEY (`nkdakun`) REFERENCES `m_akuns` (`nkdakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detil_ttrxes_nnotrx_foreign` FOREIGN KEY (`nnotrx`) REFERENCES `ttrxes` (`nnotrx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detil_ttrxes`
--

LOCK TABLES `detil_ttrxes` WRITE;
/*!40000 ALTER TABLE `detil_ttrxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `detil_ttrxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulir_pendaftarans`
--

DROP TABLE IF EXISTS `formulir_pendaftarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulir_pendaftarans` (
  `nidpendaftaran` varchar(255) NOT NULL,
  `nnama_lengkap` varchar(255) NOT NULL,
  `nnotelp` varchar(255) NOT NULL,
  `nharga_formulir` int(11) NOT NULL,
  `nkelamin` enum('laki-laki','perempuan') NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nkelas` varchar(255) DEFAULT NULL,
  `diterima` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nidpendaftaran`),
  KEY `formulir_pendaftarans_nkdperiode_foreign` (`nkdperiode`),
  KEY `formulir_pendaftarans_nkelas_foreign` (`nkelas`),
  CONSTRAINT `formulir_pendaftarans_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `formulir_pendaftarans_nkelas_foreign` FOREIGN KEY (`nkelas`) REFERENCES `m_kelas` (`nname`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulir_pendaftarans`
--

LOCK TABLES `formulir_pendaftarans` WRITE;
/*!40000 ALTER TABLE `formulir_pendaftarans` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulir_pendaftarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_acaras`
--

DROP TABLE IF EXISTS `m_acaras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_acaras` (
  `nkdacara` bigint(20) NOT NULL,
  `nnmacara` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `ndeskripsi` text NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdacara`),
  UNIQUE KEY `m_acaras_nnmacara_unique` (`nnmacara`),
  KEY `m_acaras_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_acaras_username_i_foreign` (`username_i`),
  KEY `m_acaras_username_u_foreign` (`username_u`),
  CONSTRAINT `m_acaras_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_acaras_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_acaras_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_acaras`
--

LOCK TABLES `m_acaras` WRITE;
/*!40000 ALTER TABLE `m_acaras` DISABLE KEYS */;
INSERT INTO `m_acaras` VALUES (10,'acara 1',1,'ini acara 1 hahaha','superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_acaras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_akuns`
--

DROP TABLE IF EXISTS `m_akuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_akuns` (
  `nkdkelakun` varchar(255) NOT NULL,
  `nkdkatakun` varchar(255) NOT NULL,
  `nkdsubkatakun` varchar(255) DEFAULT NULL,
  `nkdakun` varchar(255) NOT NULL,
  `nnmakun` varchar(255) NOT NULL,
  `debit_or_kredit` enum('debit','kredit') NOT NULL,
  `saldo` bigint(20) NOT NULL DEFAULT 0,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdakun`),
  UNIQUE KEY `m_akuns_nnmakun_unique` (`nnmakun`),
  KEY `m_akuns_nkdkelakun_foreign` (`nkdkelakun`),
  KEY `m_akuns_nkdkatakun_foreign` (`nkdkatakun`),
  KEY `m_akuns_nkdsubkatakun_foreign` (`nkdsubkatakun`),
  KEY `m_akuns_username_i_foreign` (`username_i`),
  KEY `m_akuns_username_u_foreign` (`username_u`),
  CONSTRAINT `m_akuns_nkdkatakun_foreign` FOREIGN KEY (`nkdkatakun`) REFERENCES `m_katakuns` (`nkdkatakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_akuns_nkdkelakun_foreign` FOREIGN KEY (`nkdkelakun`) REFERENCES `m_kelakuns` (`nkdkelakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_akuns_nkdsubkatakun_foreign` FOREIGN KEY (`nkdsubkatakun`) REFERENCES `m_subkatakuns` (`nkdsubkatakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_akuns_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_akuns_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_akuns`
--

LOCK TABLES `m_akuns` WRITE;
/*!40000 ALTER TABLE `m_akuns` DISABLE KEYS */;
INSERT INTO `m_akuns` VALUES ('1.0.0.0','1.1.0.0','1.1.1.0','1.1.1.1','Kas besar','debit',0,'superkoro',NULL,'2023-03-21 02:53:19','2023-03-22 04:11:44'),('1.0.0.0','1.1.0.0','1.1.1.0','1.1.1.2','Kas kecil','debit',0,'superkoro',NULL,'2023-03-21 02:53:29','2023-03-22 04:12:28'),('1.0.0.0','1.1.0.0','1.1.2.0','1.1.2.1','Bank BRI','debit',50000000,'superkoro',NULL,'2023-03-21 02:53:42','2023-04-03 09:22:47'),('1.0.0.0','1.1.0.0','1.1.2.0','1.1.2.2','Bank Mandiri','debit',0,'superkoro',NULL,'2023-03-21 02:53:53','2023-04-11 19:40:23'),('1.0.0.0','1.1.0.0','1.1.3.0','1.1.3.1','Deposito berjangka','debit',0,'superkoro',NULL,'2023-03-21 02:55:12','2023-03-21 02:55:12'),('1.0.0.0','1.1.0.0','1.1.4.0','1.1.4.1','Piutang pinjaman','debit',0,'superkoro',NULL,'2023-03-21 02:55:27','2023-03-21 02:55:27'),('1.0.0.0','1.1.0.0','1.1.4.0','1.1.4.2','Piutang infaq','debit',0,'superkoro',NULL,'2023-03-21 02:55:49','2023-03-21 02:55:49'),('1.0.0.0','1.1.0.0','1.1.5.0','1.1.5.1','Perlengkapan kantor','debit',0,'superkoro',NULL,'2023-03-21 02:56:04','2023-03-21 02:56:04'),('1.0.0.0','1.1.0.0','1.1.5.0','1.1.5.2','Perlengkapan sekolah','debit',0,'superkoro',NULL,'2023-03-21 02:56:21','2023-03-21 02:56:21'),('1.0.0.0','1.2.0.0','1.2.1.0','1.2.1.1','Gedung sekolah','debit',0,'superkoro',NULL,'2023-03-21 02:57:11','2023-03-21 02:57:11'),('1.0.0.0','1.2.0.0','1.2.1.0','1.2.1.2','Akumulasi Penyusutan gedung','debit',0,'superkoro',NULL,'2023-03-21 02:57:38','2023-03-21 02:57:38'),('2.0.0.0','2.1.0.0','2.1.1.0','2.1.1.3','Hutang pinjaman','kredit',50000000,'superkoro',NULL,'2023-03-21 02:57:38','2023-03-21 02:57:39'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.1','Infaq Spp','kredit',0,'superkoro',NULL,'2023-03-21 04:50:35','2023-03-22 04:12:28'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.2','akhirusannah','kredit',0,'superkoro',NULL,'2023-03-21 04:51:24','2023-03-22 04:11:44'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.3','Komite','kredit',0,'superkoro',NULL,'2023-04-02 20:41:08','2023-04-02 20:41:08'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.4','Buku Paket','kredit',0,'superkoro',NULL,'2023-04-02 20:43:08','2023-04-03 09:23:26'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.5','KBM','kredit',0,'superkoro',NULL,'2023-04-02 20:43:57','2023-04-02 20:43:57'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.6','Seragam','kredit',0,'superkoro',NULL,'2023-04-02 20:44:52','2023-04-02 20:44:52'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.7','Pengembangan Sekolah','kredit',0,'superkoro',NULL,'2023-04-02 20:49:28','2023-04-02 20:49:28'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.8','PPDB','kredit',0,'superkoro',NULL,'2023-04-02 20:49:28','2023-04-02 20:49:28'),('4.0.0.0','4.1.0.0',NULL,'4.1.0.9','Formulir Pendaftaran','kredit',0,'superkoro',NULL,'2023-04-02 20:49:29','2023-04-02 20:49:29'),('5.0.0.0','5.1.0.0',NULL,'5.1.0.1','Beban perlengkapan','debit',0,'superkoro',NULL,'2023-04-11 19:35:07','2023-04-11 19:40:22'),('5.0.0.0','5.1.0.0',NULL,'5.1.0.2','Beban peralatan','debit',0,'superkoro',NULL,'2023-04-11 19:35:46','2023-04-11 19:40:23'),('5.0.0.0','5.4.0.0',NULL,'5.4.0.1','Beban asuransi','debit',0,'superkoro',NULL,'2023-04-11 19:35:46','2023-04-11 19:40:24'),('5.0.0.0','5.4.0.0',NULL,'5.4.0.2','Beban gaji guru & karyawan','debit',0,'superkoro',NULL,'2023-04-11 19:35:46','2023-04-11 19:40:25');
/*!40000 ALTER TABLE `m_akuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_assanahs`
--

DROP TABLE IF EXISTS `m_assanahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_assanahs` (
  `nkdassanah` bigint(20) NOT NULL,
  `nnmassanah` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdassanah`),
  UNIQUE KEY `m_assanahs_nnmassanah_unique` (`nnmassanah`),
  KEY `m_assanahs_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_assanahs_username_i_foreign` (`username_i`),
  KEY `m_assanahs_username_u_foreign` (`username_u`),
  CONSTRAINT `m_assanahs_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_assanahs_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_assanahs_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_assanahs`
--

LOCK TABLES `m_assanahs` WRITE;
/*!40000 ALTER TABLE `m_assanahs` DISABLE KEYS */;
INSERT INTO `m_assanahs` VALUES (10,'assanah 2022-2023',1,2200000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'assanah  2028-2029',7,2200000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_assanahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_bukus`
--

DROP TABLE IF EXISTS `m_bukus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_bukus` (
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nkdbuku` varchar(255) NOT NULL,
  `nnmbuku` varchar(255) NOT NULL,
  `nterbit` varchar(255) NOT NULL,
  `npenerbit` varchar(255) NOT NULL,
  `nharga` double(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_bukus_nkdbuku_unique` (`nkdbuku`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_bukus`
--

LOCK TABLES `m_bukus` WRITE;
/*!40000 ALTER TABLE `m_bukus` DISABLE KEYS */;
INSERT INTO `m_bukus` VALUES (1,'B1','Pendidikan Agama Islam','2022','Si Galuh Tbk',12000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_bukus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dispensasi_trxes`
--

DROP TABLE IF EXISTS `m_dispensasi_trxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_dispensasi_trxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nkdpaketbuku` varchar(255) DEFAULT NULL,
  `nkdpaketseragam` bigint(20) DEFAULT NULL,
  `nkdspp` bigint(20) DEFAULT NULL,
  `nkdassanah` bigint(20) DEFAULT NULL,
  `nkdkomite` bigint(20) DEFAULT NULL,
  `nkdkbm` bigint(20) DEFAULT NULL,
  `nkdpengembangan` bigint(20) DEFAULT NULL,
  `nkdppdb` bigint(20) DEFAULT NULL,
  `nnis` varchar(255) NOT NULL,
  `nnominal` double(11,2) NOT NULL DEFAULT 0.00,
  `nfile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `m_dispensasi_trxes_nkdpaketbuku_foreign` (`nkdpaketbuku`),
  KEY `m_dispensasi_trxes_nkdpaketseragam_foreign` (`nkdpaketseragam`),
  KEY `m_dispensasi_trxes_nkdspp_foreign` (`nkdspp`),
  KEY `m_dispensasi_trxes_nkdassanah_foreign` (`nkdassanah`),
  KEY `m_dispensasi_trxes_nkdkomite_foreign` (`nkdkomite`),
  KEY `m_dispensasi_trxes_nkdkbm_foreign` (`nkdkbm`),
  KEY `m_dispensasi_trxes_nkdpengembangan_foreign` (`nkdpengembangan`),
  KEY `m_dispensasi_trxes_nkdppdb_foreign` (`nkdppdb`),
  KEY `m_dispensasi_trxes_nnis_foreign` (`nnis`),
  CONSTRAINT `m_dispensasi_trxes_nkdassanah_foreign` FOREIGN KEY (`nkdassanah`) REFERENCES `m_assanahs` (`nkdassanah`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdkbm_foreign` FOREIGN KEY (`nkdkbm`) REFERENCES `m_kbms` (`nkdkbm`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdkomite_foreign` FOREIGN KEY (`nkdkomite`) REFERENCES `m_komites` (`nkdkomite`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdpaketbuku_foreign` FOREIGN KEY (`nkdpaketbuku`) REFERENCES `m_paket_bukus` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdpaketseragam_foreign` FOREIGN KEY (`nkdpaketseragam`) REFERENCES `m_paket_seragams` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdpengembangan_foreign` FOREIGN KEY (`nkdpengembangan`) REFERENCES `m_pengembangans` (`nkdpengembangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdppdb_foreign` FOREIGN KEY (`nkdppdb`) REFERENCES `m_ppdbs` (`nkdppdb`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nkdspp_foreign` FOREIGN KEY (`nkdspp`) REFERENCES `m_spps` (`nkdspp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dispensasi_trxes_nnis_foreign` FOREIGN KEY (`nnis`) REFERENCES `m_siswas` (`nnis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dispensasi_trxes`
--

LOCK TABLES `m_dispensasi_trxes` WRITE;
/*!40000 ALTER TABLE `m_dispensasi_trxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_dispensasi_trxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dtl_paket_bukus`
--

DROP TABLE IF EXISTS `m_dtl_paket_bukus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_dtl_paket_bukus` (
  `nkdpaket` varchar(255) NOT NULL,
  `nkdbuku` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `m_dtl_paket_bukus_nkdpaket_foreign` (`nkdpaket`),
  KEY `m_dtl_paket_bukus_nkdbuku_foreign` (`nkdbuku`),
  CONSTRAINT `m_dtl_paket_bukus_nkdbuku_foreign` FOREIGN KEY (`nkdbuku`) REFERENCES `m_bukus` (`nkdbuku`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dtl_paket_bukus_nkdpaket_foreign` FOREIGN KEY (`nkdpaket`) REFERENCES `m_paket_bukus` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dtl_paket_bukus`
--

LOCK TABLES `m_dtl_paket_bukus` WRITE;
/*!40000 ALTER TABLE `m_dtl_paket_bukus` DISABLE KEYS */;
INSERT INTO `m_dtl_paket_bukus` VALUES ('PB1','B1','2023-05-25 20:06:54','2023-05-25 20:06:54'),('PB2','B1','2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_dtl_paket_bukus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dtl_paket_seragams`
--

DROP TABLE IF EXISTS `m_dtl_paket_seragams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_dtl_paket_seragams` (
  `nkdpaket` bigint(20) NOT NULL,
  `nkdseragam` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `m_dtl_paket_seragams_nkdpaket_foreign` (`nkdpaket`),
  KEY `m_dtl_paket_seragams_nkdseragam_foreign` (`nkdseragam`),
  CONSTRAINT `m_dtl_paket_seragams_nkdpaket_foreign` FOREIGN KEY (`nkdpaket`) REFERENCES `m_paket_seragams` (`nkdpaket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_dtl_paket_seragams_nkdseragam_foreign` FOREIGN KEY (`nkdseragam`) REFERENCES `m_seragams` (`nkdseragam`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dtl_paket_seragams`
--

LOCK TABLES `m_dtl_paket_seragams` WRITE;
/*!40000 ALTER TABLE `m_dtl_paket_seragams` DISABLE KEYS */;
INSERT INTO `m_dtl_paket_seragams` VALUES (10,10,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,10,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_dtl_paket_seragams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_dtl_ppdbs`
--

DROP TABLE IF EXISTS `m_dtl_ppdbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_dtl_ppdbs` (
  `nkdppdb` bigint(20) NOT NULL,
  `nitem` varchar(255) NOT NULL,
  `nharga` double(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `m_dtl_ppdbs_nkdppdb_foreign` (`nkdppdb`),
  CONSTRAINT `m_dtl_ppdbs_nkdppdb_foreign` FOREIGN KEY (`nkdppdb`) REFERENCES `m_ppdbs` (`nkdppdb`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_dtl_ppdbs`
--

LOCK TABLES `m_dtl_ppdbs` WRITE;
/*!40000 ALTER TABLE `m_dtl_ppdbs` DISABLE KEYS */;
INSERT INTO `m_dtl_ppdbs` VALUES (10,'SPP',2100000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(10,'assanah',2200000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(10,'komite',2300000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(10,'KBM',2400000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(10,'pengembangan',2500000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'SPP',2100000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'assanah',2200000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'komite',2300000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'KBM',2400000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'pengembangan',2700000.00,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_dtl_ppdbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_ekskuls`
--

DROP TABLE IF EXISTS `m_ekskuls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_ekskuls` (
  `nid` bigint(20) NOT NULL,
  `nnmekskul` varchar(255) NOT NULL,
  `nstatus` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_ekskuls_nnmekskul_unique` (`nnmekskul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_ekskuls`
--

LOCK TABLES `m_ekskuls` WRITE;
/*!40000 ALTER TABLE `m_ekskuls` DISABLE KEYS */;
INSERT INTO `m_ekskuls` VALUES (10,'Ekskul A',1,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_ekskuls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_karyawans`
--

DROP TABLE IF EXISTS `m_karyawans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_karyawans` (
  `nid` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nnip` int(11) NOT NULL,
  `nnama` varchar(255) NOT NULL,
  `nbidang` varchar(255) NOT NULL,
  `ngolongan` varchar(255) NOT NULL,
  `njabatan` varchar(255) NOT NULL,
  `nalamat` varchar(500) NOT NULL,
  `ntgllahir` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `m_karyawans_id_user_foreign` (`id_user`),
  CONSTRAINT `m_karyawans_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_karyawans`
--

LOCK TABLES `m_karyawans` WRITE;
/*!40000 ALTER TABLE `m_karyawans` DISABLE KEYS */;
INSERT INTO `m_karyawans` VALUES (10,50,2023001,'Pak Bagas','pendidikan','4-2','II.B','Tangerang selatan, Banten',970506000,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,60,2023002,'Pak Ruby','teknologi','4-3','II.B','Ciledug, Bantent',1002042000,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(30,70,2023003,'Pak Frayudha','keuangan','3-2','III.B','Jakarta Selatan, Indonesia',1002042000,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_karyawans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_katakuns`
--

DROP TABLE IF EXISTS `m_katakuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_katakuns` (
  `nkdkelakun` varchar(255) NOT NULL,
  `nkdkatakun` varchar(255) NOT NULL,
  `nnmkatakun` varchar(255) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdkatakun`),
  UNIQUE KEY `m_katakuns_nnmkatakun_unique` (`nnmkatakun`),
  KEY `m_katakuns_nkdkelakun_foreign` (`nkdkelakun`),
  KEY `m_katakuns_username_i_foreign` (`username_i`),
  KEY `m_katakuns_username_u_foreign` (`username_u`),
  CONSTRAINT `m_katakuns_nkdkelakun_foreign` FOREIGN KEY (`nkdkelakun`) REFERENCES `m_kelakuns` (`nkdkelakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_katakuns_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_katakuns_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_katakuns`
--

LOCK TABLES `m_katakuns` WRITE;
/*!40000 ALTER TABLE `m_katakuns` DISABLE KEYS */;
INSERT INTO `m_katakuns` VALUES ('1.0.0.0','1.1.0.0','Aktiva lancar','superkoro',NULL,'2023-03-21 02:50:29','2023-03-21 02:50:29'),('1.0.0.0','1.2.0.0','Aktiva tetap','superkoro',NULL,'2023-03-21 02:50:46','2023-03-21 02:50:46'),('2.0.0.0','2.1.0.0','Hutang','superkoro',NULL,'2023-03-21 02:50:46','2023-03-21 02:50:47'),('4.0.0.0','4.1.0.0','Pendapatan Operasional','superkoro',NULL,'2023-03-21 02:58:21','2023-03-21 02:58:21'),('4.0.0.0','4.2.0.0','Pendapatan lain-lain','superkoro',NULL,'2023-03-21 02:58:31','2023-03-21 02:58:31'),('5.0.0.0','5.1.0.0','beban operasional','superkoro',NULL,'2023-04-11 19:30:51','2023-04-11 19:30:51'),('5.0.0.0','5.4.0.0','beban administrasi','superkoro',NULL,'2023-04-11 19:30:51','2023-04-11 19:30:52');
/*!40000 ALTER TABLE `m_katakuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_kbms`
--

DROP TABLE IF EXISTS `m_kbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kbms` (
  `nkdkbm` bigint(20) NOT NULL,
  `nnmkbm` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdkbm`),
  UNIQUE KEY `m_kbms_nnmkbm_unique` (`nnmkbm`),
  KEY `m_kbms_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_kbms_username_i_foreign` (`username_i`),
  KEY `m_kbms_username_u_foreign` (`username_u`),
  CONSTRAINT `m_kbms_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_kbms_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_kbms_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kbms`
--

LOCK TABLES `m_kbms` WRITE;
/*!40000 ALTER TABLE `m_kbms` DISABLE KEYS */;
INSERT INTO `m_kbms` VALUES (10,'kbm 2022-2023',1,2400000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'kbm  2028-2029',7,2400000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_kbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_kelakuns`
--

DROP TABLE IF EXISTS `m_kelakuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kelakuns` (
  `nkdkelakun` varchar(255) NOT NULL,
  `nnmkelakun` varchar(255) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdkelakun`),
  UNIQUE KEY `m_kelakuns_nnmkelakun_unique` (`nnmkelakun`),
  KEY `m_kelakuns_username_i_foreign` (`username_i`),
  KEY `m_kelakuns_username_u_foreign` (`username_u`),
  CONSTRAINT `m_kelakuns_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_kelakuns_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kelakuns`
--

LOCK TABLES `m_kelakuns` WRITE;
/*!40000 ALTER TABLE `m_kelakuns` DISABLE KEYS */;
INSERT INTO `m_kelakuns` VALUES ('1.0.0.0','Aktiva','superkoro',NULL,'2023-03-21 02:49:33','2023-03-21 02:49:33'),('2.0.0.0','Passiva','superkoro',NULL,'2023-03-21 02:49:46','2023-03-21 02:49:46'),('3.0.0.0','Modal','superkoro',NULL,'2023-03-21 02:50:01','2023-03-21 02:50:01'),('4.0.0.0','Pendapatan','superkoro',NULL,'2023-03-21 02:50:06','2023-03-21 02:50:06'),('5.0.0.0','Beban','superkoro',NULL,'2023-03-21 02:50:09','2023-03-21 02:50:09');
/*!40000 ALTER TABLE `m_kelakuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_kelas`
--

DROP TABLE IF EXISTS `m_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_kelas` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_kelas_nname_unique` (`nname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_kelas`
--

LOCK TABLES `m_kelas` WRITE;
/*!40000 ALTER TABLE `m_kelas` DISABLE KEYS */;
INSERT INTO `m_kelas` VALUES (1,'1','2023-05-25 20:06:54','2023-05-25 20:06:54'),(2,'2','2023-05-25 20:06:54','2023-05-25 20:06:54'),(3,'3','2023-05-25 20:06:54','2023-05-25 20:06:54'),(4,'4','2023-05-25 20:06:54','2023-05-25 20:06:54'),(5,'5','2023-05-25 20:06:54','2023-05-25 20:06:54'),(6,'6','2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_komites`
--

DROP TABLE IF EXISTS `m_komites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_komites` (
  `nkdkomite` bigint(20) NOT NULL,
  `nnmkomite` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdkomite`),
  UNIQUE KEY `m_komites_nnmkomite_unique` (`nnmkomite`),
  KEY `m_komites_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_komites_username_i_foreign` (`username_i`),
  KEY `m_komites_username_u_foreign` (`username_u`),
  CONSTRAINT `m_komites_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_komites_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_komites_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_komites`
--

LOCK TABLES `m_komites` WRITE;
/*!40000 ALTER TABLE `m_komites` DISABLE KEYS */;
INSERT INTO `m_komites` VALUES (10,'komite 2022-2023',1,2300000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'komite 2028-2029',7,2300000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_komites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_paket_bukus`
--

DROP TABLE IF EXISTS `m_paket_bukus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_paket_bukus` (
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nkdpaket` varchar(255) NOT NULL,
  `nnmpaket` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_paket_bukus_nkdpaket_unique` (`nkdpaket`),
  KEY `m_paket_bukus_nkdperiode_foreign` (`nkdperiode`),
  CONSTRAINT `m_paket_bukus_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_paket_bukus`
--

LOCK TABLES `m_paket_bukus` WRITE;
/*!40000 ALTER TABLE `m_paket_bukus` DISABLE KEYS */;
INSERT INTO `m_paket_bukus` VALUES (1,'PB1','paket buku kelas 1 2022-2023',1,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(2,'PB2','paket buku kelas 1 2028-2029',7,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_paket_bukus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_paket_seragams`
--

DROP TABLE IF EXISTS `m_paket_seragams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_paket_seragams` (
  `nkdpaket` bigint(20) NOT NULL,
  `nnmpaket` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdpaket`),
  KEY `m_paket_seragams_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_paket_seragams_username_i_foreign` (`username_i`),
  KEY `m_paket_seragams_username_u_foreign` (`username_u`),
  CONSTRAINT `m_paket_seragams_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_paket_seragams_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_paket_seragams_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_paket_seragams`
--

LOCK TABLES `m_paket_seragams` WRITE;
/*!40000 ALTER TABLE `m_paket_seragams` DISABLE KEYS */;
INSERT INTO `m_paket_seragams` VALUES (10,'paket seragam 2022-2023',1,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'paket seragam 2028-2029',7,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_paket_seragams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_pengembangans`
--

DROP TABLE IF EXISTS `m_pengembangans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_pengembangans` (
  `nkdpengembangan` bigint(20) NOT NULL,
  `nnmpengembangan` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdpengembangan`),
  UNIQUE KEY `m_pengembangans_nnmpengembangan_unique` (`nnmpengembangan`),
  KEY `m_pengembangans_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_pengembangans_username_i_foreign` (`username_i`),
  KEY `m_pengembangans_username_u_foreign` (`username_u`),
  CONSTRAINT `m_pengembangans_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_pengembangans_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_pengembangans_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_pengembangans`
--

LOCK TABLES `m_pengembangans` WRITE;
/*!40000 ALTER TABLE `m_pengembangans` DISABLE KEYS */;
INSERT INTO `m_pengembangans` VALUES (10,'pengembangan 2022-2023',1,2500000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'pengembangan  2028-2029',7,2500000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_pengembangans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_periodes`
--

DROP TABLE IF EXISTS `m_periodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_periodes` (
  `nkdperiode` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nname` varchar(255) NOT NULL,
  `nstart` bigint(20) NOT NULL,
  `nend` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdperiode`),
  UNIQUE KEY `m_periodes_nname_unique` (`nname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_periodes`
--

LOCK TABLES `m_periodes` WRITE;
/*!40000 ALTER TABLE `m_periodes` DISABLE KEYS */;
INSERT INTO `m_periodes` VALUES (1,'2022/2023',1654016460,1685465940,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(2,'2023/2024',1685552460,1717088340,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(3,'2024/2025',1717174860,1748624340,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(4,'2025/2026',1748710860,1780333140,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(5,'2026/2027',1780246860,1811869140,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(6,'2027/2028',1811782860,1843491540,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(7,'2028/2029',1843405260,1875027540,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_periodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_ppdbs`
--

DROP TABLE IF EXISTS `m_ppdbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_ppdbs` (
  `nkdppdb` bigint(20) NOT NULL,
  `nnmppdb` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdppdb`),
  KEY `m_ppdbs_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_ppdbs_username_i_foreign` (`username_i`),
  KEY `m_ppdbs_username_u_foreign` (`username_u`),
  CONSTRAINT `m_ppdbs_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_ppdbs_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_ppdbs_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_ppdbs`
--

LOCK TABLES `m_ppdbs` WRITE;
/*!40000 ALTER TABLE `m_ppdbs` DISABLE KEYS */;
INSERT INTO `m_ppdbs` VALUES (10,'ppdb 2022-2023',1,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'ppdb  2028-2029',7,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_ppdbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_proyeks`
--

DROP TABLE IF EXISTS `m_proyeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_proyeks` (
  `nkdproyek` bigint(20) NOT NULL,
  `nnmproyek` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `ndeskripsi` text NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdproyek`),
  UNIQUE KEY `m_proyeks_nnmproyek_unique` (`nnmproyek`),
  KEY `m_proyeks_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_proyeks_username_i_foreign` (`username_i`),
  KEY `m_proyeks_username_u_foreign` (`username_u`),
  CONSTRAINT `m_proyeks_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_proyeks_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_proyeks_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_proyeks`
--

LOCK TABLES `m_proyeks` WRITE;
/*!40000 ALTER TABLE `m_proyeks` DISABLE KEYS */;
INSERT INTO `m_proyeks` VALUES (10,'proyek 1',1,'ini proyek 1 hahaha','superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_proyeks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_seragams`
--

DROP TABLE IF EXISTS `m_seragams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_seragams` (
  `nkdseragam` bigint(20) NOT NULL,
  `nnmseragam` varchar(255) NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdseragam`),
  UNIQUE KEY `m_seragams_nnmseragam_unique` (`nnmseragam`),
  KEY `m_seragams_username_i_foreign` (`username_i`),
  KEY `m_seragams_username_u_foreign` (`username_u`),
  CONSTRAINT `m_seragams_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_seragams_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_seragams`
--

LOCK TABLES `m_seragams` WRITE;
/*!40000 ALTER TABLE `m_seragams` DISABLE KEYS */;
INSERT INTO `m_seragams` VALUES (10,'seragam 1',12000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_seragams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_siswas`
--

DROP TABLE IF EXISTS `m_siswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_siswas` (
  `nid` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nnis` varchar(255) DEFAULT NULL,
  `nnisn` varchar(255) DEFAULT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nnama_lengkap` varchar(255) DEFAULT NULL,
  `nnotelp` varchar(255) DEFAULT NULL,
  `nkelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `nkelas` varchar(255) DEFAULT NULL,
  `nalamat` text DEFAULT NULL,
  `nkdstatus` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_siswas_nnis_unique` (`nnis`),
  UNIQUE KEY `m_siswas_nnisn_unique` (`nnisn`),
  KEY `m_siswas_id_user_foreign` (`id_user`),
  KEY `m_siswas_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_siswas_nkelas_foreign` (`nkelas`),
  KEY `m_siswas_nkdstatus_foreign` (`nkdstatus`),
  CONSTRAINT `m_siswas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_siswas_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_siswas_nkdstatus_foreign` FOREIGN KEY (`nkdstatus`) REFERENCES `m_status_users` (`nkdstatus`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_siswas_nkelas_foreign` FOREIGN KEY (`nkelas`) REFERENCES `m_kelas` (`nname`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_siswas`
--

LOCK TABLES `m_siswas` WRITE;
/*!40000 ALTER TABLE `m_siswas` DISABLE KEYS */;
INSERT INTO `m_siswas` VALUES (10,20,'220001','n220001',1,'Bagaskoro','085155352499','laki-laki','1','indonesia',10,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,30,'220002','n220002',1,'Rubi ahmad','085157902550','laki-laki','1','indonesia',10,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(30,40,'230001','n230001',2,'frayudha','085781077948','laki-laki','1','indonesia',10,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_siswas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_spps`
--

DROP TABLE IF EXISTS `m_spps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_spps` (
  `nkdspp` bigint(20) NOT NULL,
  `nnmspp` varchar(255) NOT NULL,
  `nkdperiode` bigint(20) unsigned NOT NULL,
  `nharga` int(11) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdspp`),
  UNIQUE KEY `m_spps_nnmspp_unique` (`nnmspp`),
  KEY `m_spps_nkdperiode_foreign` (`nkdperiode`),
  KEY `m_spps_username_i_foreign` (`username_i`),
  KEY `m_spps_username_u_foreign` (`username_u`),
  CONSTRAINT `m_spps_nkdperiode_foreign` FOREIGN KEY (`nkdperiode`) REFERENCES `m_periodes` (`nkdperiode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_spps_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_spps_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_spps`
--

LOCK TABLES `m_spps` WRITE;
/*!40000 ALTER TABLE `m_spps` DISABLE KEYS */;
INSERT INTO `m_spps` VALUES (10,'spp 2022-2023',1,2110000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'spp  2023-2024',2,2120000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(30,'spp  2024-2025',3,2130000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(40,'spp  2025-2026',4,2140000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(50,'spp  2026-2027',5,2150000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(60,'spp  2027-2028',6,2160000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(70,'spp  2028-2029',7,2170000,'superkoro',NULL,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_spps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_status_users`
--

DROP TABLE IF EXISTS `m_status_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_status_users` (
  `nkdstatus` bigint(20) NOT NULL,
  `nketerangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_status_users`
--

LOCK TABLES `m_status_users` WRITE;
/*!40000 ALTER TABLE `m_status_users` DISABLE KEYS */;
INSERT INTO `m_status_users` VALUES (10,'keterangan 1','2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_status_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_subkatakuns`
--

DROP TABLE IF EXISTS `m_subkatakuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_subkatakuns` (
  `nkdkelakun` varchar(255) NOT NULL,
  `nkdkatakun` varchar(255) NOT NULL,
  `nkdsubkatakun` varchar(255) NOT NULL,
  `nnmsubkatakun` varchar(255) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `username_u` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdsubkatakun`),
  UNIQUE KEY `m_subkatakuns_nnmsubkatakun_unique` (`nnmsubkatakun`),
  KEY `m_subkatakuns_nkdkelakun_foreign` (`nkdkelakun`),
  KEY `m_subkatakuns_nkdkatakun_foreign` (`nkdkatakun`),
  KEY `m_subkatakuns_username_i_foreign` (`username_i`),
  KEY `m_subkatakuns_username_u_foreign` (`username_u`),
  CONSTRAINT `m_subkatakuns_nkdkatakun_foreign` FOREIGN KEY (`nkdkatakun`) REFERENCES `m_katakuns` (`nkdkatakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_subkatakuns_nkdkelakun_foreign` FOREIGN KEY (`nkdkelakun`) REFERENCES `m_kelakuns` (`nkdkelakun`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `m_subkatakuns_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `m_subkatakuns_username_u_foreign` FOREIGN KEY (`username_u`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_subkatakuns`
--

LOCK TABLES `m_subkatakuns` WRITE;
/*!40000 ALTER TABLE `m_subkatakuns` DISABLE KEYS */;
INSERT INTO `m_subkatakuns` VALUES ('1.0.0.0','1.1.0.0','1.1.1.0','Kas','superkoro',NULL,'2023-03-21 02:51:05','2023-03-21 02:51:05'),('1.0.0.0','1.1.0.0','1.1.2.0','Bank','superkoro',NULL,'2023-03-21 02:51:17','2023-03-21 02:51:17'),('1.0.0.0','1.1.0.0','1.1.3.0','Deposito','superkoro',NULL,'2023-03-21 02:54:25','2023-03-21 02:54:25'),('1.0.0.0','1.1.0.0','1.1.4.0','Piutang','superkoro',NULL,'2023-03-21 02:54:37','2023-03-21 02:54:37'),('1.0.0.0','1.1.0.0','1.1.5.0','Perlengkapan','superkoro',NULL,'2023-03-21 02:54:51','2023-03-21 02:54:51'),('1.0.0.0','1.2.0.0','1.2.1.0','Bangunan','superkoro',NULL,'2023-03-21 02:56:52','2023-03-21 02:56:52'),('2.0.0.0','2.1.0.0','2.1.1.0','Hutang jangka pendek','superkoro',NULL,'2023-03-21 02:56:52','2023-03-21 02:56:53');
/*!40000 ALTER TABLE `m_subkatakuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_user_levels`
--

DROP TABLE IF EXISTS `m_user_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_user_levels` (
  `nid` int(11) NOT NULL,
  `nname` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `m_user_levels_nname_unique` (`nname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user_levels`
--

LOCK TABLES `m_user_levels` WRITE;
/*!40000 ALTER TABLE `m_user_levels` DISABLE KEYS */;
INSERT INTO `m_user_levels` VALUES (1,'admin','2023-05-25 20:06:54','2023-05-25 20:06:54'),(2,'siswa','2023-05-25 20:06:54','2023-05-25 20:06:54'),(3,'karyawan','2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `m_user_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (47,'2022_12_11_025945_create_m_kelas_table',1),(48,'2022_12_14_025946_create_m_user_levels_table',1),(49,'2022_12_14_135310_create_m_status_users_table',1),(50,'2022_12_15_025947_create_users_table',1),(51,'2023_01_17_101901_create_m_periodes_table',1),(52,'2023_01_17_120320_create_m_acaras_table',1),(53,'2023_01_17_130251_create_m_proyeks_table',1),(54,'2023_02_07_075311_create_m_kelakuns_table',1),(55,'2023_02_07_075312_create_m_katakuns_table',1),(56,'2023_02_07_075313_create_m_subkatakuns_table',1),(57,'2023_02_07_075314_create_m_akuns_table',1),(58,'2023_02_07_182732_create_m_bukus_table',1),(59,'2023_02_08_003011_create_m_paket_bukus_table',1),(60,'2023_02_08_003556_create_m_dtl_paket_bukus_table',1),(61,'2023_02_08_110850_create_m_ekskuls_table',1),(62,'2023_02_13_071027__create_formulir_pendaftarans_table',1),(63,'2023_02_13_071028_create_m_golongans_table',1),(64,'2023_02_13_074609_create_m_jabatans_table',1),(65,'2023_02_13_080223_create_m_karyawans_table',1),(66,'2023_02_18_025923_create_m_siswas_table',1),(67,'2023_03_05_122231_create_m_seragams_table',1),(68,'2023_03_05_122232_create_m_paket_seragams_table',1),(69,'2023_03_05_122233_create_m_dtl_paket_seragams_table',1),(70,'2023_03_06_095241_create_m_spps_table',1),(71,'2023_03_06_095242_create_m_assanahs_table',1),(72,'2023_03_06_095243_create_m_komites_table',1),(73,'2023_03_06_095244_create_m_kbms_table',1),(74,'2023_03_06_101655_create_m_pengembangans_table',1),(75,'2023_03_06_101656_create_m_ppdbs_table',1),(76,'2023_03_06_101657_create_m_dtl_ppdbs_table',1),(77,'2023_03_13_101942_create_typettrxes_table',1),(78,'2023_03_15_151914_create_ttrxes_table',1),(79,'2023_03_15_153720_create_detil_ttrxes_table',1),(80,'2023_04_03_132843_create_detil_ttrx_bukus_table',1),(81,'2023_04_03_133247_create_detil_ttrx_seragams_table',1),(82,'2023_04_16_151827_create_detil_ttrx_spps_table',1),(83,'2023_04_16_162002_create_detil_ttrx_assanahs_table',1),(84,'2023_04_16_163040_create_detil_ttrx_komites_table',1),(85,'2023_04_16_163846_create_detil_ttrx_kbms_table',1),(86,'2023_04_16_163908_create_detil_ttrx_pengembangans_table',1),(87,'2023_04_16_175510_create_detil_ttrx_ppdbs_table',1),(88,'2023_04_16_175511_create_detil_ttrx_formulirpendaftarans_table',1),(89,'2023_05_02_100731_create_m_dispensasi_trxes_table',1),(90,'2023_05_15_081512_create_payrolls_table',1),(91,'2023_05_15_081536_create_payroll_detils_table',1),(92,'2023_05_19_081448_create_nomor_slipgajis_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomor_slipgajis`
--

DROP TABLE IF EXISTS `nomor_slipgajis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomor_slipgajis` (
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(255) NOT NULL,
  `idpayroll` bigint(20) NOT NULL,
  `nnip` int(11) NOT NULL,
  `ntgl` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `nomor_slipgajis_idpayroll_foreign` (`idpayroll`),
  CONSTRAINT `nomor_slipgajis_idpayroll_foreign` FOREIGN KEY (`idpayroll`) REFERENCES `payrolls` (`idpayroll`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomor_slipgajis`
--

LOCK TABLES `nomor_slipgajis` WRITE;
/*!40000 ALTER TABLE `nomor_slipgajis` DISABLE KEYS */;
/*!40000 ALTER TABLE `nomor_slipgajis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_detils`
--

DROP TABLE IF EXISTS `payroll_detils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_detils` (
  `nid` bigint(20) NOT NULL,
  `idpayroll` bigint(20) NOT NULL,
  `nnip` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `jasa` int(11) NOT NULL,
  `gajipokok` int(11) NOT NULL,
  `jasangajar` int(11) NOT NULL,
  `tjabatan` int(11) NOT NULL,
  `tkhusus` int(11) NOT NULL,
  `ttransport` int(11) NOT NULL,
  `tmakan` int(11) NOT NULL,
  `overtime` int(11) NOT NULL,
  `inval` int(11) NOT NULL,
  `lembur` int(11) NOT NULL,
  `ppinjaman` int(11) NOT NULL,
  `plambat` int(11) NOT NULL,
  `pizin` int(11) NOT NULL,
  `dapen` int(11) NOT NULL,
  `tht` int(11) NOT NULL,
  `totalgaji` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nid`),
  KEY `payroll_detils_idpayroll_foreign` (`idpayroll`),
  CONSTRAINT `payroll_detils_idpayroll_foreign` FOREIGN KEY (`idpayroll`) REFERENCES `payrolls` (`idpayroll`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_detils`
--

LOCK TABLES `payroll_detils` WRITE;
/*!40000 ALTER TABLE `payroll_detils` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_detils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payrolls` (
  `idpayroll` bigint(20) NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `ndeskripsi` text DEFAULT NULL,
  `ntgl` bigint(20) DEFAULT NULL,
  `akun_pembayaran` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idpayroll`),
  KEY `payrolls_akun_pembayaran_foreign` (`akun_pembayaran`),
  CONSTRAINT `payrolls_akun_pembayaran_foreign` FOREIGN KEY (`akun_pembayaran`) REFERENCES `m_akuns` (`nkdakun`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttrxes`
--

DROP TABLE IF EXISTS `ttrxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttrxes` (
  `nnotrx` bigint(20) NOT NULL,
  `ntgltrx` bigint(20) NOT NULL,
  `nnis` varchar(255) DEFAULT NULL,
  `ndeskripsi` text DEFAULT NULL,
  `nnominal` double(11,2) NOT NULL DEFAULT 0.00,
  `nkdtype` bigint(20) NOT NULL,
  `username_i` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nnotrx`),
  KEY `ttrxes_nnis_foreign` (`nnis`),
  KEY `ttrxes_nkdtype_foreign` (`nkdtype`),
  KEY `ttrxes_username_i_foreign` (`username_i`),
  CONSTRAINT `ttrxes_nkdtype_foreign` FOREIGN KEY (`nkdtype`) REFERENCES `typettrxes` (`nkdtype`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ttrxes_nnis_foreign` FOREIGN KEY (`nnis`) REFERENCES `m_siswas` (`nnis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ttrxes_username_i_foreign` FOREIGN KEY (`username_i`) REFERENCES `users` (`username`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttrxes`
--

LOCK TABLES `ttrxes` WRITE;
/*!40000 ALTER TABLE `ttrxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttrxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typettrxes`
--

DROP TABLE IF EXISTS `typettrxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typettrxes` (
  `nkdtype` bigint(20) NOT NULL,
  `nnmtype` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nkdtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typettrxes`
--

LOCK TABLES `typettrxes` WRITE;
/*!40000 ALTER TABLE `typettrxes` DISABLE KEYS */;
INSERT INTO `typettrxes` VALUES (10,'pembayaran siswa','2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'gaji karyawan','2023-05-25 20:06:54','2023-05-25 20:06:54'),(30,'lain','2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `typettrxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `nid_level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_nid_level_foreign` (`nid_level`),
  CONSTRAINT `users_nid_level_foreign` FOREIGN KEY (`nid_level`) REFERENCES `m_user_levels` (`nid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'superkoro','eyJpdiI6Ii9VbWFZeVJwazJySWVHaTBsYmJkakE9PSIsInZhbHVlIjoiRVZpR0VrdGQ2UEZCQ2VZNHJ2SzNOVDViTWhUcVBQeEk0YlA0SnFrWjNiOD0iLCJtYWMiOiI0MzdiMjJlMjBmNDYyNGM0MjVmZGM4ZTM3ZTE3MzVlM2FkOWY2NjEyYjIwZjJiYmU2OGY0MDZlZDczZjkxZTczIiwidGFnIjoiIn0=',1,1,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(20,'220001','eyJpdiI6Ilg1MFhoRDJJajZDanErbkprQ0lvU1E9PSIsInZhbHVlIjoicjlYb0x2bWc2QmRjNFkrY0ZXNHRrUT09IiwibWFjIjoiNzliYjJkZWIxNTExY2FmODM2ZTQ1MDNjMTgxMjY5ZjExODkyOWQ1NjdhZmQwZmQzNDA2ZjliYWM4MDE5YzdiZiIsInRhZyI6IiJ9',1,2,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(30,'220002','eyJpdiI6IndpVkJaR1F3NUxjd0tsc21DYXhsWlE9PSIsInZhbHVlIjoiZHd2cm9XaFB1RVFEMytMNExoNmhBdz09IiwibWFjIjoiOTc4Njk5OWYwYzg1NzAwYzQzMDNiMTQwYjQxNzY5NjY4ZTg2MDZmMDU0ZjAwNzkxNjIxZDI0MjcxNjY3YjFhZSIsInRhZyI6IiJ9',1,2,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(40,'230001','eyJpdiI6IndsSmpVSE4va3BGTmRZOXRJTjdYVHc9PSIsInZhbHVlIjoiMXlJN29idUF3UXNnaUE2K2JNYTRqUT09IiwibWFjIjoiN2ExYzgxY2U2MmRiYWEwOTllOGNmNzVjMDA0ZmQ4MWNmYmJlMDllZDZjYzE0ZTcwYjU5ZDUyZDNmZTIwZDEwOSIsInRhZyI6IiJ9',1,2,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(50,'2023001','eyJpdiI6ImV4YkJ2dWhlenQ2TE52ZW1aRCtjaXc9PSIsInZhbHVlIjoiZDRkUGZGZ1VSM2JMU0xVQ04rTndQUT09IiwibWFjIjoiYmEzOTU5OTlmM2RmNWYwOTFmMDBjODE4ZjVjOTMyMmJkZGM3ZmQ3NzhjNjU0NTBlNzViMTEyYzA3YTQwZjI2NSIsInRhZyI6IiJ9',1,3,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(60,'2023002','eyJpdiI6IkQvT3NQRDQyU0t2QnhkdnFIYm41NWc9PSIsInZhbHVlIjoiT3N5YzE5N3FCRFNiNVI0V1oxVWVidz09IiwibWFjIjoiNTAyZTVjNzQ3YzI2OWQ3ZWI0MGI2OTliMzE4ODRlZjIzYWIzNWMwMmRjNjAzNGRkYmM4ZjViOGY5ZjhmNWE5MSIsInRhZyI6IiJ9',1,3,'2023-05-25 20:06:54','2023-05-25 20:06:54'),(70,'2023003','eyJpdiI6IllDMnlhalZLQVlDeXo5UUxidUc0bnc9PSIsInZhbHVlIjoiZ1J5T1ExeVdqWVkrNkxuSmQwcVVjQT09IiwibWFjIjoiZTkxODhkYTY0YjAxNWQ2NzIwN2YxZDJmODBhYjlhMTQ5ODg1NWJkZjQ0MTJhNmFjMDMwNGJjMTVhZmI3NmJkYiIsInRhZyI6IiJ9',1,3,'2023-05-25 20:06:54','2023-05-25 20:06:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 20:08:25
