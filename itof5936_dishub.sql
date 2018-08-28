# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: dishubkotacirebon
# ------------------------------------------------------
# Server version 5.5.5-10.1.21-MariaDB

#
# Source for table admin
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table admin
#

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'angkutan','angkutan','angkutan');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table insidentil
#

DROP TABLE IF EXISTS `insidentil`;
CREATE TABLE `insidentil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_kendaraan` varchar(255) NOT NULL,
  `nama_po` varchar(255) DEFAULT NULL,
  `no_kp` varchar(255) DEFAULT NULL,
  `maksud_perjalanan` varchar(255) DEFAULT NULL,
  `masa_berlaku` varchar(50) DEFAULT NULL,
  `kapasitas_tempduduk` varchar(255) DEFAULT NULL,
  `asal_perjalanan` varchar(255) DEFAULT NULL,
  `jml_penumpang` varchar(255) DEFAULT NULL,
  `tujuan_perjalanan` varchar(255) DEFAULT NULL,
  `rute` varchar(255) DEFAULT NULL,
  `no_surat` varchar(255) DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `no_seri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table insidentil
#

LOCK TABLES `insidentil` WRITE;
/*!40000 ALTER TABLE `insidentil` DISABLE KEYS */;
INSERT INTO `insidentil` VALUES (2,'H-1254-CD','RODA BERKAH','504.12/R.5/138/IV/2016','ROMBONGAN ZIARAH','29 JANUARI  2017','18','KENDAL','SESUAI BUKU UJI','MOGA','===KENDAL -BATANG-PEKALONGAN-PEMALANG-RANDU DONGKAL-MOGA.PP ===','0062','2017-01-27','0062');
INSERT INTO `insidentil` VALUES (3,'H-1566-BD','RODA BERKAH','504.12/R.5/1/I/2017','ROMBONGAN ZIARAH','29 JANUARI  2017','16','KENDAL','SESUAI BUKU UJI','SALATIGA','=== KENDAL - SEMARANG - DEMAK - SEMARANG - UNGARAN -  SALATIGA.PP ===','0063','2017-01-27','0063');
INSERT INTO `insidentil` VALUES (4,'H-1654-BD','RODA BERKAH','504.12/R.5/260/VII/2016','ROMBONGAN ZIARAH','28 JANUARI  2017','18','KENDAL','SESUAI BUKU UJI','MAGELANG','===KENDAL - SEMARANG - UNGARAN - BAWEN-AMABARAWA - MAGELANG.PP====','0064','2017-01-27','0064');
INSERT INTO `insidentil` VALUES (5,'H-1430-BM','SADANA','504.12/R.5/295/VIII/2016','ROMBONGAN WISATA','28 JANUARI  2017','18','KENDAL','SESUAI BUKU UJI','GUNUNG KIDUL','=== KENDAL - SEMARANG - UNGARAN - SALATIGA - BOYOLALI - KLATEN -  GUNUNG KIDUL.PP ===','0065','2017-01-28','0065');
/*!40000 ALTER TABLE `insidentil` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table kpkjp
#

DROP TABLE IF EXISTS `kpkjp`;
CREATE TABLE `kpkjp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemohon` varchar(255) NOT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `nama_po` varchar(255) DEFAULT NULL,
  `nama_pimpinanpo` varchar(255) DEFAULT NULL,
  `alamat_po` varchar(255) DEFAULT NULL,
  `trayek` varchar(255) DEFAULT NULL,
  `nama_stnk` varchar(255) DEFAULT NULL,
  `alamat_stnk` varchar(255) DEFAULT NULL,
  `no_kendaraan` varchar(255) DEFAULT NULL,
  `masa_berlaku_stnk` date DEFAULT NULL,
  `tahun_kendaraan` varchar(255) DEFAULT NULL,
  `no_buku_uji` varchar(255) DEFAULT NULL,
  `masa_berlaku_buku_uji` date DEFAULT NULL,
  `jasa_raharja` varchar(50) DEFAULT NULL,
  `masa_berlaku_kp_kjp` date DEFAULT NULL,
  `status` varchar(50) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table kpkjp
#

LOCK TABLES `kpkjp` WRITE;
/*!40000 ALTER TABLE `kpkjp` DISABLE KEYS */;
INSERT INTO `kpkjp` VALUES (6,'WE.SAMOSIR','2017-01-16','SARI BOWO','WE.SAMOSIR','Jl.Raya Timur 2 Kec.Kaliwungu Kab.Kendal','=== KALIWUNGU-KENDAL-PEGANDON-GEMUH-WELERI.PP ===','WILLEM EDY SAMOSIR MBA','Jl.Raya Timur 2 Kec.Kaliwungu Kab.Kendal','H-1732-BD','2017-07-04','1997','KL 2267','2017-07-16','Februari 2017','2017-01-26','1');
INSERT INTO `kpkjp` VALUES (7,'MOH.JAMALUDHIN, SKM.MM','2017-01-23','KSU RODA BERKAH','MOH.JAMALUDHIN, SKM.MM','Griya Pesona Asri Kav 5 Tambakrejo Patebon Kendal','=== KENDAL - CEPIRING - GEMUH - WELERI - SUKOREJO.PP ===','NUR MUIN','Pandansari 02/06 Weleri Kendal','H-1695-BD','2017-04-02','2002','KL.3059','2017-06-23','Februari 2017','2017-02-01','1');
INSERT INTO `kpkjp` VALUES (8,'MOH.JAMALUDHIN, SKM.MM','2017-02-20','KSU RODA BERKAH','MOH.JAMALUDHIN, SKM.MM','Griya Pesona Asri Kav 5 Tambakrejo Patebon Kendal','=== WELERI - PLELEN - BANYUPUTIH - LIMPUNG.PP ===','KSU RODA BERKAH','Griya Pesona Asri Kav 5 Tambakrejo Patebon Kendal','H-1236-BD','2021-01-07','2002','KL.3279','2017-08-16','Juni 2017','2017-02-23','2');
INSERT INTO `kpkjp` VALUES (9,'MOH JAMALUDDIN, SKM,MM','2017-03-01','KSU RODA BERKAH','MOH JAMALUDDIN, SKM,MM','Griya Pesona Asri Kav 5 Tambakrejo Patebon Kab.Kendal','=== BOJA  -  MIJEN - JRAKAH - TERMINAL MANGKANG / SMG.PP ===','KSU RODA BERKAH','Griya Pesona Asri Kav 5 Tambakrejo Patebon Kab.Kendal','H-1433-BM','2021-03-03','2013','KL.7982','2017-08-06','Maret 2017','2017-03-11','2');
INSERT INTO `kpkjp` VALUES (10,'',NULL,'Udinus',NULL,NULL,NULL,'121','212','H-1234-CB','2017-08-24',NULL,NULL,NULL,NULL,NULL,'2');
INSERT INTO `kpkjp` VALUES (11,'',NULL,'jnj',NULL,NULL,NULL,'jnj','njnj','H-1234-CB','2017-08-30',NULL,NULL,NULL,NULL,NULL,'2');
/*!40000 ALTER TABLE `kpkjp` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table mobil
#

DROP TABLE IF EXISTS `mobil`;
CREATE TABLE `mobil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_kendaraan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table mobil
#

LOCK TABLES `mobil` WRITE;
/*!40000 ALTER TABLE `mobil` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobil` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table samsat
#

DROP TABLE IF EXISTS `samsat`;
CREATE TABLE `samsat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_stnk` varchar(255) NOT NULL,
  `alamat_stnk` varchar(255) DEFAULT NULL,
  `no_kendaraan` varchar(255) DEFAULT NULL,
  `merk_type` varchar(255) DEFAULT NULL,
  `jenis_tahun` varchar(255) DEFAULT NULL,
  `no_rangka` varchar(255) DEFAULT NULL,
  `no_mesin` varchar(255) DEFAULT NULL,
  `pemilik_baru` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `no_ujikendaraan` varchar(255) DEFAULT NULL,
  `no_surat_ket_organda` varchar(255) DEFAULT NULL,
  `no_surat_bbn_pkbkoperasi_pt` varchar(255) DEFAULT NULL,
  `no_surat_ket_koperasi_pt` varchar(255) DEFAULT NULL,
  `no_surat_perjanjian` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat_pemilik` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table samsat
#

LOCK TABLES `samsat` WRITE;
/*!40000 ALTER TABLE `samsat` DISABLE KEYS */;
INSERT INTO `samsat` VALUES (2,'ASMUNI','Ds.Sendang Sikucing 02/03 Kec.Rowosari Kab.Kendal','H - 1239 - BD','MITSUBHISI /COLT T120 SS','MPNP/STATION WAGON/2002','MHMT120SB2R085741','4G17C285290','KJ.SRI TANJUNG GROUP','Ds. Jatipurwo RT.01 RW.01 Kec.Rowosari Kab. Kendal ','2017-01-09','KL 3280','014/ORG-KDL/01/2017','001/KJ-STG/01/2017','002/KJ-STG/01/2017','SP/003/KJ-STG/01/2017','ASMUNI','Ds.Sendang Sikucing 02/03 Kec.Rowosari Kab.Kendal','Balik Nama Angk Umum');
INSERT INTO `samsat` VALUES (3,'SLAMET ALFIN','Ds.Pucakwangi 01/01 Kec.Pageruyung Kab.Kendal','H - 1746 - BD','MITSUBHISI / FE 349','MBUS/MIKROBUS/2002','MHMFE349E2R032914','4D34242917','KSU RODA BERKAH','Griya Pesona Asri Kav. 05 Ds.Tambakrejo Kec.Patebon Kab.Kendal','2017-01-16','KL.3149','021/ORG-KDL/1/2017','010/KSU-RB/1/2017','011/KSU-RB/1/2017  ','SP/012/KSU-RB/1/2017  ','SLAMET ALFIN','Ds.Pucakwangi 01/01 Kec.Pageruyung Kab.Kendal','Balik Nama Angk Umum');
INSERT INTO `samsat` VALUES (4,'HM. SULKHAN HA','Ds.Karangayu 04/02 Kec.Cepiring Kab.Kendal','H - 1678 - BD','MITSUBHISI / FE 304','MBUS/MIKROBUS/2001','MHMFE304B1R014027','4D31106149','KSU RODA BERKAH','Griya Pesona Asri Kav. 05 Ds.Tambakrejo Kec.Patebon Kab.Kendal','2017-01-25','KL.3008','022/ORG-KDL/1/2017','023/KSU-RB/1/2017','024/KSU-RB/1/2017  ','SP/025/KSU-RB/1/2017  ','HM. SULKHAN HA','Ds.Karangayu 04/02 Kec.Cepiring Kab.Kendal','Balik Nama Angk Umum');
INSERT INTO `samsat` VALUES (5,'KSU RODA BERKAH','Griya Pesona Asri Kav. 05 Desa Tambakrejo Kec. Patebon Kab. Kendal  ','H - 1675 - BD','MITSUBISHI / FE 304','MBUS/MIKROBUS/2001','MHMFE304B1R013584','4D31105706','','','2017-01-30','KL.3021','023/ORG-KDL/1/2017','026/KSU-RB/1/2017','027/KSU-RB/1/2017  ','SP/028/KSU-RB/1/2017  ','KSU RODA BERKAH','Griya Pesona Asri Kav. 05 Desa Tambakrejo Kec. Patebon Kab. Kendal  ','Perpanjangan');
INSERT INTO `samsat` VALUES (6,'121','212','H-1234-CB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `samsat` VALUES (7,'jnj','njnj','H-1234-CB','','','','','','','2017-08-02','','','','','','','','');
/*!40000 ALTER TABLE `samsat` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sktrayek
#

DROP TABLE IF EXISTS `sktrayek`;
CREATE TABLE `sktrayek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_tgl_sk` varchar(255) DEFAULT NULL,
  `nama_po` varchar(255) DEFAULT NULL,
  `nama_pimpinanpo` varchar(255) DEFAULT NULL,
  `alamat_po` varchar(255) DEFAULT NULL,
  `trayek` varchar(255) DEFAULT NULL,
  `jenis_rekom` varchar(255) DEFAULT NULL,
  `no_kendaraan` varchar(255) DEFAULT NULL,
  `no_uji` varchar(255) DEFAULT NULL,
  `merk_type` varchar(255) DEFAULT NULL,
  `jenis_kendaraan` varchar(255) DEFAULT NULL,
  `thn_kendaraan` varchar(255) DEFAULT NULL,
  `orang` varchar(255) DEFAULT NULL,
  `barang` varchar(255) DEFAULT NULL,
  `nama_stnk` varchar(255) DEFAULT NULL,
  `alamat_stnk` varchar(255) DEFAULT NULL,
  `masa_berlaku_stnk` date DEFAULT NULL,
  `masa_berlaku_buku_uji` date DEFAULT NULL,
  `batas_lunas_jasa_raharja` varchar(50) DEFAULT NULL,
  `nama_koperasi_pt` varchar(255) DEFAULT NULL,
  `alamat_koperasi_pt` varchar(255) DEFAULT NULL,
  `ketua_sekretaris` varchar(255) DEFAULT NULL,
  `no_badan_hukum` varchar(255) DEFAULT NULL,
  `no_srt_ket` varchar(255) DEFAULT NULL,
  `tgl_srt_ket` date DEFAULT NULL,
  `no_srt_permohonan` varchar(255) DEFAULT NULL,
  `tgl_srt_permohonan` date DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `alamat_pemilik` varchar(255) DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `status` varchar(50) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Dumping data for table sktrayek
#

LOCK TABLES `sktrayek` WRITE;
/*!40000 ALTER TABLE `sktrayek` DISABLE KEYS */;
INSERT INTO `sktrayek` VALUES (1,'551.2/26/2013 tanggal 08/02/2013','SRI TANJUNG GROUP ','CASWATI ','Ds. Sambongsari Rt.5 Rw.3 Kec.Weleri Kab. Kendal','== WELERI-PLELEN-BANYUPUTIH-LIMPUNG.PP === ','SK Izin Trayek ','H-1244-BD','KL 3294','MITSUBISHI/COLT T120 SS','MPNP/STATION WAGON','2002','11','100','KJT  WAHYU BERKAH JAYA','Jl. Bahari KM.4 Rt.03 Rw.02 Kec. Rowosari Kab. Kendal ','2022-01-20','2017-07-24','Juni 2017','KJT \"WAHYU BERKAH JAYA\"','Alamat : Jl. Bahari KM 4 RT.3 RW.2 Desa Rowosari Kec.Rowosari Kab Kendal    Kode Pos : 51356','MUH. JAEDUN','Badan Hukum No. 518/BH/XIV.13/05/2016/DKUMKM','039/KJT-WBJ/2/2017','2017-02-02','039/KJT-WBJ/2/2017','2017-02-02','CASWATI ','Ds. Sambongsari Rt.5 Rw.3 Kec.Weleri Kab. Kendal','2017-02-02','2');
INSERT INTO `sktrayek` VALUES (2,'551.2/199/2013 tanggal 18/12/2013','MR','H.SANDIMAN','Ds.Penyangkringan 01/10    Kec.Weleri  Kab. Kendal',' ===SEMARANG/T.MANGKANG-KALIWUNGU-KENDAL-PEGANDON-GEMUH-WELERI.PP===','SK Izin Trayek ','H-1443 - CD','KL.3386','MITSUBISHI/FE304','MBUS/MIKROBUS','2002','16','150','PT. WIN GAPRA SISYA PUTRA','Jl. Pahlawan RT.001 RW.001 Kel.Sijeruk Kec.Kendal Kab.Kendal','2021-11-05','2017-05-14','Mei 2017','PT. WIN GAPRA SISYA PUTRA','Jl. Pahlawan RT.001 RW.001 Kel.Sijeruk Kec.Kendal Kab.Kendal','AGUS SANTOSO','Badan Hukum No. AHU-0001681.AH.01.01.TAHUN 2016 ','005/PT-WIN.GSP/12/2016','2016-12-13','005/PT-WIN.GSP/12/2016','2016-12-13','PT. WIN GAPRA SISYA PUTRA','Jl. Pahlawan RT.001 RW.001 Kel.Sijeruk Kec.Kendal Kab.Kendal','2017-01-11','2');
INSERT INTO `sktrayek` VALUES (3,'551.2/1/2012 tanggal 02/01/2012','SANTOSO','TEGUH SANTOSO','Ds. Pucakwangi  Rt.6 Rw.3 Kec.Pageruyung Kab.Kendal',' ===SUKOREJO - DEPOK - PAGERUYUNG - PUCAKWANGI.PP====','SK Izin Trayek ','H-1107-AD','CN 21156','SUZUKI FUTURA/ST130 ','MPNP/STATION WAGON','1997','11','100','TRIYANI','Ds. Sambongsari Rt.2 Rw.5 Kec. Weleri  Kab.Kendal','2019-06-26','2017-04-12','Februari 2017','KSU \"RODA BERKAH\"','Alamat : Griya Pesona Asri Kav. 05 Desa Tambakrejo Kec. Patebon Kab. Kendal Telp. 081326655427 Kode Pos 51352','HM. JAMALUDHIN SKM.MM','Badan Hukum No. 518/BH/XIV.13/05/2015/DKUMKM','019/KSU-RB/1/2017','2017-01-23','020/KSU-RB/1/2017','2017-01-23','TEGUH SANTOSO','Ds. Pucakwangi  Rt.6 Rw.3 Kec.Pageruyung Kab.Kendal','2017-01-23','1');
INSERT INTO `sktrayek` VALUES (4,'551.2/746.A/2002 tanggal 11/11/2002','MAGANGAN INDAH','SYAMSUDIN','Ds. Penanggulan Rt.04 Rw.04 Kec.Pegandon Kab.Kendal',' ===KENDAL-JL.PEMUDA-JL.PAHLAWAN-JL.T. PELAJAR PATEBON-CEPIRING-PATEBON-PEGANDON-MAGANGAN.PP====','SK Izin Trayek ','H-1191-BD','KL.3169','MITSUBISHI T120SS','MPNP/STATION WAGON','2002','11','100','ABDUL KODIR','Kebonharjo Rt.01/08 Patebon Kendal','2017-08-27','2017-08-13',' Februari 2017','KSU \"RODA BERKAH\"','Alamat : Griya Pesona Asri Kav. 05 Desa Tambakrejo Kec. Patebon Kab. Kendal Telp. 081326655427 Kode Pos 51352','HM. JAMALUDHIN SKM.MM','Badan Hukum No. 518/BH/XIV.13/05/2015/DKUMKM','028/KSU-RB/1/2017','2017-02-10','029/KSU-RB/1/2017','2017-02-10','SYAMSUDIN','Ds. Penanggulan Rt.04 Rw.04 Kec.Pegandon Kab.Kendal','2017-02-10','1');
INSERT INTO `sktrayek` VALUES (5,NULL,'Udinus',NULL,NULL,NULL,NULL,'H-1234-CB',NULL,NULL,NULL,NULL,NULL,NULL,'121','212','2017-08-24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2');
/*!40000 ALTER TABLE `sktrayek` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table status
#

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table status
#

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Perorangan');
INSERT INTO `status` VALUES (2,'Badan Hukum');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
