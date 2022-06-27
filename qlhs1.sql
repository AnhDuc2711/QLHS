-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: qlhs1
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ctquidinh`
--

DROP TABLE IF EXISTS `ctquidinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ctquidinh` (
  `noiDung` int(11) NOT NULL,
  `quiDinh_id` int(11) NOT NULL,
  PRIMARY KEY (`quiDinh_id`),
  CONSTRAINT `ctquidinh_ibfk_1` FOREIGN KEY (`quiDinh_id`) REFERENCES `quidinh` (`maqd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctquidinh`
--

LOCK TABLES `ctquidinh` WRITE;
/*!40000 ALTER TABLE `ctquidinh` DISABLE KEYS */;
INSERT INTO `ctquidinh` VALUES (15,1),(40,2),(20,3),(5,4),(9,5),(4,6),(3,7),(2,8);
/*!40000 ALTER TABLE `ctquidinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diem`
--

DROP TABLE IF EXISTS `diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `diem` (
  `maDiem` int(11) NOT NULL AUTO_INCREMENT,
  `loaiDiem` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maDiem`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diem`
--

LOCK TABLES `diem` WRITE;
/*!40000 ALTER TABLE `diem` DISABLE KEYS */;
INSERT INTO `diem` VALUES (1,'Toán'),(2,'Lý'),(3,'Hóa'),(4,'Sinh'),(5,'Sử'),(6,'Địa'),(7,'Văn'),(8,'Đạo đức'),(9,'Thể dục');
/*!40000 ALTER TABLE `diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocky`
--

DROP TABLE IF EXISTS `hocky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hocky` (
  `maHK` int(11) NOT NULL AUTO_INCREMENT,
  `tenHK` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namHoc` int(11) NOT NULL,
  PRIMARY KEY (`maHK`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocky`
--

LOCK TABLES `hocky` WRITE;
/*!40000 ALTER TABLE `hocky` DISABLE KEYS */;
INSERT INTO `hocky` VALUES (1,'hk1-2020',2020),(2,'hk2-2020',2020),(3,'hk1-2021',2021),(4,'hk2-2021',2021);
/*!40000 ALTER TABLE `hocky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocphi`
--

DROP TABLE IF EXISTS `hocphi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hocphi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tongHocPhi` int(11) NOT NULL,
  `tinhTrang` tinyint(1) DEFAULT NULL,
  `hocSinh_id` int(11) DEFAULT NULL,
  `hocKy_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hocSinh_id` (`hocSinh_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `hocphi_ibfk_1` FOREIGN KEY (`hocSinh_id`) REFERENCES `hocsinh` (`id`),
  CONSTRAINT `hocphi_ibfk_2` FOREIGN KEY (`hocKy_id`) REFERENCES `hocky` (`mahk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocphi`
--

LOCK TABLES `hocphi` WRITE;
/*!40000 ALTER TABLE `hocphi` DISABLE KEYS */;
INSERT INTO `hocphi` VALUES (1,5000000,1,4,1),(2,3000000,0,5,1),(3,900000,1,7,1),(4,2000000,0,6,1),(5,6000000,1,8,2),(6,3500000,1,9,3),(7,11400000,1,10,3),(8,6600000,1,11,4);
/*!40000 ALTER TABLE `hocphi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocsinh`
--

DROP TABLE IF EXISTS `hocsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hocsinh` (
  `id` int(11) NOT NULL,
  `lop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lop_id` (`lop_id`),
  CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`id`) REFERENCES `person` (`id`),
  CONSTRAINT `hocsinh_ibfk_2` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`malop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocsinh`
--

LOCK TABLES `hocsinh` WRITE;
/*!40000 ALTER TABLE `hocsinh` DISABLE KEYS */;
INSERT INTO `hocsinh` VALUES (6,1),(9,1),(8,2),(7,3),(5,4),(10,4),(4,6),(11,6),(13,6);
/*!40000 ALTER TABLE `hocsinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoilop`
--

DROP TABLE IF EXISTS `khoilop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `khoilop` (
  `maKhoi` int(11) NOT NULL AUTO_INCREMENT,
  `tenKhoi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maKhoi`),
  UNIQUE KEY `tenKhoi` (`tenKhoi`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoilop`
--

LOCK TABLES `khoilop` WRITE;
/*!40000 ALTER TABLE `khoilop` DISABLE KEYS */;
INSERT INTO `khoilop` VALUES (10,'Khối 10'),(11,'Khối 11'),(12,'Khối 12');
/*!40000 ALTER TABLE `khoilop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lop` (
  `maLop` int(11) NOT NULL AUTO_INCREMENT,
  `tenLop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siSo` int(11) NOT NULL,
  `khoiLop_id` int(11) NOT NULL,
  PRIMARY KEY (`maLop`),
  UNIQUE KEY `tenLop` (`tenLop`),
  KEY `khoiLop_id` (`khoiLop_id`),
  CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`khoiLop_id`) REFERENCES `khoilop` (`makhoi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lop`
--

LOCK TABLES `lop` WRITE;
/*!40000 ALTER TABLE `lop` DISABLE KEYS */;
INSERT INTO `lop` VALUES (1,'Lớp 10A1',40,10),(2,'Lớp 10A2',40,10),(3,'Lớp 11A1',40,11),(4,'Lớp 11A2',40,11),(5,'Lớp 12A1',40,12),(6,'Lớp 12A2',40,12),(7,'Lớp 10A3',40,10),(8,'Lớp 10A4',40,10),(9,'Lớp 11A3',40,11);
/*!40000 ALTER TABLE `lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mon`
--

DROP TABLE IF EXISTS `mon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mon` (
  `maMon` int(11) NOT NULL AUTO_INCREMENT,
  `tenMon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maMon`),
  UNIQUE KEY `tenMon` (`tenMon`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mon`
--

LOCK TABLES `mon` WRITE;
/*!40000 ALTER TABLE `mon` DISABLE KEYS */;
INSERT INTO `mon` VALUES (8,'Đạo đức'),(6,'Địa'),(3,'Hóa'),(2,'Lý'),(4,'Sinh'),(5,'Sử'),(9,'Thể dục'),(1,'Toán'),(7,'Văn');
/*!40000 ALTER TABLE `mon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (2),(3);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv_lop`
--

DROP TABLE IF EXISTS `nv_lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nv_lop` (
  `nv_id` int(11) NOT NULL,
  `lop_id` int(11) NOT NULL,
  PRIMARY KEY (`nv_id`,`lop_id`),
  KEY `lop_id` (`lop_id`),
  CONSTRAINT `nv_lop_ibfk_1` FOREIGN KEY (`nv_id`) REFERENCES `nhanvien` (`id`),
  CONSTRAINT `nv_lop_ibfk_2` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`malop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv_lop`
--

LOCK TABLES `nv_lop` WRITE;
/*!40000 ALTER TABLE `nv_lop` DISABLE KEYS */;
INSERT INTO `nv_lop` VALUES (3,1);
/*!40000 ALTER TABLE `nv_lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nv_mon`
--

DROP TABLE IF EXISTS `nv_mon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nv_mon` (
  `nv_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`nv_id`,`m_id`),
  KEY `m_id` (`m_id`),
  CONSTRAINT `nv_mon_ibfk_1` FOREIGN KEY (`nv_id`) REFERENCES `nhanvien` (`id`),
  CONSTRAINT `nv_mon_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `mon` (`mamon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nv_mon`
--

LOCK TABLES `nv_mon` WRITE;
/*!40000 ALTER TABLE `nv_mon` DISABLE KEYS */;
INSERT INTO `nv_mon` VALUES (3,1);
/*!40000 ALTER TABLE `nv_mon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` datetime NOT NULL,
  `diaChi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucVu` enum('BAN_GIAM_HIEU','GIAO_VU','GIAO_VIEN','HOC_SINH') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Anh Đức','Nam','2001-11-27 00:00:00','Đồng Nai','duc@gmail.com','BAN_GIAM_HIEU','duc','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(2,'Kế Quang','Nam','2001-12-05 00:00:00','HCM','quang@gmail.com','GIAO_VU','quang','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(3,'Thanh Hải','Nữ','2001-01-01 00:00:00','Hà Nội','hai@gmail.com','GIAO_VIEN','hai','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(4,'Nhật Khương','Nam','2001-05-05 00:00:00','Đồng Tháp','khuong@gmail.com','HOC_SINH','khuong','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(5,'Trung Kiên','Nu','2006-06-07 00:00:00','HCM','kien@gmail.com','HOC_SINH','kien','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(6,'Trần Việt Anh','Nam','2006-10-29 00:00:00','Hà Nội','vanh@gmail.com','HOC_SINH','vanh','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(7,'Thiên Ân','Nữ','2005-04-19 00:30:00','Tiền Giang','an@gmail.com','HOC_SINH','an','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(8,'Huỳnh Lý Bằng','Nữ','2006-06-07 00:00:00','Hậu Giang','bang@gmail.com','HOC_SINH','bang','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(9,'Song Toàn','Nữ','2005-10-20 00:00:00','Cần Thơ','toan@gmail.com','HOC_SINH','toan','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(10,'Bảo Tùng','Nam','2005-07-30 00:00:00','Sóc Trăng','tung@gmail.com','HOC_SINH','tung','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(11,'Thanh Trúc','Nam','2004-02-26 00:00:00','Bạc Liêu','truc@gmail.com','HOC_SINH','truc','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(12,'Tâm Trí','Nữ','2021-12-05 00:00:00','Long An','tamtri@gmail.com','HOC_SINH','tamtri','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\''),(13,'Luân Diệp','Nam','2021-12-06 11:06:00','Vũng Tàu','luan@gmail.com','HOC_SINH','luan','b\' ,\\xb9b\\xacY\\x07[\\x96K\\x07\\x15-#Kp\'');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quidinh`
--

DROP TABLE IF EXISTS `quidinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quidinh` (
  `maQD` int(11) NOT NULL AUTO_INCREMENT,
  `noiDungQD` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maQD`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quidinh`
--

LOCK TABLES `quidinh` WRITE;
/*!40000 ALTER TABLE `quidinh` DISABLE KEYS */;
INSERT INTO `quidinh` VALUES (1,'Tuổi học sinh tối thiểu'),(2,'Sĩ số lớp tối đa'),(3,'Tuổi học sinh tối đa'),(4,'Điểm đạt môn tối thiểu'),(5,'Số lượng môn học'),(6,'Số lớp khối 10'),(7,'Số lớp khối 11'),(8,'Số lớp khối 12');
/*!40000 ALTER TABLE `quidinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtindiem`
--

DROP TABLE IF EXISTS `thongtindiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `thongtindiem` (
  `maTTD` int(11) NOT NULL AUTO_INCREMENT,
  `diem_id` int(11) NOT NULL,
  `CTDiem` float NOT NULL,
  `hocSinh_id` int(11) NOT NULL,
  `mon_id` int(11) NOT NULL,
  `hocKy_id` int(11) NOT NULL,
  PRIMARY KEY (`maTTD`),
  KEY `diem_id` (`diem_id`),
  KEY `hocSinh_id` (`hocSinh_id`),
  KEY `mon_id` (`mon_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `thongtindiem_ibfk_1` FOREIGN KEY (`diem_id`) REFERENCES `diem` (`madiem`),
  CONSTRAINT `thongtindiem_ibfk_2` FOREIGN KEY (`hocSinh_id`) REFERENCES `thongtinmon` (`hocsinh_id`),
  CONSTRAINT `thongtindiem_ibfk_3` FOREIGN KEY (`mon_id`) REFERENCES `thongtinmon` (`mon_id`),
  CONSTRAINT `thongtindiem_ibfk_4` FOREIGN KEY (`hocKy_id`) REFERENCES `thongtinmon` (`hocky_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtindiem`
--

LOCK TABLES `thongtindiem` WRITE;
/*!40000 ALTER TABLE `thongtindiem` DISABLE KEYS */;
INSERT INTO `thongtindiem` VALUES (1,1,9,4,1,1),(2,2,8.5,4,2,1),(3,3,5.3,4,3,1),(4,4,6.4,4,4,1),(5,5,8.6,4,5,1),(6,6,7,4,6,1),(7,7,4.7,4,7,1),(8,8,5.7,4,8,1),(9,9,6.1,4,9,1),(10,1,10,5,1,1),(11,1,8.9,6,1,1),(12,1,7.9,7,1,1);
/*!40000 ALTER TABLE `thongtindiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinmon`
--

DROP TABLE IF EXISTS `thongtinmon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `thongtinmon` (
  `hocSinh_id` int(11) NOT NULL,
  `mon_id` int(11) NOT NULL,
  `hocKy_id` int(11) NOT NULL,
  PRIMARY KEY (`hocSinh_id`,`mon_id`,`hocKy_id`),
  KEY `mon_id` (`mon_id`),
  KEY `hocKy_id` (`hocKy_id`),
  CONSTRAINT `thongtinmon_ibfk_1` FOREIGN KEY (`hocSinh_id`) REFERENCES `hocsinh` (`id`),
  CONSTRAINT `thongtinmon_ibfk_2` FOREIGN KEY (`mon_id`) REFERENCES `mon` (`mamon`),
  CONSTRAINT `thongtinmon_ibfk_3` FOREIGN KEY (`hocKy_id`) REFERENCES `hocky` (`mahk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinmon`
--

LOCK TABLES `thongtinmon` WRITE;
/*!40000 ALTER TABLE `thongtinmon` DISABLE KEYS */;
INSERT INTO `thongtinmon` VALUES (4,1,1),(5,1,1),(6,1,1),(7,1,1),(4,2,1),(4,3,1),(4,4,1),(4,5,1),(4,6,1),(4,7,1),(4,8,1),(4,9,1);
/*!40000 ALTER TABLE `thongtinmon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07  5:32:28
