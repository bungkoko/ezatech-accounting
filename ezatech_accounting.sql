/*Table structure for table `t_akun` */

DROP TABLE IF EXISTS `t_akun`;

CREATE TABLE `t_akun` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `debitkredit` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_akun` */

insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1110,'Kas','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1111,'Kas Tunai','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1112,'Kas Non Tunai','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1120,'Piutang Dagang','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1130,'Perlengkapan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1140,'Persediaan Barang Dagang','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1210,'Peralatan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1211,'Akumulasi Penyusutan Peralatan','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1220,'Gedung','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1221,'Akumulasi Penyusutan Gedung','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1230,'Kendaraan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1231,'Akumulasi Penyusutan Kendaraan','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (1240,'Tanah','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (2110,'Hutang Dagang','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (2120,'Hutang Usaha','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (2130,'Hutang Konsinyasi','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (3110,'Modal Pemilik','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (3120,'Prive','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (4110,'Pendapatan Penjualan','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (4120,'Retur Penjualan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (4210,'Harga Pokok Penjualan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (4310,'Laba Konsinyasi','K');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5110,'Biaya Gaji','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5120,'Biaya Listrik','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5130,'Biaya Lain - lain','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5140,'Biaya Penyusutan Peralatan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5150,'Biaya Penyusutan Gedung','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (5160,'Biaya Penyusutan Kendaraan','D');
insert  into `t_akun`(`id`,`nama`,`debitkredit`) values (6110,'Pendapatan Lain - lain','K');

/*Table structure for table `t_barang_kategori` */

DROP TABLE IF EXISTS `t_barang_kategori`;

CREATE TABLE `t_barang_kategori` (
  `kd_kategori` varchar(20) NOT NULL DEFAULT '',
  `nama_kategori` varchar(25) NOT NULL,
  `hapus` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_barang_kategori` */

insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00001','remote','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00002','regulator','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00003','senter','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00004','lampu','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00005','baterai','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00006','bracket','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00007','selang','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00008','mp3','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00009','hair dryer','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00010','tape','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00011','parabola','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00012','stop kontak','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00013','blender','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00014','dispenser','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00015','ricecooker','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00016','roll kabel','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00017','mixer','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00018','setrika','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00019','kompor','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00020','mesin cuci','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00021','kulkas','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00022','tv','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00023','ac','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00024','cup sealer','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00025','raket nyamuk','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00026','antena','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00027','receiver','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00028','panci','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00029','vacum cleaner','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00030','seker','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00031','roda kulkas','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00032','speaker','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00033','dvd','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00034','home teather','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00035','mic','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00036','showcase','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00037','freezer','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00038','air cooler','0');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00039','kipas angin','1');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00040','coba dulu','1');
insert  into `t_barang_kategori`(`kd_kategori`,`nama_kategori`,`hapus`) values ('KB-00041','coba saya edit','1');

/*Table structure for table `t_barang` */

DROP TABLE IF EXISTS `t_barang`;

CREATE TABLE `t_barang` (
  `kd_barang` varchar(20) NOT NULL DEFAULT '',
  `barcode` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL DEFAULT '',
  `kd_kategori` varchar(30) NOT NULL,
  `kd_satuan` varchar(30) NOT NULL,
  `harga_beli` double(11,2) NOT NULL DEFAULT '0.00',
  `hpp` double(11,2) NOT NULL DEFAULT '0.00',
  `harga_jual` double(11,2) NOT NULL DEFAULT '0.00',
  `stok_awal` double(11,2) NOT NULL DEFAULT '0.00',
  `stok_update` double(11,2) NOT NULL DEFAULT '0.00',
  `hapus` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_barang`),
  KEY `Kode_Kategori` (`kd_kategori`),
  KEY `Kode_Kategori_2` (`kd_kategori`),
  KEY `Kode_Satuan` (`stok_update`),
  KEY `Nama_Obat` (`nama_barang`) USING BTREE,
  KEY `Kode_Obat` (`kd_barang`) USING BTREE,
  KEY `Kode_Obat_2` (`kd_barang`) USING BTREE,
  CONSTRAINT `t_barang_ibfk_1` FOREIGN KEY (`kd_kategori`) REFERENCES `t_barang_kategori` (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_barang` */

insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00001','I-00001','Remote Cina Universal','KB-00001','SB-00001',8000.00,8000.00,10000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00003','I-00003','regulator quantum edit','KB-00002','SB-00001',62500.00,62500.00,70000.00,0.00,0.00,'1');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00006','I-00006','lampu emergency mitsuyama','KB-00038','SB-00006',47500.00,47500.00,55000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00038','I-00038','ac 1/2pk aux test edit','KB-00038','SB-00004',1055000.00,1370000.00,1500000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00050','test','test','KB-00038','SB-00005',1000.00,1000.00,2000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00060','0975','mboh ya','KB-00013','SB-00003',7000.00,7000.00,10000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00061','112233','test bisa ga 61','KB-00023','SB-00002',9000.00,9000.00,11000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00062','234','semoga sukses','KB-00026','SB-00005',1000.00,1000.00,12000.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00063','I-00063','baru kok','KB-00023','SB-00002',1000.00,1000.00,1500.00,0.00,0.00,'0');
insert  into `t_barang`(`kd_barang`,`barcode`,`nama_barang`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`,`hapus`) values ('I-00064','000','testing lagi','KB-00004','SB-00005',1000.00,1000.00,1500.00,0.00,0.00,'0');

/*Table structure for table `t_barang_satuan` */

DROP TABLE IF EXISTS `t_barang_satuan`;

CREATE TABLE `t_barang_satuan` (
  `kd_satuan` varchar(20) NOT NULL DEFAULT '',
  `nama_satuan` varchar(25) NOT NULL,
  `hapus` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_barang_satuan` */

insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00001','pieces','0');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00002','box','0');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00003','lusin','0');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00004','kodi','0');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00005','kotak','0');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00006','meter','1');
insert  into `t_barang_satuan`(`kd_satuan`,`nama_satuan`,`hapus`) values ('SB-00007','testing guys','1');

/*Table structure for table `t_byr_piutang` */

DROP TABLE IF EXISTS `t_byr_piutang`;

CREATE TABLE `t_byr_piutang` (
  `kd_nota` varchar(14) NOT NULL DEFAULT '',
  `kd_jual` varchar(45) DEFAULT NULL,
  `kd_user` varchar(4) DEFAULT NULL,
  `tgl_nota` datetime DEFAULT NULL,
  `dskn_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `denda_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `byr_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `ket_nota` varchar(250) DEFAULT NULL,
  `sts_nota` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_nota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_byr_piutang` */

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `kd_customer` varchar(20) NOT NULL DEFAULT '',
  `nama_customer` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telp1` varchar(20) DEFAULT NULL,
  `no_telp2` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `hapus` int(1) NOT NULL,
  PRIMARY KEY (`kd_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_customer` */

insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00001','ade','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00002','ardika','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00003','asta','567','567','6767','sw3dd@gggg.n',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00004','aan','999','99','999','9999@gmail.com',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00005','adinda','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00006','banu','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00007','broto','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00008','bayu','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00009','binar','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00010','cindy','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00011','dika','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00012','dendy','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00013','doni','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00014','desty','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00015','emma','23123','213213','','weqw@ff.f',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00016','gani','eee','223123','','dsdsds@dd.v',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00017','iin','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00018','indah','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00019','jeje','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00020','mustofa','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00021','mukadiyat','','','','',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00022','musa','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00023','muldaka','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00024','nita','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00025','neri','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00026','ninin','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00027','neta','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00028','nindi','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00029','riri','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00030','rico','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00031','rinda','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00032','rina','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00033','rama','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00034','rani','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00035','risa','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00036','ridho','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00037','risang','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00038','rere','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00039','rendi','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00040','renda','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00041','reza','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00042','roro','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00043','sasa','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00044','sinta','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00045','sisil','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00046','sudi','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00047','sena','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00048','tere','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00049','tata','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00050','tami','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00051','toto','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00052','wendi','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00053','vella','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00054','vivin','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00055','vino','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00056','vila','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00057','vina','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00058','vira','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00059','vita','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00060','xena','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00061','yohanes','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00062','yeyen','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00063','yosua','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00064','yeyen','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00065','yoyo','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00066','yongki','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00067','yeni','','','','',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00068','ty','ty','435435','','asd@gmail.com',1);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00069','mantaf44','2131234','1233','','122232@gmail.com',0);
insert  into `t_customer`(`kd_customer`,`nama_customer`,`alamat`,`no_telp1`,`no_telp2`,`email`,`hapus`) values ('CS-00070','subejo','smg','123213','','asdasd@s.c',0);

/*Table structure for table `t_item_kategori` */

DROP TABLE IF EXISTS `t_item_kategori`;

CREATE TABLE `t_item_kategori` (
  `kd_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_item_kategori` */

insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00001','remote');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00002','regulator');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00003','senter');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00004','lampu');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00005','baterai');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00006','bracket');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00007','selang');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00008','mp3');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00009','hair dryer');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00010','tape');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00011','parabola');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00012','stop kontak');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00013','blender');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00014','dispenser');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00015','ricecooker');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00016','roll kabel');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00017','mixer');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00018','setrika');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00019','kompor');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00020','mesin cuci');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00021','kulkas');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00022','tv');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00023','ac');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00024','cup sealer');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00025','raket nyamuk');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00026','antena');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00027','receiver');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00028','panci');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00029','vacum cleaner');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00030','seker');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00031','roda kulkas');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00032','speaker');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00033','dvd');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00034','home teather');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00035','mic');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00036','showcase');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00037','freezer');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00038','air cooler');
insert  into `t_item_kategori`(`kd_kategori`,`nama_kategori`) values ('KB-00039','kipas angin');

/*Table structure for table `t_item` */

DROP TABLE IF EXISTS `t_item`;

CREATE TABLE `t_item` (
  `kd_item` varchar(20) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `nama_item` varchar(50) NOT NULL,
  `kd_kategori` varchar(30) NOT NULL,
  `kd_satuan` varchar(30) NOT NULL,
  `harga_beli` double(11,2) NOT NULL,
  `hpp` double(11,2) NOT NULL,
  `harga_jual` double(11,2) NOT NULL,
  `stok_awal` double(11,2) NOT NULL,
  `stok_update` double(11,2) NOT NULL,
  PRIMARY KEY (`kd_item`),
  KEY `Nama_Obat` (`nama_item`),
  KEY `Kode_Obat` (`kd_item`),
  KEY `Kode_Obat_2` (`kd_item`),
  KEY `Kode_Kategori` (`kd_kategori`),
  KEY `Kode_Kategori_2` (`kd_kategori`),
  KEY `Kode_Satuan` (`stok_update`),
  CONSTRAINT `t_item_ibfk_1` FOREIGN KEY (`kd_kategori`) REFERENCES `t_item_kategori` (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_item` */

insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00001','I-00001','Remote Cina Universal','KB-00001','',8000.00,10400.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00002','I-00002','Remote LG','KB-00001','',15000.00,19500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00003','I-00003','regulator quantum','KB-00002','',62500.00,81250.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00004','I-00004','regulator wingas','KB-00002','',52500.00,68250.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00005','I-00005','senter cina','KB-00003','',12500.00,16250.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00006','I-00006','lampu emergency mitsuyama','KB-00004','',47500.00,61750.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00007','I-00007','baterai alkaline','KB-00005','',1250.00,1625.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00008','I-00008','bracket dolpin','KB-00006','',55000.00,71500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00009','I-00009','selang regulator miyako','KB-00007','',22500.00,29250.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00010','I-00010','mp3 advance','KB-00008','',22500.00,29250.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00011','I-00011','hair dryer wigo','KB-00009','',89000.00,115700.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00012','I-00012','radio international','KB-00010','',65000.00,84500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00013','I-00013','parabola lmb2','KB-00011','',375000.00,487500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00014','I-00014','stop kontak broco','KB-00012','',7500.00,9750.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00015','I-00015','roda kulkas cina','KB-00031','',85000.00,110500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00016','I-00016','speaker lavega','KB-00032','',1775000.00,2307500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00017','I-00017','speaker advance','KB-00032','',1950000.00,2535000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00018','I-00018','dvd nagoya','KB-00033','',335000.00,435500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00019','I-00019','home teather polytron','KB-00034','',6500000.00,8450000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00020','I-00020','mic sony','KB-00035','',79000.00,102700.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00021','I-00021','showcase polytron','KB-00036','',1475000.00,1917500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00022','I-00022','freezer LG','KB-00037','',1150000.00,1495000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00023','I-00023','magic com 1,8L cosmos','KB-00015','',310000.00,403000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00024','I-00024','roll kabel cina','KB-00016','',4000.00,5200.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00025','I-00025','kabel listrik','KB-00016','',3500.00,4550.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00026','I-00026','mixer philips','KB-00017','',195000.00,253500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00027','I-00027','blender cosmos','KB-00013','',319000.00,414700.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00028','I-00028','dispenser miyako','KB-00014','',775000.00,1007500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00029','I-00029','setrika maspion','KB-00018','',36500.00,47450.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00030','I-00030','kompor 1 tungku rinnai','KB-00019','',99348.00,129152.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00031','I-00031','kompor 2 tungku panalux','KB-00019','',145000.00,188500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00032','I-00032','mesin cuci 8kg sharp','KB-00020','',1650000.00,2145000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00033','I-00033','mesin cuci 10kg sanken','KB-00020','',1750000.00,2275000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00034','I-00034','kulkas 1 pintu uchida','KB-00021','',950000.00,1235000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00035','I-00035','kulkas 2 pintu LG','KB-00021','',1650000.00,2145000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00036','I-00036','tv tabung 21inc polytron','KB-00022','',750000.00,975000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00037','I-00037','tv led 24inc LG','KB-00022','',4500000.00,5850000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00038','I-00038','ac 1/2pk aux','KB-00023','',1050000.00,1365000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00039','I-00039','ac 1pk midea','KB-00023','',1350000.00,1755000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00040','I-00040','ac 2pk LG','KB-00023','',2650000.00,3445000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00041','I-00041','cup sealer mayaka','KB-00024','',725000.00,942500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00042','I-00042','raket nyamuk cina','KB-00025','',7500.00,9750.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00043','I-00043','antena niko','KB-00026','',15000.00,19500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00044','I-00044','receiver matrix','KB-00027','',250000.00,325000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00045','I-00045','panci presto maxim 5L','KB-00028','',45000.00,58500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00046','I-00046','vacum cleaner mayaka','KB-00029','',250000.00,325000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00047','I-00047','air cooler mayaka','KB-00038','',625000.00,812500.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00048','I-00048','kipas angin SF GMC','KB-00039','',150000.00,195000.00,1.00,0.00,0.00);
insert  into `t_item`(`kd_item`,`barcode`,`nama_item`,`kd_kategori`,`kd_satuan`,`harga_beli`,`hpp`,`harga_jual`,`stok_awal`,`stok_update`) values ('I-00049','I-00049','kipas angin BF panasonic','KB-00039','',175000.00,227500.00,1.00,0.00,0.00);

/*Table structure for table `t_item_satuan` */

DROP TABLE IF EXISTS `t_item_satuan`;

CREATE TABLE `t_item_satuan` (
  `kd_satuan` varchar(20) NOT NULL,
  `nama_satuan` varchar(25) NOT NULL,
  PRIMARY KEY (`kd_satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_item_satuan` */

insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00001','pieces');
insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00002','box');
insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00003','lusin');
insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00004','kodi');
insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00005','kotak');
insert  into `t_item_satuan`(`kd_satuan`,`nama_satuan`) values ('SB-00006','meter');

/*Table structure for table `t_jual` */

DROP TABLE IF EXISTS `t_jual`;

CREATE TABLE `t_jual` (
  `kd_jual` varchar(21) NOT NULL DEFAULT '',
  `tanggal_jual` datetime DEFAULT NULL,
  `jam_jual` varchar(8) NOT NULL DEFAULT '00:00:00',
  `jenis_jual` varchar(45) DEFAULT NULL,
  `kd_pegawai` varchar(4) DEFAULT NULL,
  `kd_customer` varchar(8) DEFAULT NULL,
  `dpp_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `ppn_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `total_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `bayar_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `jatuh_tempo` datetime DEFAULT NULL,
  `status_jual` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_jual`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_jual` */

/*Table structure for table `t_jual_detail` */

DROP TABLE IF EXISTS `t_jual_detail`;

CREATE TABLE `t_jual_detail` (
  `kd_jual` varchar(45) NOT NULL DEFAULT '',
  `kd_brg` varchar(8) NOT NULL DEFAULT '',
  `jml_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `hpp_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `hrg_jual` decimal(10,0) NOT NULL DEFAULT '0',
  `dskn_jual` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_detail` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_jual_detail` */

/*Table structure for table `t_jurnal` */

DROP TABLE IF EXISTS `t_jurnal`;

CREATE TABLE `t_jurnal` (
  `id_jurnal` char(14) NOT NULL DEFAULT '',
  `no_ref` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `keterangan` varchar(75) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id_jurnal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_jurnal` */

insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('101010','53','2016-12-06','Kas Masuk',0);
insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('111111','1','2016-12-01','Kas Keluar',0);
insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('2','3','2016-12-01','Kas Keluar',0);
insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('344334','30','2016-12-13','Kas Masuk',0);
insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('755','51','2016-12-07','Kas Masuk',0);
insert  into `t_jurnal`(`id_jurnal`,`no_ref`,`tgl`,`keterangan`,`total`) values ('78919199','52','2016-12-28','Kas Masuk',0);

/*Table structure for table `t_jurnal_detail` */

DROP TABLE IF EXISTS `t_jurnal_detail`;

CREATE TABLE `t_jurnal_detail` (
  `id_jurnal` char(14) DEFAULT NULL,
  `id_akun` char(4) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `debet` double(10,0) DEFAULT NULL,
  `kredit` double(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_jurnal_detail` */

insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1231','fedf',0,33333);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1110','111',1111,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1231','fedf',0,33333);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1110','111',1111,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1231','fedf',0,33333);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('3333','1110','111',1111,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('755','1110','22222',22222,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('78919199','1111','11',111,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('78919199','1120','testes',300000,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('101010','1110','1000',1000,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('101010','1120','1000',2000,0);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('111111','1110','1111',0,11111111);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('111111','1120','xxx',0,111111);
insert  into `t_jurnal_detail`(`id_jurnal`,`id_akun`,`ket`,`debet`,`kredit`) values ('2','1211','1111',11111111,0);

/*Table structure for table `t_kas_keluar` */

DROP TABLE IF EXISTS `t_kas_keluar`;

CREATE TABLE `t_kas_keluar` (
  `id_kaskeluar` int(15) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id_kaskeluar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `t_kas_keluar` */

insert  into `t_kas_keluar`(`id_kaskeluar`,`tgl`,`total`) values (1,'2016-12-01',NULL);
insert  into `t_kas_keluar`(`id_kaskeluar`,`tgl`,`total`) values (2,'2016-12-01',NULL);
insert  into `t_kas_keluar`(`id_kaskeluar`,`tgl`,`total`) values (3,'2016-12-01',NULL);

/*Table structure for table `t_kas_masuk` */

DROP TABLE IF EXISTS `t_kas_masuk`;

CREATE TABLE `t_kas_masuk` (
  `id_kasmasuk` int(15) NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`id_kasmasuk`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `t_kas_masuk` */

insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (1,'2016-12-17',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (2,'2016-11-30',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (3,'2016-11-30',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (4,'2016-11-30',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (5,'2016-12-15',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (6,'2016-12-15',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (7,'2016-12-15',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (8,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (9,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (10,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (11,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (12,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (13,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (14,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (15,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (16,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (17,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (18,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (19,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (20,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (21,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (22,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (23,'2016-12-14',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (24,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (25,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (26,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (27,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (28,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (29,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (30,'2016-12-13',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (31,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (32,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (33,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (34,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (35,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (36,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (37,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (38,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (39,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (40,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (41,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (42,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (43,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (44,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (45,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (46,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (47,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (48,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (49,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (50,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (51,'2016-12-07',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (52,'2016-12-28',NULL);
insert  into `t_kas_masuk`(`id_kasmasuk`,`tgl`,`total`) values (53,'2016-12-06',NULL);

/*Table structure for table `t_kas_masuk_detail` */

DROP TABLE IF EXISTS `t_kas_masuk_detail`;

CREATE TABLE `t_kas_masuk_detail` (
  `id_kasmasuk` int(15) NOT NULL,
  `id_akun` char(4) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `nominal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_kas_masuk_detail` */

insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (1,'1110','modal',10);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (1,'1112','ee',17);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (1,'1220','ew',23);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (1,'1140','wew',43);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (1,'1112','we',55);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (2,'1211','1313',777777);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (2,'1210','mmmm',667567);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (3,'1211','1313',777777);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (3,'1210','mmmm',667567);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (4,'1211','1313',777777);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (4,'1210','mmmm',667567);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (5,'1211','mantaf123',34342);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (5,'1110','taptap',45434);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (5,'1140','ttt',4345345);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (6,'1211','mantaf123',34342);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (6,'1110','taptap',45434);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (6,'1140','ttt',4345345);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (7,'1211','mantaf123',34342);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (7,'1112','234234',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (7,'1210','333',443434);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (7,'1110','',0);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (8,'1112','hutang',1000000);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (8,'1120','33333',1000000);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (9,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (9,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (9,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (10,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (10,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (10,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (11,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (11,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (11,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (12,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (12,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (12,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (13,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (13,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (13,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (14,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (14,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (14,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (15,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (15,'1110','1212',1234);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (15,'1112','1212',222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (16,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (16,'1110','666',99);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (17,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (17,'1110','666',99);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (18,'1120','11',12222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (18,'1110','4444',44);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (19,'1110','444',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (19,'1120','555',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (20,'1110','444',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (20,'1120','555',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (21,'1110','444',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (21,'1120','555',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (22,'1110','444',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (22,'1120','555',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (23,'1110','444',4444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (23,'1120','4',333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (24,'1110','333',6666);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (24,'1112','4345',4454);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (25,'1110','333',6666);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (25,'1112','4345',4454);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (26,'1110','333',6666);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (26,'1112','4345',4454);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (27,'1110','213',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (27,'5140','1123123',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (27,'3110','123',44444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (28,'1110','213',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (28,'5140','1123123',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (28,'3110','123',44444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (29,'1110','213',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (29,'5140','1123123',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (29,'3110','123',44444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (30,'1110','213',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (30,'5140','1123123',123123);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (30,'3110','123',44444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (31,'1110','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (31,'1120','ddf',334444);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (32,'1211','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (33,'1220','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (34,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (35,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (35,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (36,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (36,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (37,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (37,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (38,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (38,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (39,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (39,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (40,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (40,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (41,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (41,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (42,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (42,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (43,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (43,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (44,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (44,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (45,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (45,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (46,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (46,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (47,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (47,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (48,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (48,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (49,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (49,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (50,'1231','fedf',33333);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (50,'1110','111',1111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (51,'1110','22222',22222);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (52,'1111','11',111);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (52,'1120','testes',300000);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (0,NULL,NULL,NULL);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (53,'1110','1000',1000);
insert  into `t_kas_masuk_detail`(`id_kasmasuk`,`id_akun`,`ket`,`nominal`) values (53,'1120','1000',2000);

/*Table structure for table `t_master_buku_besar` */

DROP TABLE IF EXISTS `t_master_buku_besar`;

CREATE TABLE `t_master_buku_besar` (
  `Kode_Akun` char(10) NOT NULL,
  `Nama_Akun` varchar(50) NOT NULL,
  `Jenis_Akun` varchar(30) NOT NULL,
  `Debet/Kredit` varchar(10) NOT NULL,
  `Saldo_Awal` int(11) NOT NULL DEFAULT '0',
  `Saldo_Akhir` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Kode_Akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_master_buku_besar` */

insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1110','kas','Aktiva Lancar','Debet',100000000,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1120','piutang Dagang','Aktiva Lancar','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1130','Perlengkapan','Aktiva Lancar','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1140','Persediaan Barang Dagang','Aktiva Lancar','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1210','peralatan','Aktiva Tetap','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1211','Akumulasi penyusutan peralatan','Aktiva Tetap','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1220','Gedung','Aktiva Tetap','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1221','Akumulasi penyusutan Gedung','Aktiva Tetap','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1230','Tanah','Aktiva Tetap','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1240','Kendaraan','Aktiva Tetap','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('1241','Akumulasi Penyusutan Kendaraan','Aktiva Tetap','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('2110','Hutang Dagang','Hutang','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('2120','Hutang Usaha','Hutang','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('3110','Modal Pemilik','Modal','Kredit',100000000,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('4110','Pendapatan Penjualan','Pendapatan','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('4120','Retur Penjualan','Pendapatan','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('4130','Potongan Penjualan','Pendapatan','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('4210','Harga Pokok Penjualan','Pendapatan','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5110','Biaya Gaji','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5120','Biaya Listrik','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5130','Biaya Lain - lain','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5140','Biaya Penyusutan kendaraan','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5141','Biaya Penyusutan Peralatan','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5142','Biaya Penyusutan Gedung','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5150','Beban Sewa Gedung','Beban / Biaya','Debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5160','Beban Pemeliharaan Kendaraan','Beban / Biaya','debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5170','Beban Asuransi','Beban / Biaya','debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('5180','Beban Perlengkapan Kantor','Beban / Biaya','debet',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('6110','Pendapatan lain-lain','Pendapatan lain -lain','Kredit',0,0);
insert  into `t_master_buku_besar`(`Kode_Akun`,`Nama_Akun`,`Jenis_Akun`,`Debet/Kredit`,`Saldo_Awal`,`Saldo_Akhir`) values ('7110','Prive','Prive','Debet',0,0);

/*Table structure for table `t_menu_akses` */

DROP TABLE IF EXISTS `t_menu_akses`;

CREATE TABLE `t_menu_akses` (
  `kd_menu` char(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kd_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_menu_akses` */

insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN1','KAS MASUK');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN10','DATA PEMASOK');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN10_2','DATA CUSTOMER');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN11','DATA BARANG');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN12','BUKU BESAR');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN13','DATA MASTER');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN14','HARGA FIFO');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN15','DATA PEMBELIAN');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN16','DATA RETUR PEMBELIAN');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN17','DATA HUTANG');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN18','DATA PENJUALAN');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN19','CETAK NOTA');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN2','KAS KELUAR');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN20','CETAK NOTA BELI');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN21','LAP. AKUNTANTSI');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN22','OPEN PERIODE');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN3','PEMBELIAN');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN4','PEMBAYARAN HUTANG');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN5','RETUR BELI');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN6','PENJUALAN NON RESEP');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN7','PENJUALAN RESEP');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN8','GANTI PASSWORD');
insert  into `t_menu_akses`(`kd_menu`,`nama`) values ('MN9','DATA PEGAWAI');

/*Table structure for table `t_menu_akses_hak_user` */

DROP TABLE IF EXISTS `t_menu_akses_hak_user`;

CREATE TABLE `t_menu_akses_hak_user` (
  `kd_user` char(20) DEFAULT NULL,
  `kd_menu` char(20) DEFAULT NULL,
  KEY `kd_menu` (`kd_menu`),
  KEY `kd_user` (`kd_user`),
  CONSTRAINT `t_menu_akses_hak_user_ibfk_1` FOREIGN KEY (`kd_menu`) REFERENCES `t_menu_akses` (`kd_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_menu_akses_hak_user` */

insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN22');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN1');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN2');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN3');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN4');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN5');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN6');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN8');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN9');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN10');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN12');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN11');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN13');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN14');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN15');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN16');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN17');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN19');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN18');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN20');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN21');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN22');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN1');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN2');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN3');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN4');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN5');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN6');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN8');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN9');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN10');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN10_2');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN11');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN12');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN13');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN14');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN15');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN16');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN17');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN18');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN19');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN20');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00002','MN21');
insert  into `t_menu_akses_hak_user`(`kd_user`,`kd_menu`) values ('KR-00001','MN10_2');

/*Table structure for table `t_non_tunai` */

DROP TABLE IF EXISTS `t_non_tunai`;

CREATE TABLE `t_non_tunai` (
  `id_payment` varchar(30) NOT NULL,
  `nama_payment` varchar(50) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_non_tunai` */

/*Table structure for table `t_open_prd` */

DROP TABLE IF EXISTS `t_open_prd`;

CREATE TABLE `t_open_prd` (
  `id_open` char(20) NOT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `total_saldo` double(10,0) DEFAULT NULL,
  `status_open` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_open`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_open_prd` */

insert  into `t_open_prd`(`id_open`,`tgl_awal`,`tgl_akhir`,`total_saldo`,`status_open`) values ('OP-20161214','2016-12-14',NULL,0,'closed');
insert  into `t_open_prd`(`id_open`,`tgl_awal`,`tgl_akhir`,`total_saldo`,`status_open`) values ('OP-20161228','2016-12-28',NULL,0,'closed');
insert  into `t_open_prd`(`id_open`,`tgl_awal`,`tgl_akhir`,`total_saldo`,`status_open`) values ('OP-20161229','2016-12-29',NULL,0,'closed');

/*Table structure for table `t_open_prd_detail` */

DROP TABLE IF EXISTS `t_open_prd_detail`;

CREATE TABLE `t_open_prd_detail` (
  `id_open` char(20) DEFAULT NULL,
  `id_akun` int(4) DEFAULT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_open_prd_detail` */

insert  into `t_open_prd_detail`(`id_open`,`id_akun`,`debet`,`kredit`,`ket`) values ('OP-20161214',1110,998,NULL,'open periode');
insert  into `t_open_prd_detail`(`id_open`,`id_akun`,`debet`,`kredit`,`ket`) values ('OP-20161229',1110,10000000,0,'open periode');
insert  into `t_open_prd_detail`(`id_open`,`id_akun`,`debet`,`kredit`,`ket`) values ('OP-20161228',1120,3000,5000,'open periode');

/*Table structure for table `t_pegawai` */

DROP TABLE IF EXISTS `t_pegawai`;

CREATE TABLE `t_pegawai` (
  `id_pegawai` char(20) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL DEFAULT '',
  `tempat_lahir` varchar(30) NOT NULL DEFAULT '',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `alamat` varchar(50) NOT NULL DEFAULT '',
  `telp` varchar(20) NOT NULL DEFAULT '',
  `status_aktif` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_pegawai` */

insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00001','David','Grobogan','Laki-Laki','semarang','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00002','chichi','','Perempuan','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00003','susan','','Perempuan','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00004','denis','','Laki-Laki','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00005','ali','','Laki-Laki','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00006','ikhsan','','Laki-Laki','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00007','cindy','','Perempuan','','',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00008','Budi SU','Semarang','Laki-Laki','Lempersari','0875745',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00009','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00010','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00011','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00012','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00013','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00014','asdasd','222','Perempuan','dasd','234234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00015','234','234','Laki-Laki','234','234',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00016','mantapjiwa','123','Laki-Laki','qwe','324',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00017','asd','qwe','Perempuan','qweqwe','2323',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00018','343','34','Perempuan','234234','324',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00019','3wqe','qwe','Laki-Laki','qwe','23423',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00020','wer','wer','Laki-Laki','werewr','123123',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00021','qwe, mantap jiwa','smgd','Laki-Laki','jl.gggggw','222221',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00022','asdf','qwef','Laki-Laki','wqef','22232',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00023','wer','2334','Perempuan','weqwe','123',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00024','Asdqw','qwe','Perempuan','123','4123',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00025','Mantaps Jiwa','12','Perempuan','smg','213',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00026','qqq','qq','Perempuan','ww','22',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00027','123','123','Perempuan','123','231',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00028','subejo','smg','Laki-Laki','timur','123123',0);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00029','byudi','smg','Perempuan','smg','334234',1);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00030','asd','asd','Perempuan','asd','234',1);
insert  into `t_pegawai`(`id_pegawai`,`nama`,`tempat_lahir`,`gender`,`alamat`,`telp`,`status_aktif`) values ('KR-00031','bbtbtbtb','tbtbt','Laki-Laki','btbt','33333',1);

/*Table structure for table `t_penjualan_tmp` */

DROP TABLE IF EXISTS `t_penjualan_tmp`;

CREATE TABLE `t_penjualan_tmp` (
  `kd_pegawai` varchar(25) DEFAULT NULL,
  `kode` varchar(45) DEFAULT NULL,
  `harga` decimal(10,0) NOT NULL DEFAULT '0',
  `diskon` decimal(10,0) NOT NULL DEFAULT '0',
  `qty` decimal(10,0) NOT NULL DEFAULT '0',
  `subtotal` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_penjualan_tmp` */

insert  into `t_penjualan_tmp`(`kd_pegawai`,`kode`,`harga`,`diskon`,`qty`,`subtotal`) values ('KR-00001','I-00060','10000','0','1','10000');
insert  into `t_penjualan_tmp`(`kd_pegawai`,`kode`,`harga`,`diskon`,`qty`,`subtotal`) values ('KR-00001','I-00062','12000','0','1','12000');
insert  into `t_penjualan_tmp`(`kd_pegawai`,`kode`,`harga`,`diskon`,`qty`,`subtotal`) values ('KR-00001','I-00061','11000','0','1','11000');

/*Table structure for table `t_piutang` */

DROP TABLE IF EXISTS `t_piutang`;

CREATE TABLE `t_piutang` (
  `kd_jual` varchar(45) NOT NULL DEFAULT '',
  `tgl_jual` datetime DEFAULT NULL,
  `jth_tmp` datetime DEFAULT NULL,
  `kd_plgn` varchar(8) DEFAULT NULL,
  `total_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `bayar_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `dskn_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `denda_piutang` decimal(10,0) NOT NULL DEFAULT '0',
  `sts_piutang` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kd_jual`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `t_piutang` */

/*Table structure for table `t_supplier` */

DROP TABLE IF EXISTS `t_supplier`;

CREATE TABLE `t_supplier` (
  `id_supplier` varchar(20) NOT NULL DEFAULT '',
  `nama_suplier` varchar(30) NOT NULL DEFAULT '',
  `alamat` varchar(50) NOT NULL DEFAULT '',
  `telp` varchar(20) NOT NULL,
  `telp2` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hapus` int(1) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_supplier` */

insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0001','modern','semarang','0247478300','','modern@gmail.com',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0002','atlanta','semarang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0003','pagoda','surabaya','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0004','global','semarang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0005','taruna','semarang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0006','maju jaya','semarang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0007','sentral','jakarta','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0008','berkat andi jaya','jakarta','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0009','daya sakti','jakarta','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0010','baru','rembang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0011','PT Jay ','Jakarta Barang','0258686','','hrd@mantafjaya.com',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0012','aneka elektronik','surabaya','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0013','chandra elektronik','surabaya','08968768','','asda@g.v',0);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0014','gappa krisma','semarang','','','',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0015','pt mantap jiwa','jl. ssss','92929','0002','232@g.v',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0016','asdf','asd','777','32','qwewq@f.bv',0);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0017','mantap jiwa','mantap joiwa','23','','324@d.c',1);
insert  into `t_supplier`(`id_supplier`,`nama_suplier`,`alamat`,`telp`,`telp2`,`email`,`hapus`) values ('SP-0018','chandra elektronikr','surabayar','0896876833332','','asda@g.vr',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) DEFAULT NULL,
  `jk` varchar(8) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `akses` varchar(7) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`,`jk`,`email`,`password`,`akses`,`status`) values (1,'Azza Mujibuz Zamzami','Pria','azza@gmail.com','123','Admin','0');
insert  into `user`(`id`,`nama`,`jk`,`email`,`password`,`akses`,`status`) values (2,'Haekal','Pria','haekal@outlook.com','aaa','Kasir','0');
