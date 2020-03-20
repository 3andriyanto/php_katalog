-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 04:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k8013166_katalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_hak_akses` varchar(36) NOT NULL,
  `id_user` varchar(45) NOT NULL,
  `id_transaksi` varchar(45) NOT NULL,
  `tambah` tinyint(1) DEFAULT NULL,
  `ubah` tinyint(1) DEFAULT NULL,
  `hapus` tinyint(1) DEFAULT NULL,
  `lihat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id_hak_akses`, `id_user`, `id_transaksi`, `tambah`, `ubah`, `hapus`, `lihat`) VALUES
('01103b84-81cd-4385-bac1-f21db20ebd43', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'd1e55ed8-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('016c58a2-6a10-4266-a510-98f2f82fcb83', '193fd680-05df-4bae-9c4b-8390e71af31b', '69b79415-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('30fb573c-5c3a-4724-bcb7-d40ccc7ae20d', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', '9ad1822c-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('78uhg6-b19md-az7y-298ugv-88hbc60lkm', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', '87b8373c-578b-11e5-a643-902b34d4622b', 1, 1, 1, 1),
('81c63298-eba2-4dda-ab04-046c7d441e58', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', '69b79415-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('95a81dbc-3630-4de2-83d2-64cf93481999', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'a85f6b41-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('9a48dc5f-26c0-46bf-84f0-996880e08901', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'a1b038a9-5773-11e5-a643-902b34d4622b', 1, 1, 1, 1),
('ae5a93cb-0756-46e4-9877-f72884aacfd7', '193fd680-05df-4bae-9c4b-8390e71af31b', '9ad1822c-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('b3d64a03-416e-4bda-8ce6-cae116ab721f', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', '7fe78ddb-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('be40357c-1084-419c-9b47-965a56757c89', '193fd680-05df-4bae-9c4b-8390e71af31b', 'ab340ec3-5c53-11e5-a774-002590adcb83', 1, 1, 1, 1),
('c5e5cd8f-b071-49f2-af99-70361a19832b', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'beab369c-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('d5655c3d-1b1b-45cc-b492-7939de58b761', '193fd680-05df-4bae-9c4b-8390e71af31b', 'beab369c-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('dd52e16e-be25-46de-bc7c-a7f949537c82', '193fd680-05df-4bae-9c4b-8390e71af31b', '7fe78ddb-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('e00b63b4-7423-4274-8cc5-aa8852a46edf', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'c8638758-55f9-11e5-a609-902b34d4622b', 1, 1, 1, 1),
('e09e41f6-d56d-4f61-bcd3-d6e0209bba3c', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'ab340ec3-5c53-11e5-a774-002590adcb83', 1, 1, 1, 1),
('f2408960-b1ee-4665-8980-8cafe9bbfcf7', '442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'ecdb1682-60ee-11e5-9895-902b34d4622b', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` varchar(36) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_id` varchar(36) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_area`
--

CREATE TABLE `m_area` (
  `id_area` varchar(36) NOT NULL,
  `nama_area` varchar(255) NOT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_area`
--

INSERT INTO `m_area` (`id_area`, `nama_area`, `manager`, `keterangan`, `aktif`) VALUES
('1150dbf1-4a07-11e5-ae0f-902b34d4622b', 'JABODETABEK', 'MANAGER', 'AREA', 1),
('23eco11a-5839-11ea-8ab7-68f72844f250', 'WILAYAH 2', 'MANAGER 2', NULL, 1),
('3c35c7bc-84a5-4088-81d0-e07c109f84ea', 'JAWA TENGAH', 'MAN', 'TES', 1),
('55fix11a-5839-11ea-8ab7-68f72844f700', 'WILAYAH 3', 'MANAGER 3', NULL, 1),
('5feb711a-5839-11ea-8ab7-68f72844f2c2', 'WILAYAH 1', 'MANAGER 1', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `id_barang` varchar(36) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(45) DEFAULT NULL,
  `deskripsi` mediumtext,
  `id_kategori` varchar(36) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `spec_name` mediumtext,
  `spec_val` mediumtext,
  `posisi` int(11) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `tanggal_berlaku` date DEFAULT NULL,
  `tanggal_exp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`id_barang`, `tanggal`, `nama_barang`, `satuan`, `deskripsi`, `id_kategori`, `gambar`, `ukuran`, `spec_name`, `spec_val`, `posisi`, `aktif`, `new`, `tanggal_berlaku`, `tanggal_exp`) VALUES
('001000e6-da03-4d5e-80f2-75a5c049f8bd', '2018-04-09', 'DSC - 4Q - CKST', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'DSC_4Q_CKST_(22NOV16)_EDIT.png', '650 X 390 X 950', NULL, NULL, NULL, 1, 1, NULL, NULL),
('00bd8220-0495-4488-9616-eb3a4a1bc179', '0000-00-00', 'Twin Bed Lovely Spring Latex Sandaran Belgium', 'SET', 'TWIN LOVELY SPRING LATEX SANDARAN BELGIUM', '2', 'big-34ddef1372d383d8.png', '120 x 200 x 54', '  Sandaran :|||||||||||||| Twin Atas dan Twin Bawah :||||||||||||||||||||||||||', '- Sand. Belgium (Oscar)||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar pink||Twin bawah dilengkapi dengan roda caster||Kayu dan triplek dilapisi busa dan dibungkus dengan kain oscar||15 Tahun||- Twin atas dan twin bawah kain jaquard quilting||- Busa silver + latex||- Kaki kain oscar pink||- Twin bawah dilengkapi roda caster||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 115 bh / mÂ²||- Garansi Per 15 tahun||- Tinggi twin = 54 cm||- Ukuran 100, 120 x 200 cm||||||||', 1, 1, 0, NULL, NULL),
('01cbd147-65b6-42e9-bb0c-bbf6dc9ec050', '2019-10-29', 'MTS-102 WALNUT', 'PCS', '', '21001', 'mts-102-walnut--uk.png', '1200 x 600 x 725', NULL, NULL, NULL, 1, 1, NULL, NULL),
('03df470a-7446-4842-b3e6-680c46b52536', '2019-10-28', 'MRS - 8873 MD', 'PCS', '', '15', 'product-ed418396c4b268fc.png', '800 x 800 x 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('04dd43f9-606a-48dc-84de-b9d726415372', '2019-10-28', 'Sofia The First WDM - 1935 - SOF', 'UNT', '', '17002', 'wdm-1935-sof.png', '1200  X 440  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0798596f-1204-4e18-849a-13567e5feed0', '2015-10-12', 'Meja MFC - 43 - KREC', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-ee2138749b7b0439.png', '540 x 540 x 460', 'Width||Height||Length||Weight', '||||||', 93, 1, 0, NULL, NULL),
('08d1e189-f068-42c5-aafa-88f9ab9a42ee', '2019-10-28', 'KRS - 3R3 TC', 'PCS', '<div>Kursi Rotan Sintetis</div><div><br></div>', '15', 'product-9bc3e27c878b7327_(1).png', '380 x 380 x 485', NULL, NULL, NULL, 1, 1, NULL, NULL),
('092a8896-328d-4360-90fe-599064ef1776', '2016-03-04', 'Twin Barbie Luxe', 'SET', '', '6', 'Twin_barbie_luxe_rsz.png', '100, 120', NULL, NULL, NULL, 1, 1, NULL, NULL),
('093748a8-84c0-449b-b61f-c67d18e49b6c', '2019-10-29', 'LPC-8228 TSC', 'PCS', '', '18001', 'lpc-8228-tsc.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('0a36d260-8d34-4c19-a056-54ec24f18c6d', '2018-04-09', 'LAPDESK FROZEN', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lapdesk_frozen_(23FEB16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('0acddfe1-8b48-4f01-9c27-8e8e0a2f0e53', '2015-10-12', 'BCBC-M 242 KTSH', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-fecec78baa142d29.png', '650 x 450 x 1300', 'Product Size||Panjang ||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity||20 Feet||40 Feet||', 'Ukuran Produk||65 cm||45 cm||130 cm||Ukuran Kemasan||66 cm||40 cm||51 cm||Kapasitas Muat||215||450||', 27, 1, 0, NULL, NULL),
('0bcd2ff8-8ef8-412d-85ad-bbf90977e8a6', '2019-10-29', 'Moto GP Lemari Pakaian WDM - 12035 - MGP', 'UNT', '', '1685cd4d-e98b-489a-8cfa-5e39a9de8c07', 'WDM_-_12035_MGP.png', '1200 X  420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0bdeebc8-57d9-4f42-ab42-de52148c866d', '2017-04-05', 'KCB - 9130', 'SET', '', '15001', 'KCB-9130.png', '1180 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0c3f3306-646e-4158-8528-bf2fce4ee783', '2019-10-25', 'CRS - 5G5 DKC', 'SET', '', '14', 'product-41cdd14a0f9c2ef2.png', '650 x 450 x 1735', NULL, NULL, NULL, 1, 1, NULL, NULL),
('0c40f00a-e14a-4627-972a-ae83bd46246f', '2019-10-28', 'Charmmy kitty SD - 2312 - CKT', 'UNT', '', '14002', 'sd---2312-ckt.png', '1200 X 500 X 1500', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0cf12fa2-2304-42f2-abf0-3a6d5aa9839c', '2017-02-08', 'King Full Latex', 'SET', '', '2', 'kp-plus_EDIT.png', '120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('0d7141df-3c8b-4e7a-abc0-d9df97ff518f', '2019-10-25', 'KG - 711', 'PCS', '', '15', 'product-88e17deec4d5a205.png', '600 x 830 x 825', NULL, NULL, NULL, 1, 1, NULL, NULL),
('0ddc002d-2431-411d-ba35-4265b4ba9622', '2019-10-29', 'Barbie WDM-11135 BCF', 'UNT', '', '26002', 'wdm-11135-bcf--uk.png', '1200 X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0e230d3d-f439-45ba-81bb-26a89e3dbe84', '2019-10-29', 'Captain America WDM - 12123 CIV', 'UNIT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'wdm_12123_civ_edit.png', '795  X 400  X 1750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('0eee59fe-6329-4fe2-8aa0-71359290ccce', '0000-00-00', 'Stockcase Karakter SFC2-4000 HKBF', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-885fdbb6a5384ecf.png', '455 x 435 x 980', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet||', 'Ukuran Produk||45.5 cm||43.5 cm||98 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650||', 45, 1, 0, NULL, NULL),
('0effefb2-bf33-4077-a8fe-4cc20d2ccd68', '2019-10-25', 'KG - 720 HR', 'PCS', '', '15', 'product-7df67fabd48db0b3.png', '1040 x 830 x 985', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1094d636-8a4f-4384-ab9a-51210dab653a', '2018-04-05', 'BCBC. B - X36 - SUBA', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC.B-_X36_SUBA_(22JUL16)_.png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('109d2978-30e9-46dc-9c68-33d8cb66f00b', '2019-10-28', 'KRS - 673 - COKLAT', 'PCS', '<div>KURSI ROTAN SINTETIS</div><div><br></div>', '15', 'product-e26c3342b4f47438.png', '600 x 530 x 875', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1211ebfa-6ee9-45a6-a87c-3b8ac3d0a09c', '2018-04-05', 'BCBC. B - X36 - MGP', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_-_X36_MGP_(06MAR17).png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('123537bd-8297-4b33-84ac-0025ab49ced1', '2019-10-29', 'LPC-8328 CLT', 'PCS', '', '18001', 'lpc-8328-clt.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1248664a-3497-4992-98b6-4dce53f42638', '2019-10-29', 'Princess WDM - 11525 - PCS', 'UNT', '', 'a4d0df09-ccf8-40c9-8cd4-3a5cf3ba26a3', 'wdm-11525-pcs.png', '800 X  455 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('12559adc-0695-454f-bf3e-2f23d1116b2c', '2017-11-29', 'MMAROT - 7388 MDF', 'BH', '', '15', 'mmarot_jati_MD.png', '800 X 800 X 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('13201001-559f-4619-bf2c-de9912de9377', '0000-00-00', 'Meja MFC - 43 - SOPW', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-c304ec51cc7459e0.png', '540 x 540 x 460', 'Panjang||Lebar||Tinggi', '540 mm||540 mm||460 mm', 23, 1, 0, NULL, NULL),
('13e2ba71-5bfd-4f2f-a8b3-2cf42ea15c4d', '0000-00-00', 'SC - KT 1.040 - CCC', 'SET', '', '116', 'SC - KT 1.040 - CCC.png', '606 X 300 X 450', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1462e8ac-6f00-4db3-a4f4-a156fc7f6881', '0000-00-00', 'NEA 144 AK1', 'SET', NULL, '16', 'product-d52f677767216f83.png', '435 x 430 x 1100', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||43.5 cm||43 cm||110 cm||Ukuran Kemasan||44 cm||44 cm||46.5 cm||Kapasitas Muat||300||650', 72, 1, 0, NULL, NULL),
('148a60e9-cbb2-45ba-84e1-d7bdef5d8ac3', '2017-12-07', 'LP - 8370 - CLS', 'SET', '', '18001', 'LP_-_8370_CLS.png', '1206 X 435 X 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1540f101-643f-4d63-8e13-df9d62b8f508', '2019-10-29', 'Tsum-tsum LB - 4 - TSM', 'UNT', '', '6e2410d9-b45b-43d5-9500-ec414d5f3d01', 'LB_4_TSUM.png', '425  X 294 X 1160', NULL, NULL, NULL, 1, 0, NULL, NULL),
('15899438-4f89-4e79-b29c-38c0b5b46911', '0000-00-00', 'Los Angles Hotel Platinum Bed', 'SET', 'LOS ANGLES HOTEL PLATINUM BED ', '7', 'big-2e4941800ddd015a.png', '200 x 200 x 61', '  Sandaran :||||||||  Divan :||||||||||||Kasur :||||||||||||||||||', '- Sand. 729 Los Angeles (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- Busa Super gold||- Kain Oscar cream||- Divan Monarchy Los Angeles (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- PP board PVC||- Busa super gold||- Tinggi divan = 25 cm||- Kain oscar cream||- Model kasur double pollytop||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa super gold + latex||- Tinggi kasur = 36 cm||- Tinggi kasur + divan + stabil = 70 cm||- Ukuran 160, 180, 200 x 200 cm', 8, 1, 0, NULL, NULL),
('159a4825-273b-47f4-833a-9fccdfb5f150', '2019-10-29', 'BC-1867 OPT', 'PCS', '', '13001', 'bc-1867-opt-600x300x1800.png', '600 x 300 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('159afb4e-7634-45aa-b3bc-754efdbad003', '0000-00-00', 'Stockcase SWNB-500 BK1', 'SET', NULL, '16', 'product-03a5128ccd029a34.png', '440 x 375 x 1080', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||44 cm||37.5 cm||108 cm||Ukuran Kemasan||45 cm||39 cm||45.5 cm||Kapasitas Muat||300||650', 65, 1, 0, NULL, NULL),
('15b588e7-8711-4431-8aab-8c7117c00c8c', '0000-00-00', 'Hello Kitty Full Of Love', 'SET', 'HELLO KITTY BEST FRIEND TWIN BED springbed yang terdiri dari 2 bagian yaitu Twin atas yang terdiri dari busa dan Twin Bawah yang dilengkapi dengan roda caster', '3', 'big-2ccdbec170956717.png', '120 x 200 x 52', 'Divan||||Kasur||||||Lisensi||Sandaran||Knock Down||Garansi per', '||Tinggi Twin 52 cm||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Kain kasur menggunakan kain cotton yang diquilting||Ya||Partikel board dengan bentuk 3 Dimensi dilapisi dengan Flexy dan Aksesoris yang diair brush||Tidak||15 Tahun', 12, 1, 0, NULL, NULL),
('163b4916-178b-4f7b-90cb-80e287fecd1c', '2017-11-29', 'DSC - 4Q - JATI', 'SET', '', '16', 'DSC-4Q_JATI.png', '650 X 390 X 950', NULL, NULL, NULL, 1, 1, NULL, NULL),
('166d7642-2e53-4719-8ea7-6a5e3a63af93', '0000-00-00', 'BCBC XX2 BARBIE', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-67f16c009312b78e.png', '650 x 450 x 1510', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1510 mm', 7, 1, 0, NULL, NULL),
('1820728e-8640-43b2-83ac-411c9d9fecde', '2019-10-28', 'MRS - 7546', 'PCS', 'MEJA ROTAN SINTETIS', '15', 'product-2526a27a049d1048.png', '700 x 550 x 460', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1902c16d-127b-4198-8090-c876bcfe8054', '0000-00-00', 'Twin Bed Yunani Salur Sand. Matisse Full Oscar)', 'SET', 'TWIN YUNANI SALUR SANDARAN MATISSE FULL (OSCAR)', '2', 'big-b0093f366d79cffc.png', '120 x 200 x 52', '  Sandaran :|||||||| Twin Atas dan Twin Bawah :||||||||||||||||||', '- Sand. Matisse Full (Oscar)||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Twin atas dan twin bawah kain jaquard quilting||- Busa silver + latex||- Kaki kain oscar coklat kopi||- Twin bawah dilengkapi roda caster||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 115 bh / mÂ²||- Garansi Per 15 tahun||- Tinggi twin = 52 cm||- Ukuran 100, 120 x 200 cm', 1, 1, 0, NULL, NULL),
('194018f5-7b9f-4c4c-8a61-e5a095384f65', '0000-00-00', 'Golden Plus Top Flora', 'SET', NULL, '2', 'big-2fe4cf6f075e6178.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('19f9137d-9c76-4558-81f5-67a0ba578673', '2015-10-12', 'Kursi Baso big-304 c', 'SET', '', '15', 'product-79e9b1744791323a.png', '340 x 340 x 470', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||34 cm||34 cm||47 cm||Ukuran Kemasan||34 cm||34 cm||156 cm (30 Tumpuk Kursi)', 127, 1, 0, NULL, NULL),
('1a03a9b9-5b09-4001-85b9-a42f5b382b0c', '0000-00-00', 'WD - KT 4.160 - CCC', 'SET', '', '116', 'WD - KT 4.160 - CCC.png', '801 X 415 X 1667', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1a3c461b-7e4d-4597-9800-78adb355f7a1', '2018-04-04', 'BCBC. B-X48 - MGP', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'bcbc.b-_x48_mgp_(07JUN17)_.png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1a9ee1b4-19e9-4a48-9950-350fdd395f75', '2016-04-25', 'NCA - 522 - KTBF', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'NCA-522KTBF.png', '430 X 460 X 1050', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1c049ad3-cb49-42c4-9516-21f1979a8145', '2019-10-28', 'Keroppi SD - 2321 - KRP 2', 'UNT', '', '15002', 'SD-2321-KRP_2_EDIT.png', '1120 X 500 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1c69671c-c78c-4cf7-ad12-a12f72df197e', '2015-10-12', 'Kursi Pakai Tangan Big 908', 'SET', '', '15', 'product-67fab728e8ea3532.png', '690 x 570 x 770', 'Product Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||68 cm||57 cm||77 cm', 131, 1, 0, NULL, NULL),
('1c8d1144-0091-4545-92e0-905f0587e0eb', '2016-04-21', 'NKT - X10 MG PINK', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NKT_-_X10_MG_Pink.png', '530 X 470 X 870', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1c982828-591e-4de2-9e63-52554cbeabb0', '0000-00-00', 'King Pocket Pillow Top Florist', 'SET', NULL, '2', 'big-aabba15c5e0ec3b1.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('1cae6b7f-6914-4701-918a-b3d84598bcad', '2016-04-27', 'Laptop Table KTMG Pink', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Laptop_Table_KTMG_Pink.png', '615 x 470 x 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1d1fea9d-67e4-48fa-9c16-d0059280248e', '2017-04-05', 'KCA - 9103', 'SET', '', '15001', 'KCA-9103.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1d85c8b0-4cc0-4fa4-ab8c-9cb3f4d8e833', '2019-10-29', 'Frozen WDM - 11725 - FFV', 'UNT', '', '32002', 'WDM-11725-FFV-N.png', '800 X 445  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('1d9d9fe4-9b5b-4bf2-8ef4-440aaafe24d6', '2019-10-28', 'KRS - 663', 'PCS', 'KURSI ROTAN SINTETIS', '15', 'product-d1f09c7fd1bdac0a.png', '450 x 530 x 755', NULL, NULL, NULL, 1, 1, NULL, NULL),
('1ffe633d-dfe3-43e5-8216-128a38e0d725', '2019-10-28', 'KRS - 673 - JATI', 'PCS', 'KURSI ROTAN SINTETIS', '15', 'product-8d51feb85f44037b.png', '600 x 530 x 875', NULL, NULL, NULL, 1, 1, NULL, NULL),
('208ccb64-ae5b-419f-932f-63149c76a3be', '2016-04-27', 'Meja Laptop SPGC', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Meja_Laptop_SPGC.png', '615 x 470 x 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('20ca6d90-1540-4136-abe8-0fb7397fb205', '2017-01-11', 'TWIN HELLO KITTY PANEL CLASSIC', 'SET', '', '6', 'HK-panel-classic.png', '100 X 200, 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2101e26d-afda-43b5-adca-1b18da24d64f', '2019-10-29', 'BC-1666 OBR', 'PCS', '', '13001', 'bc-1666-obr-600x300x1600.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('21574faf-d8a3-4cad-b39a-4b0cab4c10b1', '0000-00-00', 'Stockcase STA-5000 BK1', 'SET', NULL, '16', 'product-12bcae6b159f374f.png', '435 x 430 x 1090', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||43.5 cm||43 cm||109 cm||Ukuran Kemasan||44.5 cm||45 cm||48 cm||Kapasitas Muat||300||650', 62, 1, 0, NULL, NULL),
('21b515b2-c856-4fbc-bf79-100a2f64f640', '0000-00-00', 'Batman and Robin Twin Bed', 'SET', 'Kasur twin yang terdiri dari Twin atas terdiri dari busa dan Twin bawah dilengkapi roda caster', '3', 'big-bbb786d1bd0b16c7.png', '120 x 200 x 28', 'Divan||||Kasur||||||||Sandaran||Knock Down||Berlisensi||Garansi per', '||||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Tinggi kasur 28 cm||Bahan sarung kasur menggunakan kain cotton dengan quilting sesuai dengan contour gambar panel||Partikel board dengan bentuk 3 Dimensi dilapisi Flexy dan Aksesories yang di air brush||Tidak||Ya||15 Tahun', 5, 1, 0, NULL, NULL),
('22249cf8-2221-4310-8a73-d087a1754f58', '2015-10-16', 'BL - BB 2.160 ILN', 'SET', '', '5ae2a563-46dc-4ae8-978b-500db45cdee1', 'BL_-_BB_2.160_ILN_.png', '920 X 430 X 1616', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2288b6c9-1409-49d8-b2fe-530cd28f9ece', '2017-11-23', 'BCBC - 242 OBFR', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC242OBFR_web.png', '650 X 450 X 1300', NULL, NULL, NULL, 1, 0, NULL, NULL),
('23607acb-bba5-41c7-bc48-d0ec992c3ed6', '2017-02-28', 'King Pocket Egypt', 'SET', 'KING POCKET EGYPT ', '2', 'King-Pocket-Egypt.png', '120, 160, 180, 200', ' Sandaran : |||||||||| Divan :|||||||||||| Kasur :||||||||||||||||||||||||||||||||', '- Sand. Cairo||- Rangka kayu oven + obat anti kutu/rayap||- Bentuk bantal dilapisi busa + dacron||- Busa silver||- Kain ivory coklat muda ||- Divan Romantic ||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 25 cm||- Kain ivory coklat muda||- Model kasur alita atau tahu||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Rebonded & Busa Silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 64 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||||||||||||||', 1, 1, 1, NULL, NULL),
('23aa845a-beef-4de0-b454-57626d10add0', '2017-11-29', 'MMAROT - MM 7388', 'BH', '', '15', 'MM_7388.png', '800 X 800 X 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('23d51f73-dff2-45e6-89db-93db6168e5ae', '0000-00-00', 'Stockcase STB-400 BK1', 'SET', NULL, '16', 'product-c8a4569414c321fe.png', '440 x 375 x 880', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||44 cm||37.5 cm||88 cm||Ukuran Kemasan||40 cm||39 cm||45.5 cm||Kapasitas Muat||300||650', 70, 1, 0, NULL, NULL),
('240988ee-cbb4-44c8-bcac-2b47ec09cc67', '0000-00-00', 'new yunani salur', 'SET', 'NEW YUNANI SALUR', '2', 'big-d59474b50f813710.png', '200 x 200 x 53', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. Angelo||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar coklat kopi||- Model kasur reguler||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain jaquard quilting||- Busa silver||- Tinggi kasur = 24 cm||- Tinggi kasur + divan + stabil = 53 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('2431b0f1-ea0f-4798-9b97-05d4d797e767', '2017-03-31', 'KCA - 933', 'SET', '', '15001', 'KCA-933.png', '1180 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24394b33-423e-4c14-9893-03cbeb03d1b6', '0000-00-00', 'Hello Kitty Best Friend Twin Bed', 'SET', 'Kasur twin yang terdiri dari kasur/Twin atas terdiri dari busa dan kasur/Twin bawah dilengkapi roda caster', '3', 'big-dcde610e6a96db54.png', '120 x 200 x 52', 'Divan||||Kasur||||||||Sandaran||Knock Down||Berlisensi||Garansi per', '||||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Tinggi Twin 52 cm||Kain kasur menggunakan kain cotton dengan quilting sesuai dengan contour gambar panel||Partikel board dengan bentuk 3 Dimensi dilapisi dengan Flexy dan Aksesoris yang diair brush||Tidak||Ya||15 Tahun', 3, 1, 0, NULL, NULL),
('24a6e9cb-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy kitty LB-5 CMY', 'UNT', '<p><br></p>', '14002', 'lb_5_cmy_new.png', '425  X 295 X 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24a6ec7d-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty SD-2321 CMY', 'UNT', '<p><br></p>', '14002', 'sd_2321_cmy_new.png', '1120 X 500 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24a6ed62-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty WD-1311 CMY', 'UNT', '<p><br></p>\n<p><!-- product_detail --></p>', '14002', 'wd_1311_cmy_new.png', '730  X 400 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b3785f-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty AVR - 3311 CMY', 'UNT', '<p><br></p>', '14002', 'avr_3311_cmy_new.png', '600 X 400 X 623', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b71c13-a364-42cc-af21-4a91bffadf53', '2019-10-28', 'KRS - 3Y3', 'PCS', '<div>Kursi Rotan Sintetis</div><div><br></div>', '15', 'product-2f03bd86b6f6d4eb.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 1, NULL, NULL),
('24b74540-5865-11e5-a774-002590adcb83', '2019-10-28', 'Sofia The first BC - 4912 - SEP', 'UNT', '<p><br></p>', '17002', 'bc_4912_sep_edit.png', '604 X 400 X 1706', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b74d90-5865-11e5-a774-002590adcb83', '2019-10-22', 'Angel Cat Sugar WD - 1621 ACS', 'UNT', '<p><br></p>', '21002', 'wd_1621_acs.png', '800 X  400  X  1110', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b753b9-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty WDM - 1322 CKT', 'UNT', '<p><br></p>', '14002', 'charmy-kitty2.png', '800 X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b75b32-5865-11e5-a774-002590adcb83', '2019-10-28', 'Sofia The first BC - 4911 - SEP', 'UNT', '<p><br></p>', '17002', 'bc_4911_sep_edit.png', '600  X 300 X 1108', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b75d4f-5865-11e5-a774-002590adcb83', '2019-10-29', 'Angel Cat Sugar WDM - 1625 - ACS', 'UNT', '', '21002', 'wdm-1625-acs-2.png', '805 X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b75f44-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty DT - 5301 - CKT', 'UNT', '<p><br></p>', '14002', 'dt-5301-ckt-2.png', '860  X 420 X 1300', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b75fe6-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty WDM - 1332 - CKT', 'UNT', '<p><br></p>', '14002', 'wdm-1332-ckt-2.png', '1200  X 435 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24b76088-5865-11e5-a774-002590adcb83', '2019-10-29', 'Panel Com BPCP - 2.22 - FROZ', 'UNT', '<p><span style=\"color: #00ccff;\"><strong>Panjang : 655 </strong></span></p>\n<p><span style=\"color: #00ccff;\"><strong>Lebar :&nbsp; 460 </strong></span></p>\n<p><span style=\"color: #00ccff;\"><strong>Tinggi : 1275</strong></span></p>', '32002', 'bpcp-2_22-froz-2.png', '655 x 460 x 1275', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2032-5865-11e5-a774-002590adcb83', '2019-10-29', 'Angel Cat Sugar WDM - 1635 - ACS', 'UNT', '<p><br></p>', '21002', 'wdm_1635_acs.png', '1200  X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2436-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty SD - 2331 - CKT', 'UNT', '<p><br></p>', '14002', 'sd_2331_ckt_edit.png', '1130 X 500 X 1250', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb263f-5865-11e5-a774-002590adcb83', '2019-10-29', 'Hot Wheels SD - 21210 - HWL', 'UNT', '<p><br></p>', '31002', 'SD_21210_HWL_N1_EDIT.png', '1130  X 500  X 1250', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb26ed-5865-11e5-a774-002590adcb83', '2019-10-29', 'Hot Wheels WD - 11211 - HWL', 'UNT', '<p><br></p>', '31002', 'WD_11211_HWL_N1.png', '760  X 400  X 1210', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb28f9-5865-11e5-a774-002590adcb83', '2019-10-28', 'Charmmy Kitty WD - 1313 CKT', 'UNT', '<p><br></p>', '14002', 'wd_1313_ckt_edit_1511435593.png', '760 X 400  X 1210', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2a3d-5865-11e5-a774-002590adcb83', '2019-10-29', 'Frozen SD - 21611 - FFV', 'UNT', '<p><br></p>', '32002', 'SD_21611_FFV.png', '1110 X 500 X 1220', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2ae4-5865-11e5-a774-002590adcb83', '2019-10-29', 'Frozen WD - 11611 - FFV', 'UNT', '<p><br></p>', '32002', 'WD_11611_FFV.png', '600  X 400 X  1220', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2c4c-5865-11e5-a774-002590adcb83', '2019-10-28', 'Sofia The first SD - 2913 - SEP', 'UNT', '<p><br></p>', '17002', 'sd_2913_sep_edit.png', '1131 X 500 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2cfa-5865-11e5-a774-002590adcb83', '2019-10-28', 'Sofia The first SD - 2912 - SEP', 'UNT', '<p><br></p>', '17002', 'sd_2912_sep.png', '1131 X 500  X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2da5-5865-11e5-a774-002590adcb83', '2019-10-28', 'Sofia The first DT - 5912 - SEP', 'UNT', '<p><br></p>', '17002', 'dt_5912_sep_edit.png', '800  X 400 X 1178', NULL, NULL, NULL, 1, 0, NULL, NULL),
('24bb2fa4-5865-11e5-a774-002590adcb83', '2019-10-29', 'Hot Wheels WD - 11212 - HWL', 'UNT', '<p><br></p>', '31002', 'WD_11212_HWL_N1.png', '800  X 410 X 1700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('251df7b0-f043-4383-a3de-84afe15b4739', '2019-10-30', 'DT - BB 8015 ILN', 'SET', '', '22001', '2015-10-09-093449_0_2.png', '872 X 464 X 1519', NULL, NULL, NULL, 1, 1, NULL, NULL),
('25b14634-e0a1-478c-933b-832fb2fcc25d', '2019-10-29', 'Tsum-tsum Lemari Pakaian WDM - 12235 - TSM', 'UNT', '', '6e2410d9-b45b-43d5-9500-ec414d5f3d01', 'WDM_12235_Tsum.png', '1200  X  420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('274ea84d-63e4-4090-ad37-591f3c3a310a', '2019-10-29', 'DW - FZ 22 - WM', 'UNT', '<p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Colour &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Glossy White</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">The main ingredient &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Partical Board</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Thickness &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Min. 15 mm</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Foil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PVC Glossy</p>', '32002', 'DW_-_FZ_22_-_WM1.png', '636 X 380 X 1100', NULL, NULL, NULL, 1, 0, NULL, NULL),
('27cf6fdd-ec71-4aec-80ce-313052feeafd', '2019-10-29', 'LPMR-8227 LH', 'PCS', '', '18001', 'lpmr-8227-lh--1206-x-430-x.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('282df551-71ea-43b7-86b2-fd9b19fa6ec9', '0000-00-00', 'Twin Bed STUDENT', 'SET', NULL, '2', 'big-5b19d1b50dea4039.png', '120 x 200 x -', '  Sandaran :|||||||| Twin Atas dan Twin Bawah :||||||||||||||||||||||||', '- Sand. Socrates||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi dan coklat muda||- Twin atas dan twin bawah kain jaquard quilting||- Twin atas dilengkapi laci||- Kaki kain oscar coklat muda||- Twin bawah dilengkapi roda caster||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 115 bh / mÂ²||- Garansi Per 15 tahun||- Ukuran 100, 120 x 200 cm||||||||', 1, 1, 0, NULL, NULL),
('290763e4-12ea-4f51-929f-e522a6bef63a', '0000-00-00', 'BIG BOXER B5-4', 'SET', NULL, '20', 'product-a116d769bdb38712.png', '395 x 255 x 355', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||39.5 cm||25.5 cm||35.5 cm||Ukuran Kemasan||57 cm||40 cm||49 cm (12 Tumpuk)', 153, 1, 0, NULL, NULL),
('290dfdba-19a9-490c-9283-f557279b99ab', '0000-00-00', 'Big Boxer 125 H', 'SET', NULL, '20', 'product-e5c6506216c26875.png', '770 x 550 x 455', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||77 cm||55 cm||45,5 cm||Ukuran Kemasan||79 cm||56 cm||81 cm', 141, 1, 0, NULL, NULL),
('292fd001-8307-493e-b37c-7628bf191fd7', '2017-11-29', 'SCA - 4000 PK1', 'SET', '', '16', 'SCA1_-_4000_PK1.png', '435 X 430 X 890', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2988c760-58eb-4ce9-8011-796757824953', '2017-11-23', 'Kursi Tanpa Tangan Big 101', 'SET', '', '15', 'product-3e468b782ac4781e.png', '445 x 455 x 870', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||46.5 cm||44.5 cm||87 cm||Ukuran Kemasan||46.5 cm||44.5 cm||205 cm (20 buah tumpuk kursi)', 102, 1, 0, NULL, NULL),
('29a388b1-f931-47f3-bf3f-8cb936bb96a5', '0000-00-00', 'Big Boxer-44-MCB', 'SET', NULL, '20', 'product-fc7bbc416e25f6da.png', '550 x 385 x 285', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||55 cm||38,5 cm||28,5 cm||Ukuran Kemasan||57 cm||39,5 cm||51 cm', 139, 1, 0, NULL, NULL),
('2ab19aec-d957-44ba-b50a-2da17b061f53', '2017-04-05', 'KCA - 9113', 'SET', '', '15001', 'KCA-9113.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('2b8e3a40-f945-493d-8046-ab8f7ba1d635', '2015-10-12', 'Kursi Tanpa Tangan Big 208', 'SET', '', '15', 'product-10dff07884a15dbd.png', '530 x 470 x 880', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||53 cm||47 cm||88 cm||Ukuran Kemasan||53 cm||47 cm||203 cm (20 buah tumpuk kursi)', 103, 1, 0, NULL, NULL),
('2bc29622-6ec1-4968-b7c0-896005020251', '0000-00-00', 'LB - FZ 3.1 - NF', 'SET', '', '124', 'LB - FZ 3.1 - NF.png', '424 X 295 X 1435', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2c2d8e99-248c-4378-882d-446e3f416479', '2019-10-29', 'DT - FZ 8017 - WM', 'UNT', '<p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Colour &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Glossy White</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">The main ingredient &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Partical Board</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Thickness &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Min. 15 mm</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Foil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PVC Glossy</p>', '32002', 'DT_-_FZ_8017_-_WM1.png', '675 x 440 x 1481', NULL, NULL, NULL, 1, 0, NULL, NULL),
('2cb28b60-bbc3-4be8-85f4-a2f3232f3b03', '2019-10-28', 'BIG-303 TC HIJAU', 'PCS', '<div><br></div>', '15', 'product-4ceb4721def1b2ce.png', '395 x 345 x 475', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2cf94d5f-0087-43bb-a814-86c6e400ad91', '2019-11-06', 'Charmmy kitty SD-21903 HK', 'UNT', '', '14002', 'sd-21903-hk--uk_1217841162_2.png', '1121 X 500 X 1247', NULL, NULL, NULL, 1, 0, NULL, NULL),
('2df51312-a3f2-4833-b5db-1c6a3e382126', '2018-04-09', 'Lapdesk HOWL', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lapdesk_HOWL_(16FEB16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2eab93ec-7ce7-4b3b-af7e-060b9bebbb16', '2019-10-28', 'KRS - 8R3 ARM', 'PCS', '', '15', 'product-b92ab3c10f11df7a.png', '550 x 510 x 860', NULL, NULL, NULL, 1, 1, NULL, NULL),
('2f0f5855-655d-4852-b423-7af19764a566', '2016-03-04', 'Barbie Luxe pillow top', 'SET', '', '6', 'barbie_luxe_160_rsz.png', '100,120,160,180,200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('30aa7011-f94b-41ac-a201-02692c27f597', '2019-10-29', 'BC-1867 OBR', 'PCS', '', '13001', 'bc-1867-obr-600x300x1800.png', '600 x 300 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('326c01b1-f29d-45e5-8f9a-23b01b168aa6', '2017-01-11', 'FROZEN WINTER MAGIC PILLOWTOP', 'SET', '', '6', 'Froz-winter.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('32a9b202-b90d-4e56-994a-59545a6491ce', '2019-10-29', 'LPC-8353 BQ', 'PCS', '', '18001', 'lpc-8353-bq--1200-x-440-x-.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('32e0f120-7168-4841-b2f9-6f2106b9d1dc', '2017-11-21', 'BCBC.B - X 48 Dory', 'PCS', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC.B-_X4B_DORY_.png', '650 x 450 x 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('336efd00-7136-43ad-b0f2-18d9c63b070f', '0000-00-00', '3 In 1 Classic', 'SET', '3 IN 1 CLASSIC', '2', 'big-7b3c9f1f883373ff.png', '120 x 200 x -', '  Sandaran :||||||  Bagian depan / Kaki depan :||||||  Divan :|||||| Twin Atas dan Twin Bawah :||||||||||||||||', '- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Rangka kayu oven + obat anti ktu/rayap||- Busa silver||- Perpaduan kain knitting + oscar coklat kopi||- Model alita / tahu||- Kain knitting||- Busa silver||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi Per 15 tahun||- Ukuran 100, 120 x 200 cm||', 1, 1, 0, NULL, NULL),
('349a041c-d123-4cbe-8673-42eb137987ef', '2019-10-28', 'MRS - 8463', 'PCS', '', '15', 'product-62448907d0442310.png', '800 x 475 x 630', NULL, NULL, NULL, 1, 1, NULL, NULL),
('34ad13d6-b096-4f38-8c3b-7a7f5d11886f', '2019-10-25', 'CRS - 5.2C.4MU.1D', 'SET', '', '14', 'product-96087fe1b2dc08d5.png', '650 x 450 x 1705', NULL, NULL, NULL, 1, 1, NULL, NULL),
('352b3dfc-6262-4e01-8aa0-e4dca5331f9c', '2019-10-29', 'Moto GP Lemari Pakaian WDM - 12022 - MGP', 'UNT', '', '1685cd4d-e98b-489a-8cfa-5e39a9de8c07', 'WDM12022_MGP.png', '806  X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('35e22f1c-2666-4e6f-b58b-c1f023fbdbb9', '0000-00-00', 'King Pocket Big Ben', 'SET', 'KING POCKET BIGBEN ', '2', 'big-43dfcec40c7b5adf.png', '200 x 200 x 65', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||||||||', '- Sand. England||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver + dacron||- Kain knitting putih||- Divan Per Spanyol||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC + busa + per||- Busa silver||- Tinggi divan = 26 cm||- Kain knitting putih||- Model kasur alita atau tahu||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Rebonded & Busa Silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 65 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||||||', 1, 1, 0, NULL, NULL),
('3615a3ea-675e-41b2-8fab-e4ed998cb352', '2019-10-29', 'Hot Wheels WDM-11225 HWL', 'UNT', '', '31002', 'wdm---11225-hwl-merah.png', '806 X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('361f201e-ee81-4636-b788-8720bd590e02', '0000-00-00', 'Bed Set Reguler Sand. 720', 'SET', '', '2', 'big-463cc0fdd3558633.png', '180 x 200 x 40', ' Sandaran : |||||||| Bed Set :||||||||||||||||||||||||||||||||', '- Sand. 720||- Rangka kayu oven + obat anti kutu/rayap+triplek||- Busa silver||- Kain oscar coklat kopi+coklat muda||- Divan diconecting dengan rangka spring ||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver + kain oscar coklat kopi||- Kain jaquard quilting||- Rangka spring bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Tinggi bed set + kaki stabil = 40 cm||- Ukuran 120, 140, 160, 180, 200 x 200 cm||||||||||||||', 1, 1, 0, NULL, NULL),
('37d4bb05-8528-4da5-8312-338a563e66b4', '2016-11-02', 'LPMR - 8226', 'UNIT', '', '18001', 'LPMR_-_8226_EDIT.png', '1200 X 430 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('37faae4b-d9d4-40f1-aca1-82cba8c9a119', '2019-10-29', 'LPC-8328 HTM', 'PCS', '', '18001', 'lpc-8328-htm.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('38362dd5-8d79-417a-b57e-079cb40213d5', '0000-00-00', 'NSo - X10 - PW', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-215bea8002140350.png', '440 x 340 x 610', 'Panjang||Lebar||Tinggi', '440 mm||340 mm||610 mm', 21, 1, 0, NULL, NULL),
('38ae93e8-c5fe-452a-b9b8-2730ded399e2', '2016-06-08', 'MFC - 43 FROZ', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'MFC-43_FROZ.png', '540 X 540 X 460', NULL, NULL, NULL, 1, 0, NULL, NULL),
('38b1a303-d106-4454-938f-324034bce861', '0000-00-00', 'Double Pocket Latex', 'SET', 'DOUBLE POCKET LATEX ', '2', 'big-cbfaf33d72488c31.png', '180 x 200 x 74', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. Cleopatra||- Rangka kayu oven + obat anti kutu/rayap+triplek||- Busa silver||- Kain oscar cream||- Divan Exotic||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 25 cm||- Kain oscar cream||- Model kasur double pocket||- Rangka kasur spring pocket ||- Per pinggir M-Guard||- Jumlah Per : 470 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Latex & Busa Silver||- Tinggi kasur = 38 cm||- Tinggi kasur + divan + stabil = 74 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('394c59e9-013b-4064-baef-b78a6eb1f34c', '2019-10-25', 'CRS - XU 48', 'SET', '', '14', 'product-eb7242d7019f1257.png', '650 x 450 x 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3a6cbe6a-3ca0-4614-bdef-2c590cd45ae3', '2019-10-29', 'Barbie DT-51001 BCF', 'UNT', '', '26002', 'DT-51001-BCF-(800X400X1300).png', '800 X 400  X 1300', NULL, NULL, NULL, 1, 0, NULL, NULL),
('3aba0f6b-7d14-4ef7-9a32-9195351e4833', '2019-10-29', 'RSG-928 OBR', 'PCS', '', '20001', 'rsg-928-obr-600x300x850.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3aba4ebe-768f-4c37-af8f-2b752a5cdbd4', '2019-10-29', 'Barbie SD-21001 BCF', 'UNT', '', '26002', 'SD-21001-BCF-(-1127-X-503-X1.png', '1127  X 503  X 1365', NULL, NULL, NULL, 1, 0, NULL, NULL),
('3ae9a428-b698-4fd3-bed2-fd149cd6219e', '2017-03-02', 'BED CAR HOT WHEELS', 'UNIT', '', '5', 'HW_bedcar_2b.png', '2500 X 1400 x 740', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3b226b20-1901-4d16-b07f-9fbb203cdb5b', '0000-00-00', 'Bed Car New Spiderman Classic Sport (Baggage Series)', 'SET', 'BED CAR NEW SPIDERMAN CLASSIC SPORT tempat tidur anak berbentuk mobil dengan bagasi yang dapat dibuka dan ditutup', '5', 'big-cbc7e93a5a07ed92.png', '100 x 180', 'Divan||Kasur||||Sandaran||Knock Down||Berlisensi||Garansi per', 'Bahan Divan menggunakan bahan partikel board dan kayu yang dilapisi dan dibungkus kain kemudian di air brush||Ukuran : 100 cm x 180 cm||kain kasur menggunakan bahan cotton dengan quilting sesuai dengan contour gambar||3 Dimensi||Ya||Ya||15 Tahun', 1, 1, 0, NULL, NULL),
('3cdd631f-3e7d-4b0c-9559-e63353260a5a', '2017-03-08', 'Golden Pillowtop  Sand. Cairo', 'Unit', '', '2', 'GOLDEN-PILLOW-TOP-fix-2017DSC07977.png', '160, 180, 200 x 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3ea1d3c3-2ed4-4838-a559-a1ccd4b247b2', '2017-11-29', 'MTR - 47.5 - MD', 'BH', 'MEJA TAMAN MTR (METRO)', '15', 'MTR-_47.5_MD_CKT_.png', '475 X 475 X 430', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3ed11c76-1769-4756-bae8-d40946472b82', '0000-00-00', 'WD - FZ 4.160 - NF', 'SET', '', '124', 'WD - FZ 4.160 - NF.png', '800 X 415 X 1626', NULL, NULL, NULL, 1, 1, NULL, NULL),
('3f023332-3438-4bca-8efb-6a2780bac3ad', '0000-00-00', 'NFr - X10 - EL', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-b49da10dc1028b77.png', '440 x 340 x 610', 'Panjang||Lebar||Tinggi', '440 mm||340 mm||610 mm', 18, 1, 0, NULL, NULL),
('3f9f5582-86af-4aa8-a6ba-adf9d91fc4b5', '2015-10-12', 'BCBC.B - M  242 BMAN', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-b4724b3c1beb445a.png', '650 x 450 x 1300', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1300 mm', 13, 1, 0, NULL, NULL),
('3fd705ee-8b4c-4fd6-8e99-da331f782fc5', '2019-10-25', 'KG - 721 HR', 'PCS', '', '15', 'product-4488a0d70a886459.png', '1040 x 830 x 985', NULL, NULL, NULL, 1, 1, NULL, NULL),
('411f2c25-4b73-48da-80ae-d91b45e40a26', '2018-04-05', 'BCSC - B - 242 LPOOH', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCSC_-_242_L_Pooh.png', '650 X 450 X 1530', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4137a442-1ea9-473a-8047-39361c3e38f9', '2017-03-31', 'KCB - 910', 'SET', '', '15001', 'KCB-910.png', '770 X 770 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('41aec0da-0c4d-464d-baca-e9b82ea626de', '2017-01-11', 'TWIN CAPTAIN AMERICA', 'SET', '', '6', 'Twin-Captain-america.png', '100 X 200, 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('41afd9f1-0c5c-49a4-8749-53b9484ff5b6', '0000-00-00', 'BIG BOXER 65 HKGS', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-e785051c87c02688.png', '620 x 435 x 310', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||62 cm||43,5 cm||31 cm||Ukuran Kemasan||64 cm||44,5 cm||56 cm', 133, 1, 0, NULL, NULL),
('4225483a-9503-4138-86c7-d43a146ba0e4', '0000-00-00', 'NFr - X10 - AN', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-1c0f2bc2f92179ea.png', '440 x 340 x 610', 'Panjang||Lebar||Tinggi', '440 mm||340 mm||610 mm', 17, 1, 0, NULL, NULL),
('42ece99c-d06e-4267-96b3-9145849c748b', '0000-00-00', 'MR - KT 140 - LMH', 'SET', '', '116', 'MR - KT 140 - LMH.png', '800 X 415 X 1400', NULL, NULL, NULL, 1, 1, NULL, NULL),
('430b63ba-f68b-48d6-9109-085bc634265e', '0000-00-00', 'SD - FZ 9014 SF', 'SET', '', '124', 'SD - FZ 9014 SF.png', '1096 X 426 X 1455', NULL, NULL, NULL, 1, 1, NULL, NULL),
('440b6e0d-ee74-4396-8f56-8586889f894b', '2018-04-04', 'BCBC. B - X48 - SUBA', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC,B-_X48_SUBA_(22JUL16).png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('44a54dd3-89ec-40cf-90a5-2712558c1ef0', '2015-10-12', 'Meja Makan Big-3696', 'SET', '', '15', 'product-d7fb0b1df2e73427.png', '955 x 955 x 720', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||95,5 cm||95,5 cm||70,5 cm||Ukuran Kemasan||96 cm||96 cm||12 cm', 109, 1, 0, NULL, NULL),
('44c1c174-608e-4cb2-82b3-32f75cec7de7', '2019-10-29', 'LP-1902 A-BG OWH', 'PCS', '', '18001', 'lp-1902-a-bg-owh.png', '800 x 415 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4516b98f-5a06-4d3f-b64d-d05f8667eaeb', '2015-10-12', 'Meja Teras Big-7550 b', 'SET', '', '15', 'product-e4f5d9eaf738ee4a.png', '840 x 580 x 460', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||84 cm||58 cm||46 cm||Ukuran Kemasan||84 cm||58 cm||166 cm (30 Tumpuk Kursi)', 108, 1, 0, NULL, NULL),
('465cab14-2bda-455d-a4b7-b95e83a04586', '0000-00-00', 'Hello Kitty Twin Bed Classic Sandaran Hati', 'SET', 'HELLO KITTY TWIN BED CLASSIC SANDARAN HATI Springbed yang terdiri dari twin atas dan twin bawah', '6', 'big-ce41e666bac07d70.png', '120 x 200 x 52', 'Twin atas dan bawah||Tinggi twin||Kasur||||||Sandaran||Garansi Per', 'Rangka kayu oven anti rayap ||52 cm||ukuran : 100 cm x 200 cm||ukuran : 120 cm x 200 cm||kain knitting , quilting continues dengan busa density tinggi dan rangka spring bonel, Per pinggir model Z - Guard diameter kawat 2.44 mm tinggi per 15 cm||Sandaran model hati dan dilapisi kain vaniboa||15 Tahun', 1, 1, 0, NULL, NULL),
('46c83ecc-13d0-4566-af90-5b20bc9cf581', '2016-12-20', 'SBC 5000 FROZEN', 'UNIT', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SBC_-_5000_FROZ.png', '455 X 435 X 1080', NULL, NULL, NULL, 1, 0, NULL, NULL),
('487871ce-072f-4229-8153-ca03c1abb757', '0000-00-00', 'Bed Car Hello Kitty (Baggage Series)', 'SET', 'Tempat tidur anak berbentuk mobil', '5', 'big-fe414df7341105c9.png', '245 x 145 x 68', 'Divan||||Kasur||||Sandaran||Knock Down||Berlisensi||Garansi per', 'Ukuran : 245 cm x 145 cm x 68 cm||Bahan Divan menggunakan bahan partikel board dan kayu yang dilapisi dan dibungkus kain serta air brush||Ukuran : 100 cm x 180 cm||Kain kasur menggunakan bahan cotton dengan quilting sesuai dengan contour gambar||3 Dimensi||Ya||Ya||15 tahun', 13, 1, 0, NULL, NULL),
('48de9c1d-dcae-4245-bd43-b42ee02ea622', '2019-10-29', 'LPC-8332 AP LB', 'PCS', '', '18001', 'lpc-8332-ap-lb_2146482273.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('49cc07b1-5d9b-4393-90f3-fd34e0a6b3e8', '2019-10-29', 'Barbie WDM-11125 BCF', 'UNT', '', '26002', 'wdm-11125-bcf-2_(1)1.png', '806  X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('4a4c1e79-8c2d-4790-bbac-14ac21a6442e', '2017-03-31', 'KCA - 9112', 'set', '', '15001', 'KCA-9112.png', '790 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('4a546e43-f624-468f-9e1c-447d7faf4c6c', '0000-00-00', 'Chicago Hotel Platinum Bed', 'SET', 'CHICAGO HOTEL PLATINUM BED ', '7', 'big-6531761014dff1cd.png', '200 x 200 x 53', '  Sandaran :||||||||  Divan :||||||||||||Kasur :||||||||||', '- Sand. 174A New Cleopatra (Oscar Coklat)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- Busa Super gold||- Kain Oscar coklat kopi||- Divan Exotic Las Vegas (Oscar Putih)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- PP board PVC||- Busa super gold||- Tinggi divan = 25 cm||- Kain oscar coklat kopi||-- Model kasur resleting (bisa dilepas), Washable||- Kain knitting quilting||- Memory foam + rebonded||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 62 cm||- Ukuran 160, 180, 200 x 200 cm', 6, 1, 0, NULL, NULL),
('4b04beab-5ebd-4ab3-8809-ebd972e21ab9', '2015-10-12', 'Kursi KAC 21 KREC', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-92a7e15479c90dc2.png', '540 x 410 x 523', 'Width||Height||Length||Weight', '||||||', 91, 1, 0, NULL, NULL),
('4b510964-3726-4eb9-8227-4b91b4c7bb95', '2019-10-29', 'Barbie SD-21002 BBD', 'UNT', '', '26002', 'sd-21002-bbd--uk_(1)1.png', '1127 X  503 X 1365', NULL, NULL, NULL, 1, 0, NULL, NULL),
('4b9e22a1-1682-4d80-b49d-3a9229f84e52', '0000-00-00', 'Yunani Salur Pilow Top', 'SET', NULL, '2', 'big-18596b2f8837f72a.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('4bc95cef-88cd-4e77-bac1-dce4afe96fe8', '2019-10-29', 'Captain America LH - 32112 CIV', 'UNT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'LH_32112_CIV.png', '1200  X 400  X 1250', NULL, NULL, NULL, 1, 0, NULL, NULL),
('4bd068ef-6ece-4c6e-9b39-e97921a4c8f5', '0000-00-00', 'Stockcase SPDA-5000 AK1', 'SET', '', '16', 'product-7bee30b41f199fff.png', '450 x 430 x 1175', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45 cm||43 cm||117.5 cm||Ukuran Kemasan||45 cm||44.5 cm||48 cm||Kapasitas Muat||300||650', 61, 1, 0, NULL, NULL),
('4c52bcce-b1ef-4081-b50e-9ff7f504a7ab', '2019-10-29', 'Moto GP Meja Belajar SD - 22011 - MGP', 'UNT', '', '1685cd4d-e98b-489a-8cfa-5e39a9de8c07', 'SD-_22011_MGP.png', '1200 X 500  X 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('4c9ad087-5058-4e8d-8002-314700a5296a', '2019-10-28', 'KRS - 2R3 - ARM', 'PCS', 'KURIS ROTAN SINTETIS', '15', 'product-ac61bf53f2e853ef.png', '550 x 480 x 820', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4d794e6d-fc0a-4e64-bff8-c58c7ebf4973', '2017-11-29', 'NEA - 244 - AK3', 'SET', '', '16', 'NEA_244_AK3.png', '435 X 430 X 1200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4daf62d6-a12e-4f80-8872-c5b1873aadbc', '2016-12-22', 'SILVER PILLOW TOP', 'SET', '', '2', 'Silver-pillowtop_EDIT.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4e18fc1b-6d7a-4ef4-bac6-a2189a377c2e', '2019-10-28', 'SOFSAN - 663 - 2J Arm', 'PCS', '', '14', 'product-81ec710db344e8cf.png', '1050 x 530 x 755', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4e4d432e-eadd-4d2b-8153-f00f18e73a28', '2018-04-10', 'KAC - 21 - SOKW', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'KAC-21_SOKW_(21OKT14).png', '615 X 470 X 540', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4e8e80ca-d247-4c71-96f1-b81ac9623dcc', '0000-00-00', 'Standard Plus', 'SET', 'STANDARD PLUS ', '2', 'big-20e69d564b456804.png', '200 x 200 x 57', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||||', '- Sand. Napolly Plus||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat muda & list coklat kopi||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar coklat kopi||- Model kasur reguler||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain jaquard quilting||- Busa silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil =  57 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||', 1, 1, 0, NULL, NULL),
('4ef2f7c5-e0b2-4d10-bbd1-bb03913ed5a6', '2015-10-16', 'LB - CA 2.1 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'LB_-_CA_2.1_MM_.png', '424 X 295 X 1200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('4ff33b32-da3c-470b-ad6a-d95027442146', '0000-00-00', 'SD - KT 9010 - CCC', 'SET', '', '116', 'SD - KT 9010 - CCC.png', '1176 X 510 X 1536', NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `m_barang` (`id_barang`, `tanggal`, `nama_barang`, `satuan`, `deskripsi`, `id_kategori`, `gambar`, `ukuran`, `spec_name`, `spec_val`, `posisi`, `aktif`, `new`, `tanggal_berlaku`, `tanggal_exp`) VALUES
('507f1f25-70bb-423b-936e-836066c28322', '0000-00-00', 'Big Boxer - 80 H', 'SET', NULL, '20', 'product-2ca8e1d61839c524.png', '680 x 480 x 415', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||68 cm||48 cm||41,5 cm||Ukuran Kemasan||70 cm||49 cm||82 cm', 145, 1, 0, NULL, NULL),
('5132d8e7-8c05-4c0e-b21b-5dd71141b57c', '0000-00-00', 'Big Boxer - 65 MCB', 'SET', NULL, '20', 'product-6742d9344d1886eb.png', '620 x 435 x 310', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||62 cm||43,5 cm||31 cm||Ukuran Kemasan||64 cm||44,5 cm||56 cm', 146, 1, 0, NULL, NULL),
('513b83e3-1ed7-449f-a3b1-904c45679059', '2016-04-27', 'Laptop Table KTCL', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Laptop_Table_KTLV.png', '615 X 470 X 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('516beebe-5984-45ae-ad07-3797c971864c', '2019-10-29', 'Hot Wheels WDM - 11132 - HWL', 'UNT', '', '31002', 'WDM-11132-HWL.png', '1200 X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('520dadab-2eae-47b5-b0a7-dded54856b0d', '2017-11-29', 'KURSI ROTAN - 3B3', 'BH', '', '15', 'Big_-3B3.png', '380 X 380 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('52a8d935-a815-4550-8a3f-13e161a0acda', '2019-10-25', 'CRS - 144.2D', 'SET', '', '14', 'product-19c07c435b593b0a.png', '650 x 450 x 1530', NULL, NULL, NULL, 1, 1, NULL, NULL),
('534a3978-e69d-4538-aded-82edb1514e59', '2017-03-08', 'San Fransisco sand. new sandringham', 'unit', '', '2', 'san-francisco.png', '100, 120, 160, 180, 200 x 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('55153afe-3ba9-4ce3-bc43-d8dad990be50', '2015-10-16', 'WD - CA 2.170 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'WD_-_CA_2.170_MM_.png', '801 X 430 X 1708', NULL, NULL, NULL, 1, 1, NULL, NULL),
('551dc086-f4cc-495b-96e2-02a143485baa', '2017-04-05', 'KCB - 9120', 'SET', '', '15001', 'KCB-9120.png', '790 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('55213b3c-9bb3-4e06-9e5a-e406121fcba8', '0000-00-00', 'KAC - 21 - SOPW', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-886c121b05b64927.png', '540 x 410 x 523', 'Panjang||Lebar||Tinggi', '540 mm||410 mm||523 mm', 22, 1, 0, NULL, NULL),
('55a33f47-6b47-455a-82cd-1245991d1427', '2016-12-20', 'SCA1 - 5000 - CWAR', 'UNIT', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SCA1_-_5000_CWAR.png', '455 X 435 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('55ca6bd2-e023-4c12-93c2-d11cb792b98d', '2019-10-28', 'MRS - 8473 SD', 'PCS', '', '15', 'product-9fb056cdaffd0050.png', '800 x 475 x 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('55db7b13-aac4-4c80-938a-ecf60c734439', '2017-01-30', 'Golden Plustop Spring Latex', 'SET', 'GOLDEN PLUSTOP SPRING LATEX', '2', 'golden-plus-top.png', '180 x 200 x 61', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||||||||', '- Sand. Milan||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Divan Barcelona ||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar coklat kopi||- Model kasur plustop||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 54 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||- Tinggi divan = 18 cm||- Tinggi kasur + divan + stabil = 61 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 1, NULL, NULL),
('5615931d-461b-451b-9903-b452152a435c', '2019-10-28', 'Keroppi LB-5 KRP', 'UNT', '', '15002', 'lb-5-krp_(1)1.png', '1120 X 500 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('56635162-0953-4048-8704-3010c2a5f2b6', '2016-04-27', 'Laptop Table Frozen', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Laptop_Table_Frozen.png', '615 X 470 X 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('5693bf37-0cfa-40ad-9cad-7b2e55ab3d7c', '2016-04-21', 'NSP - X10 HW', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NSP_X10_HW.png', '530 X 470 X 870', NULL, NULL, NULL, 1, 0, NULL, NULL),
('56eb566f-ca4b-42e2-80e6-ff823ac0761e', '2019-10-29', 'Frozen WDM - 11622 - FFV', 'UNT', '', '32002', 'wdm-11622-ffv.png', '800  X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('56ffaae9-11a9-422c-8672-46b18b4150a3', '2019-10-29', 'Spiderman LB - 5 - SPD', 'UNT', '', '78f09f46-f026-4580-9b72-d8f0bb5a4644', 'LB_5_SPD.png', '425 X 295 X 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('570eb354-ce27-414b-a083-2930bc3479d4', '2017-02-27', 'Big Pocket Plus ', 'SET', '', '2', 'big-pocket-plus-sand.-belgium_.png', '180 x 200 x 40', NULL, NULL, 1, 1, 1, NULL, NULL),
('573cb279-e7e2-4a4b-abf1-040c5a0f55a9', '0000-00-00', 'Kursi Baso Big-303', 'SET', NULL, '15', 'product-af1ce2f00a1dd493.png', '395 x 345 x 475', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||39,5 cm||34,5 cm||47,5 cm||Ukuran Kemasan||39,5 cm||34,5 cm||165 cm (30 Tumpuk Kursi)', 130, 1, 0, NULL, NULL),
('58dbe20f-792e-4184-aa4d-a9ad3398cfc7', '2017-02-08', 'KING POCKET LATEX', 'UNIT', '', '2', 'kp-plus_EDIT.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('59b47475-3adf-4908-85e7-0b4831fce061', '2019-10-29', 'BC-1868 OPT', 'PCS', '', '13001', 'bc-1868-opt-600x400x1800_1444287429.png', '600 x 400 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('59cce2a5-52de-471a-9b79-616a6c50e8cf', '2019-10-29', 'LP-1902 A-BT OTE', 'PCS', '', '18001', 'lp-1902-a-bt-ote.png', '800 x 415 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5a15c233-87e5-4398-ba06-9a117abee0a3', '2019-10-29', 'LPC - 8228 HTM', 'PCS', '', '18001', 'lpc-8228-htm.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5ad7e56c-b753-49da-803b-f670e77c1769', '0000-00-00', 'BIG BOXER 44 SPGC', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-0619756bf8706840.png', '550 x 385 x 285', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||55 cm||38,5 cm||28,5 cm||Ukuran Kemasan||57 cm||39,5 cm||51 cm', 135, 1, 0, NULL, NULL),
('5bc397da-7076-4a59-ae8c-afdec8589b7d', '2019-10-29', 'MR-619 A OWH', 'PCS', '', '22001', 'mr-619-a-owh.png', '750 x 400 x 1500', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5c00e746-cf3f-49f4-af72-02b66e7ec709', '2019-10-29', 'RSG-936 OBR', 'PCS', '', '20001', 'rsg-936-obr-600x300x850_2106935717.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5cbd3f88-3370-42c4-88f2-259af9e1c77d', '2016-12-22', 'KING POCKET PLUS', 'SET', '', '2', 'kp-plus_EDIT.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5ce19711-9770-40fd-b882-01b9e5b363fe', '2019-10-29', 'BC-1666 OHJ', 'PCS', '', '13001', 'bc-1666-ohj-600x300x1600.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5ce302fb-0b25-4318-9a97-0317d68b9b4d', '2019-10-29', 'BC-1665 OHJ', 'PCS', '', '13001', 'bc-1665-ohj-600x300x1600.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5d1e9412-cf4a-4d80-999a-733e5e9b5035', '0000-00-00', 'Hello Kitty Twin Bed', 'SET', 'Kasur twin yang terdiri dari kasur/twin atas terdiri dari busa dan kasur/twin bawah dilengkapi roda caster', '3', 'big-615a098e53cb86b9.png', '120 x 200 x 52', 'Divan||||Kasur||||||||||Sandaran||Knock Down||Berlisensi||Garansi per', '||||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Tinggi Twin 52 cm||Lapisan kasur menggunakan kain cotton quilting sesuai dengan contour gambar panel||||Partikel board dengan bentuk 3 Dimensi, dilapisi dengan Flexy dan aksesoris yang di air brush||Tidak||Ya||15 Tahun', 2, 1, 0, NULL, NULL),
('5d8b1267-90ab-4e61-80e0-8614caaa4532', '2016-06-13', 'NBB - X10 BARBIE', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NBB_-_X10_BBD.png', '440 x 340 x 610', NULL, NULL, NULL, 1, 0, NULL, NULL),
('5dcd50a7-5708-4fcc-a743-eef7f7aaa29d', '2017-11-29', 'KURSI - 24 NAGOLI', 'BH', '', '15', 'Big_-_24_Nagoli.png', '380 X 380 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5df0ad47-bf27-49d4-b8f1-6a732847c812', '2017-04-05', 'KCB - 9110', 'SET', '', '15001', 'KCB-9110.png', '770 X 770 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('5df7629e-45bb-4f9f-a0da-4614969c832c', '2019-10-29', 'ATR-0339 OAK', 'PCS', '', '12001', 'atr-0339_0_1340008560_(1).png', '1200 x  400 x 443', NULL, NULL, NULL, 1, 0, NULL, NULL),
('5ee900e6-b4be-40d6-966e-88d0b93b10c7', '2017-11-29', 'KURSI BASO BIG - 304', 'BH', '', '15', 'BIG_304_c.png', '340 X 340 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('5ef80f5c-9348-4f91-9c0e-d5cec6b48bb2', '0000-00-00', 'Meja MFC - 43 - KTBF', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-4f8390949878b52a.png', '540 x 540 x 460', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||54 cm||54 cm||46 cm||Ukuran Kemasan||54 cm||54 cm||142,5 cm (20 Tumpuk Kursi)', 92, 1, 0, NULL, NULL),
('5f0d4164-c7d7-4f64-8aeb-33d8c62a8fdd', '2019-10-29', 'Captain America LH - 32111 CIV', 'UNT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'LH_32111_CIV_EDIT.png', '1395  X 412  X 782', NULL, NULL, NULL, 1, 0, NULL, NULL),
('5fc321fe-dc1e-48cd-ba73-c229686d50f4', '2019-10-28', 'KRS - 7R3 - ARM BIRU', 'PCS', '<div>KURSI ROTAN SINTENTIS</div><div><br></div>', '15', 'product-1e8debe4ba6863d0.png', '630 x 585 x 685', NULL, NULL, NULL, 1, 1, NULL, NULL),
('60a0980c-b6eb-49fb-b937-6c92f913918f', '2019-10-29', 'Princess SD-21501 PCS', 'UNT', '', 'a4d0df09-ccf8-40c9-8cd4-3a5cf3ba26a3', 'Princess_SD-21501_PCS1.png', '1206 X 500 X 1500', NULL, NULL, NULL, 1, 0, NULL, NULL),
('6149b365-7b28-48a3-bd78-949b45d28818', '2019-10-29', 'LPC-8229 ACM', 'PCS', '', '18001', 'lpc-8229-acm.png', '806 x 420 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('61ab60f7-6d72-4910-8d4c-892dc4509b6b', '2018-04-05', 'BCBC. B - X36 - CWAR', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC.B-_X36_CWAR_(16MAR16)_.png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('61b1ba75-a8a8-47ff-8f65-482ccb537629', '2019-10-25', 'CRS - MU 48D', 'SET', '', '14', 'product-19c07c435b593b0a.png', '650 x 450 x 1740', NULL, NULL, NULL, 1, 1, NULL, NULL),
('64115daa-32e3-4070-b44a-0cf39f8be28a', '2019-10-29', 'LPC-8252 WQ', 'PCS', '', '18001', 'lpc-8252-wq.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('64b534fe-e037-4d74-b7e0-f0822bd51af6', '2019-10-29', 'Frozen WDM - 11632 - FFV', 'UNT', '', '32002', 'WDM-11632-FFV.png', '1200  X 420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('64b8bc23-0819-404a-bbc5-e7f5ce4159ea', '0000-00-00', 'BIG BOXER 80 B', 'SET', NULL, '20', 'product-77132970b8b98cb8.png', '700 x 480 x 415', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||70 cm||48 cm||41,5 cm||Ukuran Kemasan||72 cm||49 cm||76 cm', 143, 1, 0, NULL, NULL),
('65e725be-a06b-4a39-b96d-28975ea9ef23', '2019-10-29', 'Tsum-tsum Meja Belajar SD - 22231 - TSM', 'UNT', '', '6e2410d9-b45b-43d5-9500-ec414d5f3d01', 'SD_22231_TSUM.png', '1200 X 500  X 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('66acf01d-b53e-4680-8cf6-6a16b1ebe0a4', '2019-10-29', 'Hot Wheels SD-21210 HWL', 'UNT', '', '31002', 'sd-21210-hwlmrhw2_1710876949.png', '1151  X 500 X 1250', NULL, NULL, NULL, 1, 0, NULL, NULL),
('66c307be-4216-4fdf-b8be-c672bf9c3e43', '0000-00-00', 'Stockcase Karakter SFC2-4000 KREC', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-d6d7e7be6f2a3f7e.png', '455 x 435 x 980', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45.5 cm||43.5 cm||98 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650', 51, 1, 0, NULL, NULL),
('671012ce-0b12-4a22-8283-7d15fd431ef2', '2017-12-07', 'MR - 617 - CLS', 'SET', '', '22001', 'MR_-_617_CLS.png', '983 X 440 X 1415', NULL, NULL, NULL, 1, 1, NULL, NULL),
('676bfef6-7733-49fc-8f19-1e0cbf802a8a', '2017-11-29', 'SWNB - 400 - BK1', 'SET', '', '16', 'SWnB_-_400_BK1.png', '450 X 430 X 975', NULL, NULL, NULL, 1, 1, NULL, NULL),
('67af3f8b-d6b9-41de-87f3-940274ad014d', '0000-00-00', 'BIG BOXER 44 HKHP', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-9921ed10c56a5516.png', '550 x 385 x 285', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||55 cm||38,5 cm||28,5 cm||Ukuran Kemasan||57 cm||39,5 cm||51 cm', 134, 1, 0, NULL, NULL),
('67e237c8-11cc-4887-95ce-181ab572281c', '2017-01-30', 'King Pocket Paris', 'SET', 'KING POCKET PARIS ', '2', 'K-p-paris_EDIT.png', '120 x 200, 160 x 200, 180 x200, 200 x 200', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||||||||', '- Sand. France||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver ||- Kain ivory coklat muda ||- Divan Romantic ||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 25 cm||- Kain ivory coklat muda||- Model kasur alita atau tahu||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Rebonded & Busa Silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 64 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||||||', 1, 1, 0, NULL, NULL),
('6815102a-6ce9-4612-841f-a56936f9c126', '0000-00-00', 'Stockcase STA-4000 BK1', 'SET', NULL, '16', 'product-93176139d9d97b5b.png', '435 x 430 x 890', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||43.5 cm||43 cm||89 cm||Ukuran Kemasan||44.5 cm||45 cm||48 cm||Kapasitas Muat||300||650', 68, 1, 0, NULL, NULL),
('69905808-e362-4241-8775-1ee9158903d5', '0000-00-00', 'Hello Kitty Pillow Top', 'SET', NULL, '6', 'big-eff1746d9da1cb04.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('6a3d53b0-0c2a-40e4-98f6-08b654197aec', '2015-10-12', 'Kursi Iklan 401', 'SET', '', '15', 'product-1a15f8b6c1828125.png', '380 x 380 x 450', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||35 cm||35 cm||45 cm||Ukuran Kemasan||35 cm||35 cm||162 cm  (30 Tumpuk Kursi)', 132, 1, 0, NULL, NULL),
('6aaf745a-4c54-4ff8-9aab-674a768ca20f', '2016-12-15', 'Charmmy kitty WDM - 1325 CKT3', 'UNIT', '', '14002', 'WDM_1325_CKT3.png', '800 X 435 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('6b0d64db-43d6-4f4d-a179-0283d2480c15', '2015-10-12', 'KURSI BIG 552', 'SET', '', '15', 'product-7d23ff6f1d1b377e.png', '590 x 565 x 735', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||59 cm||56,5 cm||73,5 cm||Ukuran Kemasan||59 cm||56,5 cm||175 cm (20 Tumpuk Kursi)', 110, 1, 0, NULL, NULL),
('6b76de2b-2fd4-4331-9adf-3dae7ac5ef68', '2015-10-12', 'SCA1 - 5000 - HOWL', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-b775e825c7a4aebd.png', '455 x 435 x 1200', NULL, NULL, 2, 1, 0, NULL, NULL),
('6bcfa15c-6f86-4faf-84b5-cba29156d075', '0000-00-00', 'Big Boxer-44', 'SET', NULL, '20', 'product-deed7a4585cc629f.png', '510 x 470 x 872', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||51 cm||47 cm||87,2 cm||Ukuran Kemasan||51 cm||47 cm||201 cm', 150, 1, 0, NULL, NULL),
('6c074c85-9012-4684-af20-2fc9fe57302b', '2016-12-22', 'New Silver Plus', 'SET', 'NEW SILVER PLUS ', '2', 'new-silver-plus_EDIT.png', '200 x 200 x 54', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. New Renoir||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar coklat kopi||- Model kasur resleting (bisa dilepas) / Washable||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 54 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('6c3fc1b1-891d-4686-9f7c-7de89671a179', '2019-10-24', 'CABRO - G11 X D2C', 'SET', '', '18001', 'product-22b91329bcf1aa8d.png', '650 x 450 x 1675', NULL, NULL, NULL, 1, 1, NULL, NULL),
('6c43ec6b-a8e4-434b-a27d-52a2441bcabb', '0000-00-00', 'Golden Pillow Top Sandaran Belgium', 'SET', 'GOLDEN PILLOW TOP SANDARAN BELGIUM ', '2', 'big-8b714a84d15ec854.png', '180 x 200 x 61', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. Belgium||- Rangka kayu oven + obat anti kutu/rayap||- Busa Silver||- Kain oscar cream||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar cream||- Model kasur pillowtop||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver + rebonded||- Tinggi kasur = 32 cm||- Tinggi kasur + divan + stabil = 61 cm||- Ukuran  160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('6d537c35-fe47-46aa-b19a-d09d4c5f2f78', '0000-00-00', 'BIG BOXER B5-5', 'SET', NULL, '20', 'product-63bdf504d288b83b.png', '455 x 300 x 190', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||45,5 cm||30 cm||19 cm||Ukuran Kemasan||46 cm||31 cm||51 cm', 147, 1, 0, NULL, NULL),
('6d7e89e4-7040-4bb6-ac7c-7c4988aa1657', '2016-06-08', 'BCBC - X12 - FWIN', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_-_X12_FROZ_WINTER_MAGIC_EDIT.png', '650 X 450 X 1580', NULL, NULL, NULL, 1, 0, NULL, NULL),
('6d9ea30f-553d-4313-9a0e-82daf562bd8a', '0000-00-00', 'New Latex Mix Sand. Buckingham', 'SET', NULL, '2', 'big-b7cad01dd255d51e.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('6dd46737-cecb-4a9a-b1fb-409d26f2a9e1', '2017-02-03', 'CAPTAIN AMERICA CIVIL WAR', 'SET', '', '3', 'Twin-CA-civil-war.png', '100 X 200, 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('6e60fce3-6d85-42a8-b295-7be734534bc4', '2019-10-29', 'LPJ-19202 OSN', 'PCS', '', '18001', 'lpj---19202-osn--uk.png', '800 x 440 x 1924', NULL, NULL, NULL, 1, 1, NULL, NULL),
('6f6ab919-7566-4c1d-b757-31ccbf2edef8', '2017-01-11', 'SPIDERMAN ULTIMATE PILLOWTOP', 'SET', '', '6', 'spiderman-Ultimate-pillowtop.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('703832dc-64dc-4898-a3a7-7bd5bc605821', '2019-10-28', 'MRS - 7573', 'PCS', 'MEJA ROTAN SINTETIS', '15', 'product-4c9c959d1b90b505.png', '700 x 550 x 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('70c9ef49-81de-4793-8e56-a06b5b1b780f', '2015-10-12', 'BCBC.B -163 SMAN', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-1342c2f502b689de.png', '650 x 450 x 1530', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||65 cm||45 cm||153 cm||Ukuran Kemasan||76 cm||46 cm||51 cm||Kapasitas Muat||190||290', 32, 1, 0, NULL, NULL),
('71d3c131-9afe-42ec-ae03-e6bf562f0652', '0000-00-00', 'Las Vegas Hotel Platinum Bed', 'SET', 'LOS ANGELES  HOTEL PLATINUM BED', '7', 'big-7e0218ecf5bf49ea.png', '200 x 200 x 61', '  Sandaran :||||||||  Divan :||||||||||||Kasur :||||||||||||||||||', '- Sand. 729 Los Angeles (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- Busa Super gold||- Kain Oscar cream||- Divan Monarchy Los Angeles (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- PP board PVC||- Busa super gold||- Tinggi divan = 25 cm||- Kain oscar cream||- Model kasur double pollytop||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa super gold + latex||- Tinggi kasur = 36 cm||- Tinggi kasur + divan + stabil = 70 cm||- Ukuran 160, 180, 200 x 200 cm', 7, 1, 0, NULL, NULL),
('71eee14b-1b92-4212-8cb2-08f5e129fdc3', '2017-01-11', 'TWIN FROZEN WINTER MAGIC', 'SET', '', '6', 'twin-Froz.png', '100 X 200 , 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('71f9f127-a025-4df0-b002-cc8150d649cb', '2017-03-31', 'KCB - 930', 'SET', '', '15001', 'KCB-930.png', '1180 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('72432f56-6d0e-4c6b-b585-dbe237f58a77', '2018-04-09', 'KURSI IKLAN BIG 305 SPGC', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Big_-_305_Iklan_SPGC.png', '395 X 345 X 475', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7357a1f3-81d5-4a5d-8774-b832ae604e06', '2019-10-29', 'LP3-B2PC1-LR', 'PCS', '', '18001', 'lp3-b2pc1-lr_sbrw.png', '1200 x 430 x 1830', NULL, NULL, NULL, 1, 1, NULL, NULL),
('73ebeffb-64d5-46a0-a0b4-2e380fd078bd', '0000-00-00', 'Hello Kitty Classic', 'SET', 'HELLO KITTY CLASSIC springbed mempunyai lapisan kasur terdiri dari busa density tinggi dengan rangka kasur spring dan model kasur resleting (bisa dilepas)', '6', 'big-65609852287963c6.png', '200 x 200 x 44', 'Divan||Tinggi Divan||Kasur||||||||||Tinggi Kasur||||Sandaran||Knock Down||Garansi per', 'Rangka divan box dilapisi pp board, busa dibungkus kain oscar warna putih dengan bemper kain oscar merah||18 cm||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Ukuran : 160 cm x 200 cm||Ukuran : 180 cm x 200 cm||Ukuran : 200 cm x 200 cm||26 cm||Tinggi kasur + tinggi divan + tinggi kaki stabil 55 cm||Kayu dilapisi busa dan dibungkus dengan kain oscar||Tidak||15 tahun', 11, 1, 0, NULL, NULL),
('73ede1bf-5fde-4a92-93b0-620c1e73b7b3', '2019-10-29', 'RSG-936 OHJ', 'PCS', '', '20001', 'rsg-936-ohj-600x300x850.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7465fd4b-b44f-4445-93a3-34e10f5f95ee', '2017-11-21', 'BCBC.B - X36 PR', 'PCS', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_-_X36_Princess_Merah.png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('74857b57-610a-480e-b276-33d752fd0d92', '0000-00-00', 'Big Boxer-26', 'SET', NULL, '20', 'product-2c510e94162cc0db.png', '510 x 470 x 872', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||51 cm||47 cm||87,2 cm||Ukuran Kemasan||51 cm||47 cm||201 cm (20 Tumpuk)', 152, 1, 0, NULL, NULL),
('74e82c57-ae6b-4ae7-8519-a92debc2e917', '2019-10-29', 'LPJ-19202 CBR', 'PCS', '', '18001', 'lpj---19202-cbr--uk.png', '800 x 440 x 1924', NULL, NULL, NULL, 1, 1, NULL, NULL),
('75963100-25fc-4093-856a-052de54941a5', '2015-10-12', 'Meja Makan 3696 KB', 'SET', '', '15', 'product-a9c7ae728e1d24e1.png', '955 x 955 x 720', 'Product Size||Kaki Besi||Daun Meja||Packing Size||Kaki Besi||Daun Meja', 'Ukuran Produk||95.5 cm x 95.5 cm x 77 cm||95.5 cm x 95.5 cm x 77 cm||Ukuran Kemasan||83 cm x 83 cm x 15 cm||95.5 cm x 95.5 cm x 5.3 cm', 107, 1, 0, NULL, NULL),
('75e3ae02-863b-4446-a593-e16cf45204c7', '2019-10-29', 'WD - FZ 3180 - WM', 'UNT', '<p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Colour &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Glossy White</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">The main ingredient &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Partical Board</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Thickness &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Min. 15 mm</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Foil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PVC Glossy</p>', '32002', 'WD_-_FZ_3180_-_WM1.png', '1201 X 430 X 1953', NULL, NULL, NULL, 1, 0, NULL, NULL),
('762199db-1327-4f8f-adc0-41c1356dd7f9', '2017-11-29', 'SCA - 5000 PK1', 'SET', '', '16', 'SCA_-_5000_PK1.png', '450 X 430 X 1200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('762f4463-c839-43af-90dd-13f6d7a479c1', '0000-00-00', 'SC - KT 1.040 - LMH', 'SET', '', '116', 'SC - KT 1.040 - LMH.png', '606 X 300 X 450', NULL, NULL, NULL, 1, 1, NULL, NULL),
('76eb3396-bd33-4642-8a78-6bd8e3619e55', '2018-04-05', 'BCSC - B - 2L2 CKST', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCSC_B_-_2L2_CKST_(03NOV17)_EDIT_.png', '650 X 450 X 1530', NULL, NULL, NULL, 1, 1, NULL, NULL),
('774546cb-4ff3-48b7-bba4-498d14dfb45f', '2019-10-28', 'Sofia The First SDT - 2915 SEP', 'UNT', '', '17002', 'sdt-1-sep-edit_(2).png', '1226  X 500  X 1587', NULL, NULL, NULL, 1, 0, NULL, NULL),
('79741f2a-7da7-4248-8d4f-3773c4d38bd8', '0000-00-00', 'Big Pocket', 'SET', 'BIG POCKET ', '2', 'big-2198c7071bcd3492.png', '180 x 200 x 57', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. Prince||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar cream & list oscar coklat kopi||- Divan Box Barcelona Laci||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain oscar cream dan coklat kopi||- Model kasur reguler||- Rangka kasur per spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 57 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('7b00a1b3-51ac-4504-8b3b-81ec6a9c6655', '2017-01-30', 'King Pocket Plus Top latex', 'SET', '', '2', 'king-pocket-plus-top-latex-sand_-_div-barcelona.png', '100 x 200, 120 x 200, 160 x 200, 200 x 200', NULL, NULL, 1, 1, 1, NULL, NULL),
('7b7aa4c4-c49a-45d6-822e-d551973ec934', '0000-00-00', 'Twin Bed NEW LILY', 'SET', 'Twin NEW LILY', '2', 'big-9c71ad4f85fcbb81.png', '120 x 200 x 52', '  Sandaran :|||||||| Twin Atas dan Twin Bawah :||||||||||||||||||||||||||', '- Sand. Mozard Full (Oscar)||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Twin atas dan twin bawah kain jaquard quilting||- Busa silver||- Kaki kain oscar coklat muda||- Twin bawah dilengkapi roda caster||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 115 bh / mÂ²||- Garansi Per 15 tahun||- Tinggi twin = 52 cm||- Ukuran 100, 120 x 200 cm||||||||', 1, 1, 0, NULL, NULL),
('7bf48f91-ff07-4e9d-bc9a-ece64e00a2dc', '2018-04-04', 'BCBC.B-X48-CKST', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC,B-_X48_CKST_(22FEB16).png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7c0c9ac4-02ba-46b1-a92b-4866a6a31987', '0000-00-00', 'Stockcase Karakter SFC2-4000 SPGC', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-aa3683b516e3ba4d.png', '455 x 435 x 980', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45.5 cm||43.5 cm||98 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650', 49, 1, 0, NULL, NULL),
('7c44263c-5f7f-49d6-8409-3a27e09ef484', '2019-10-29', 'MTB-112', 'PCS', '', '21001', 'mtb-112.png', '1200 x 600 x 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7d88aef5-b7d3-4ae9-8b91-d3b71eacb42e', '2017-01-11', 'TWIN SPIDERMAN ULTIMATE SAND. SPIDERWEB', 'SET', '', '6', 'twin-spiderman-ultimate.png', '100 X 200, 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7dbf40df-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0301', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;610 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;395 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;630 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr---0301.png', '610 x 359 x 630', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4392-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0303', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;605 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;440 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;530 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr---0303.png', '605 x 440 x 530 ', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf46ae-5865-11e5-a774-002590adcb83', '0000-00-00', 'BC - 1761', 'SET', '<p>&nbsp;</p>\r\n<table style=\"width: 151px; height: 93px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;600 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '13001', 'bc-1761.png', '600 x 300 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4aed-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0305', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;590 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;465 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;565 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr---0305.png', '590 x 465 x 565', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4c4f-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0300', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;610 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;395 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;630 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr_-_0300.png', '610 x 359 x 630', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4cff-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0307', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1040 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;575 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr---0307.png', '1040 x 450 x 575', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4dae-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0309 B', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>1200 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1300 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr---0309-b.png', '1200 x 450 x 1300', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf4ef9-5865-11e5-a774-002590adcb83', '0000-00-00', 'ATR - 0311', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;800 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;565 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '12001', 'atr-0311.png', '800 x 450 x 565', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf50fa-5865-11e5-a774-002590adcb83', '0000-00-00', 'BC - 1760', 'SET', '<table style=\"width: 176px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;605 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1705 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '13001', 'bc-1760.png', '605 x 400 x 1705', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf5da2-5865-11e5-a774-002590adcb83', '0000-00-00', 'LDA - 5215 & LDB - 5215', 'SET', '<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari dapur Atas</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>660 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>660 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>735 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Bawah&nbsp; </strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>660 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>660 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>755 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '15001', 'lda-5215-ldb-5215.png', '660 x 660 x 735', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf5e74-5865-11e5-a774-002590adcb83', '0000-00-00', 'LDA - 521 & LDB - 521', 'SET', '<table style=\"width: 234px; height: 153px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Atas</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>775 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>335 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>735 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 232px; height: 139px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Bawah<br /></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>775 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>435 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>755 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '15001', 'lda-521-ldb-521.png', '775 x 335 x 735', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf5f45-5865-11e5-a774-002590adcb83', '0000-00-00', 'LDA - 5225 & LDB 5225', 'SET', '<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Atas<br /></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>775 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;335 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;735 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Bawah</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>775 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;435 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;755 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '15001', 'lda-5225-ldb-5225.png', '775 x 335 x 735', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf6018-5865-11e5-a774-002590adcb83', '0000-00-00', 'LDA - 5235 & LDB - 5235', 'SET', '<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Atas<br /></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>1160 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;335 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;735 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 300px; height: 173px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong><strong>Lemari Dapur Bawah</strong></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>1160 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>435 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>755 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '15001', 'lda-5235-ldb-5235.png', '1160 x 335 x 735', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf60ee-5865-11e5-a774-002590adcb83', '0000-00-00', 'LDA 531 & LDB 531', 'SET', '<table style=\"width: 272px; height: 165px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Atas<br /></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>1160 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>335 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>735 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 272px; height: 147px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\"><strong>Lemari Dapur Bawah<br /></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Panjang</td>\r\n<td>1155 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>435 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>755 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '15001', 'lda-531-ldb-531.png', '1160 x 335 x 735', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf625c-5865-11e5-a774-002590adcb83', '0000-00-00', 'LA - 4018', 'SET', '<table style=\"width: 162px; height: 116px;\">\n<tbody>\n<tr>\n<td>&nbsp;Panjang</td>\n<td>&nbsp;730 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Lebar</td>\n<td>&nbsp;405 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Tinggi</td>\n<td>&nbsp;1195 mm</td>\n</tr>\n</tbody>\n</table>', '16001', 'la-4018-.png', '730 X 405 X 1195', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf6318-5865-11e5-a774-002590adcb83', '0000-00-00', 'LA - 413', 'SET', '<table style=\"width: 209px; height: 132px;\">\n<tbody>\n<tr>\n<td>&nbsp;Panjang</td>\n<td>&nbsp;625 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Lebar</td>\n<td>&nbsp;405 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Tinggi</td>\n<td>&nbsp;1205 mm</td>\n</tr>\n</tbody>\n</table>', '16001', 'la-413-.png', '625 x 405 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf65d6-5865-11e5-a774-002590adcb83', '0000-00-00', 'MB - 312 (A)', 'SET', '<table style=\"width: 165px; height: 108px;\">\n<tbody>\n<tr>\n<td>&nbsp;Panjang</td>\n<td>&nbsp;805 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Lebar</td>\n<td>&nbsp;400 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Tinggi</td>\n<td>&nbsp;1195 mm</td>\n</tr>\n</tbody>\n</table>', '23001', 'mb-312.png', '805 x 400 x 1195', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf71d4-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPC - 8220 AP', 'SET', '<table style=\"width: 186px; height: 125px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;805 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpc-8220_ap.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf7324-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPC - 8230 AP', 'SET', '<table style=\"width: 175px; height: 113px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;805 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpc_8230-ap.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf73c9-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPC - 8231 AP', 'SET', '<table style=\"width: 175px; height: 127px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;805 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpc_8231-ap.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf75bd-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPC - 8320 AP', 'SET', '<table style=\"width: 167px; height: 127px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpc-8320_ap.png', '1205 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf770b-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPC - 8330 AP', 'SET', '<table style=\"width: 189px; height: 129px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1800 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpc-8330-ap.png', '1205 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf79a9-5865-11e5-a774-002590adcb83', '0000-00-00', 'LPMR - 8223', 'SET', '<table style=\"width: 186px; height: 127px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1825 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '18001', 'lpmr-8223.png', '1205 x 450 x 1825', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf7c4a-5865-11e5-a774-002590adcb83', '0000-00-00', 'MBB - 314', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;455 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1500 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '23001', 'mbb-314.png', '1205 x 455 x 1500', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf7e4f-5865-11e5-a774-002590adcb83', '0000-00-00', 'MBS - 315', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1175 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;495 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1210 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '23001', 'mbs-315.png', '1175 x 495 x 1210', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf7f27-5865-11e5-a774-002590adcb83', '0000-00-00', 'MBS - 318', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1055 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '23001', 'mbs-318.png', '1055 x 400 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf7fd4-5865-11e5-a774-002590adcb83', '0000-00-00', 'MBS - 328 S1', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1055 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '23001', 'mbs-328_s1.png', '1050 x 400 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf807d-5865-11e5-a774-002590adcb83', '0000-00-00', 'MBS - 328 S2', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1055 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '23001', 'mbs-328_s2.png', '1055 x 400 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf82bd-5865-11e5-a774-002590adcb83', '0000-00-00', 'MK - 280 MT', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;800 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;690 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '21001', 'mk-280-mt.png', '800 x 400 x 690', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf841b-5865-11e5-a774-002590adcb83', '0000-00-00', 'LH - 3008 ', 'SET', '<table style=\"width: 185px; height: 120px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1595 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;450 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1720 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '17001', 'lh-3008.jpg', '1595 x 450 x 1720', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf861c-5865-11e5-a774-002590adcb83', '0000-00-00', 'LH - 803', 'SET', '<table style=\"width: 190px; height: 114px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;425 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;715 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '17001', 'lh-803.png', '1205 x 425 x 715', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf86c8-5865-11e5-a774-002590adcb83', '0000-00-00', 'LH - 808', 'SET', '<table style=\"width: 179px; height: 116px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;415 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;700 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '17001', 'lh-808.png', '1400 x 415 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8771-5865-11e5-a774-002590adcb83', '0000-00-00', 'LH - 809', 'SET', '<table style=\"width: 175px; height: 121px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;420 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;700 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '17001', 'lh-809.png', '1400 x 420 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8a14-5865-11e5-a774-002590adcb83', '0000-00-00', 'MRJ - 602', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;795 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1320 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '22001', 'mrj-602.png', '795 x 400 x 1320', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8b63-5865-11e5-a774-002590adcb83', '0000-00-00', 'MTB - 102', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1200 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;600 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;725 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '21001', 'mtb-102.png', '1200 x 600 x 725', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8c08-5865-11e5-a774-002590adcb83', '0000-00-00', 'MTB - 201', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;1420 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;600 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;725 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '21001', 'mtb-201.png', '1420 x 600 x 725', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8d5b-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 02 S', 'SET', '<table style=\"width: 172px; height: 124px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;605 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-02_s.png', '400 x 300 x 605', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8e09-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 03 S', 'SET', '<table style=\"width: 172px; height: 113px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;890 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-03_s.png', '400 x 300 x 890', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf8eb3-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 04 S', 'SET', '<table style=\"width: 175px; height: 119px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1180 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-04_s.png', '400 x 300 x 1180', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf9004-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 1202 BP', 'SET', '<table style=\"width: 180px; height: 118px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;390 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;620 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-1202_bp.png', '390 x 300 x 620', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf90b1-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 1203 BP', 'SET', '<table style=\"width: 178px; height: 119px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;390 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;915 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-1203_bp.png', '390 x 300 x 915', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf9159-5865-11e5-a774-002590adcb83', '0000-00-00', 'RB - 1204 BP', 'SET', '<table style=\"width: 174px; height: 114px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;390 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rb-1204_bp.png', '390 x 300 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf94f7-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 092 S', 'SET', '<table style=\"width: 181px; height: 128px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;605 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg-092_s.png', '400 x 300 x 605', NULL, NULL, NULL, 1, 0, NULL, NULL);
INSERT INTO `m_barang` (`id_barang`, `tanggal`, `nama_barang`, `satuan`, `deskripsi`, `id_kategori`, `gambar`, `ukuran`, `spec_name`, `spec_val`, `posisi`, `aktif`, `new`, `tanggal_berlaku`, `tanggal_exp`) VALUES
('7dbf95b2-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 093 S', 'SET', '<table style=\"width: 163px; height: 113px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;890 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg-093_s.png', '400 x 300 x 890', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf965c-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 094 S', 'SET', '<table style=\"width: 172px; height: 110px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1180 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg-094_s.png', '400 x 300 x 1180', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf97aa-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 9294 BP', 'SET', '<table style=\"width: 188px; height: 131px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;425 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1170 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg-9294.png', '425 x 300 x 1170', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf9851-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 9295 BP', 'SET', '<table style=\"width: 161px; height: 123px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;425 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1440 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg-9295.png', '425 x 300 x 1440', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf99a9-5865-11e5-a774-002590adcb83', '0000-00-00', 'LS - 510 New', 'SET', '<table style=\"width: 187px; height: 115px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;805 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1020 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '19001', 'ls-510.png', '805 x 300 x 1020', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf9d5b-5865-11e5-a774-002590adcb83', '0000-00-00', 'LMR - 034', 'SET', '<table style=\"width: 174px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;800 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1205 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'lmr-034.png', '800 x 300 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbf9f66-5865-11e5-a774-002590adcb83', '2017-11-30', 'LSG - 321', 'SET', '<table style=\"width: 185px; height: 112px;\">\n<tbody>\n<tr>\n<td>&nbsp;Panjang</td>\n<td>&nbsp;400 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Lebar</td>\n<td>&nbsp;300 mm</td>\n</tr>\n<tr>\n<td>&nbsp;Tinggi</td>\n<td>&nbsp;905 mm</td>\n</tr>\n</tbody>\n</table>', '20001', 'LSG_321_JTI.png', '400 x 300 x 905', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbfa008-5865-11e5-a774-002590adcb83', '0000-00-00', 'LSG - 325', 'SET', '<table style=\"width: 193px; height: 108px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;800 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;300 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;600 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'lsg-325.png', '800 x 300 x 600', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbfa233-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 9445', 'SET', '<table style=\"width: 171px; height: 111px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1200 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg--9445.png', '400 x 400 x 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7dbfa2e5-5865-11e5-a774-002590adcb83', '0000-00-00', 'RSG - 9455', 'SET', '<table style=\"width: 162px; height: 113px;\">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;Panjang</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Lebar</td>\r\n<td>&nbsp;400 mm</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;Tinggi</td>\r\n<td>&nbsp;1480 mm</td>\r\n</tr>\r\n</tbody>\r\n</table>', '20001', 'rsg--9455.png', '400 x 400 x 1480', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7e5a72ed-5c52-4726-914f-bb98d77b9a8f', '2017-02-02', 'Batman VS Superman', 'SET', '', '3', 'Twin-Batsup.png', '100 x 200, 120 x 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7e9d51fe-761d-45ab-83e7-027775d3f9ad', '2019-10-29', 'Spiderman WDM - 12335 - SPD', 'UNT', '', '78f09f46-f026-4580-9b72-d8f0bb5a4644', 'WDM_-_12335_SPD.png', '1200 X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7e9dd823-5617-425f-af19-0e3acb86c813', '2018-04-09', 'SCA1 - 4000 - HOWL', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SCA1-4000_HOWL_(30MAR15)_EDIT.png', '435 X 430 X 980', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7ecb5e01-59c1-470a-8d56-6bdc80b9c2d4', '2017-11-29', 'MTR - 47.5 - KC', 'BH', 'MEJA TAMAN MTR (METRO)', '15', 'Metro_MTR_475_KC_Coklat.png', '475 X 475 X 430', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7f4f1b54-a22f-4d30-8f36-b2226874ae62', '2019-10-29', 'LS-515', 'PCS', '', '19001', 'ls-515--800-x-300-x-1200-.png', '800 x 300 x 1200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('7f5cf41e-1ca4-4446-9ef4-5e7b36d1aed2', '2019-10-29', 'SD - FZ 9017 - WM', 'UNT', '<p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Colour &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Glossy White</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">The main ingredient &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Partical Board</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Thickness &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Min. 15 mm</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Foil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PVC Glossy</p>', '32002', 'SD_-_FZ_9017_-_WM1.png', '914 X 470 X 1600', NULL, NULL, NULL, 1, 0, NULL, NULL),
('7fc965fa-8464-40a6-8103-b4caa09d29e4', '0000-00-00', 'WD - FZ 2.180 SF', 'SET', '', '124', 'WD - FZ 2.180 SF.png', '922 X 430 X 1857', NULL, NULL, NULL, 1, 1, NULL, NULL),
('802fcd9b-0196-4e90-948c-a5df841d2503', '2015-10-12', 'Kursi Pakai Tangan Big 809 b', 'SET', '', '15', 'product-7dbd45d9d574b05c.png', '620 x 555 x 890', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||62 cm||55,5 cm||39 cm||Ukuran Kemasan||62 cm||55,5 cm||186 cm  (15 Tumpuk Kursi)', 115, 1, 0, NULL, NULL),
('807fa7d6-2da7-438e-8615-45740db5caeb', '2019-10-29', 'BC-1867 OHJ', 'PCS', '', '13001', 'bc-1867-ohj-600x300x1800.png', '600 x 300 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('80a09695-e15e-43e3-8b0f-36386491b78e', '0000-00-00', 'New York Hotel Platinum Bed', 'SET', 'NEW YORK HOTEL PLATINUM BED ', '7', 'big-6dff80a2d33fa2a9.png', '200 x 200 x 59', '  Sandaran :||||||  Divan :||||||||||||Kasur :||||||||||||||||||', '- Sand. 728 New York (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- Busa Super gold||- Divan Monarchy New York (Oscar)||- Rangka kayu mahoni oven + obat anti kutu/rayap||- PP board PVC||- Busa super gold||- Tinggi divan = 25 cm||- Kain oscar coklat muda||- Model kasur single pollytop||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa super gold + latex||- Tinggi kasur = 34 cm||- Tinggi kasur + divan + stabil = 68 cm||- Ukuran 160, 180, 200 x 200 cm', 5, 1, 0, NULL, NULL),
('82b41f87-8107-4018-9d63-73668bca8ec4', '2015-10-16', 'BP - CA 120 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'BP_-_CA_120_MM.png', '2227 X 1276 X 1158', NULL, NULL, NULL, 1, 1, NULL, NULL),
('835d7477-1e04-40cf-aeeb-215087c91716', '2019-10-28', 'Charmmy kitty SD-21905 HKML', 'UNT', '', '14002', 'sd-21905-hkml-ex-lbkt4_1ml2.png', '1165 X 500 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('83b221c6-1b61-41a4-bff5-e86e4668e922', '2019-10-29', 'LPC - 8229 CLT', 'PCS', '', '18001', 'lpc-8229_clt.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('868c12fa-a93b-4764-85a2-e59c849284c0', '2019-10-28', 'MRS - MAPAN 45', 'PCS', '', '15', 'product-b038aa4c823c55bd.png', '500 x 500 x 452', NULL, NULL, NULL, 1, 1, NULL, NULL),
('86e11c84-6fe4-4ed6-8b8d-41a641d8b89c', '2019-10-28', 'Charmmy kitty WDM - 1335 CKT3', 'UNT', '', '14002', 'WDM_1335_CKT3.png', '1200  X 435  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('86f969d2-f590-463d-8aab-6e0bcd576904', '2016-04-25', 'NCA - 522 KREC', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'NCA-522_KREC.png', '430 X 460 X 1050', NULL, NULL, NULL, 1, 0, NULL, NULL),
('87a91fd3-2110-4028-89cd-bc7c9e063bce', '2017-12-07', 'LA - 4033', 'SET', '', '16001', 'LA_4033.png', '800 X 400 X 1425', NULL, NULL, NULL, 1, 1, NULL, NULL),
('87b1d5f4-a488-4aca-a5e7-7599981396dc', '2016-12-21', 'Lovely Wedding Bed ', 'SET', 'LOVELY WEDDING BED ', '7', 'big-45272540a2b3dcc7.png', '200 x 200 x 65', '  Sandaran :||||||||  Divan :||||||||||||  Bench :||||||||Kasur :||||||||||||||||||||', '- Sand. Australia Suede Brown||- Kayu mahoni oven + obat anti kutu/rayap||- Busa Super gold||- Kain suede coklat kopi + list kain oscar||- Divan Barcelona Wedd. Suede Brown||- Kayu mahoni oven + obat anti kutu/rayap||- PP board PVC||- Busa super gold||- Tinggi divan = 25 cm||- Kain oscar coklat kopi||- Rangka kayu mahoni oven+obat anti kutu/rayap + Per ||- Busa super gold||- Tinggi Bench + Kaki = 39 cm||- Kain suede coklat kopi||- Model kasur single pillowtop||- Rangka kasur spring pocket||- Per pinggir M-Guard||- Jumlah Per : 235 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa super gold + latex + rebonded||- Tinggi kasur = 38 cm||- Tinggi kasur + divan + stabil = 65 cm||- Ukuran 160, 180, 200 x 200 cm||', 1, 1, 0, NULL, NULL),
('87d98efc-1996-4a7c-8e09-62e5a7565256', '2017-01-11', 'FROZEN SNOW FLAKES', 'SET', '', '6', 'Frozen-snow-flakes_EDIT.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('880a5857-fbb8-48da-bc8c-16ab80dc20cb', '2017-01-11', 'CAPTAIN AMERICA PILLOWTOP', 'SET', '', '6', 'captain-America-pillowtop.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('88b7bd54-535f-49b9-9ba8-967ef6297c66', '2019-10-29', 'BC-1665 OBR', 'PCS', '', '13001', 'bc-1665-obr-600x300x1600_1669989390.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('88f000c6-e7f1-4f9c-ac02-1684a14281ca', '2017-11-29', 'STB - 500 - BK1', 'SET', '', '16', 'STB-500_BK1.png', '440 X 375 X 1080', NULL, NULL, NULL, 1, 1, NULL, NULL),
('88f78776-1af8-4009-afa6-34cc9850c9ec', '2019-10-29', 'Tsum-tsum Lemari Pakaian WDM - 12222 - TSM', 'UNT', '', '6e2410d9-b45b-43d5-9500-ec414d5f3d01', 'WDM_12222_Tsum.png', '806 X  420 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('893347de-1782-4f89-88a4-f6c6eb65d0f9', '2015-10-12', 'Meja Makan DT-8888 KB', 'SET', '', '15', 'product-0188ff37d69367e3.png', '860 x 860 x 720', 'Product Size||Kaki Besi||Daun Meja ||Packing Size||Kaki Besi ||Daun Meja', 'Ukuran Produk||86 cm x 86 cm x 77 cm||86 cm x 86 cm x 77 cm||Ukuran Produk||83 cm x 83 cm x 15 cm||86 cm x 86 cm x 5.7 ', 105, 1, 0, NULL, NULL),
('89b2a478-a48d-4a74-a65e-628fcb04ccad', '2019-10-28', 'KRS- 7R3 - ARM HIJAU', 'PCS', '<div>KURSI ROTAN SINTETIS</div><div><br></div>', '15', 'product-e9583ac35f31f111.png', '630 x 585 x 685', NULL, NULL, NULL, 1, 1, NULL, NULL),
('8a4adc3d-64c6-4582-b814-2eefc0d958d1', '2019-10-29', 'LPC-19201 OPT', 'PCS', '', '18001', 'lpc-19201-oak--uk_2077544490.png', '800 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('8a5747f9-6615-4277-a03b-342fe0ba1885', '2017-11-29', 'STB - 300 - BK1', 'SET', '', '16', 'STB-300_BK1.jpg', '440 X 375 X 680', NULL, NULL, NULL, 1, 1, NULL, NULL),
('8af27ccc-ce15-469e-a9e5-47153db6eab8', '0000-00-00', 'Keranjang B23T Plus', 'SET', NULL, '20', 'product-54b9038eaa0993f0.png', NULL, 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||39,5 cm||31 cm||35 cm||Ukuran Kemasan||39,5 cm||31 cm||6,6 cm (12 tumpuk)', 151, 1, 0, NULL, NULL),
('8c45714a-c4f4-4175-aa4e-43e88e0a33ea', '0000-00-00', 'Twin Hello Kitty Magnolia', 'SET', NULL, '3', 'big-6c855cf2f60b5bd9.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('8cd7f777-169a-44d6-96b1-2cea52239111', '2017-03-20', 'KCA - 903', 'UNIT', '', '15001', 'KCA-903.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('8cfa86b6-3609-44af-a8b0-930ff8d1a95f', '2016-12-20', 'SCA1 - 4000 CWAR', 'UNIT', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SCA1_-_4000_CWAR.png', '455 X 435 X 980', NULL, NULL, NULL, 1, 0, NULL, NULL),
('8d2a31fb-4487-4c54-814a-fe1a0f8f402b', '2015-10-12', 'Meja Teras Big-4343 c', 'SET', '', '15', 'product-71a7cbff9ee18e55.png', '510 x 510 x 450', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||54 cm||54 cm||46 cm||Ukuran Kemasan||54 cm||54 cm||175 cm (25 Tumpuk Meja)', 128, 1, 0, NULL, NULL),
('8e625813-cded-4b65-bd6b-f168d5d4b5fe', '0000-00-00', 'Hello Kitty Plus Top Latex', 'SET', 'HELLO KITTY PLUSTOP LATEX Springbed dengan lapisan kasur terdiri dari rebonded dan busa density tinggi dengan rangka kasur spring, model kasur plustop yaitu ada tambahan pada bagian atasnya yang dilapisi dengan latex', '6', 'big-5d65e5d5d09e9505.png', '200 x 200 x 50', 'Divan||Tinggi Divan||Kasur||||||||||||||Tinggi||||Sandaran ||Garansi Per', 'Rangka divan box, dilapisi PP Board ditambah busa dan dibungkus dengan kain faniboa warna putih||18 cm||ukuran : 100 cm x 200 cm||ukuran : 120 cm x 200 cm||ukuran : 160 cm x 200 cm||ukuran : 180 cm x 200 cm||ukuran : 200 cm x 200 cm||Sarung kasur menggunakan kain quilting dengan busa density tinggi||Lapisan kasur terdiri dari rebonded ditambah busa density tinggi||Tinggi kasur 32 cm||Tinggi kasur + tinggi divan + tinggi kaki stabil : 61 cm||Rangka sandaran kayu dilapisi busa dan dibungkus dengan kain faniboa warna putih ditambah aksesoris yang dibungkus kain faniboa warna pink||15 Tahun', 1, 1, 0, NULL, NULL),
('8e7b2f73-b6d6-4f65-90bc-f41cfb5560c1', '2019-10-28', 'MRS - 8446 RAK', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-c8b583e2bad3fd91.png', '800 x 475 x 460', NULL, NULL, NULL, 1, 1, NULL, NULL),
('8e811fe6-4720-4c24-8d4f-d051179ebc9d', '2019-10-29', 'LP-1901 K-BR TBG', 'PCS', '', '18001', 'lp--1901-k--br.png', '800 x 415 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('8eaf4ab7-7984-455e-ab69-762fd0e754d4', '2017-03-10', 'KCA - 902', 'SET', '', '15001', 'KCA-902.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('8ef4fd7d-a542-478d-b6b9-6bfe14c5f82c', '2019-10-29', 'Captain America SD - 22114 CIV', 'UNT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'SD_22114_CIV_EDIT.png', '1203  X 500  X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('901d41b4-5553-466c-8e5d-1e2610016621', '0000-00-00', 'BB 40', 'SET', NULL, '20', 'product-be327c517dc91f76.png', '430 x 295 x 415', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||43 cm||29,5 cm||41,5 cm||Ukuran Kemasan||43 cm||29,5 cm||73,5 cm (12 Tumpuk)', 155, 1, 0, NULL, NULL),
('9021e92e-8915-4b21-9710-cfe9d82f93a3', '2019-10-29', 'ATR-0337 OAK', 'PCS', '', '12001', 'atr-0337_1_737399833_(1).png', '1200 x 400 x 443', NULL, NULL, NULL, 1, 0, NULL, NULL),
('90478a36-213b-443b-9953-5e08eb79f85b', '0000-00-00', 'NKKB 224 BK3', 'SET', NULL, '16', 'product-0a063b34c492b2f1.png', '440 x 375 x 920', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||44 cm||37.5 cm||92 cm||Ukuran Kemasan||46 cm||38 cm||46 cm||Kapasitas Muat||300||650', 77, 1, 0, NULL, NULL),
('90ed5894-c97f-4a74-80c9-7d57249502a6', '2017-11-29', 'KURSI BASO - BIG 303 TC', 'BH', '', '15', 'BIG_303_TC_MRH.png', '395 X 345 X 475', NULL, NULL, NULL, 1, 1, NULL, NULL),
('91c6f7af-3562-4704-b05e-58d24f2e542c', '2019-10-29', 'BC-1665 OPT', 'PCS', '', '13001', 'bc-1665-opt-600x300x1600.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9216da73-d338-4c49-a89e-c2ce822f1aa9', '2019-10-28', 'KRS - 646', 'PCS', 'KURSI ROTAN SINTETIS', '15', 'product-a08271737a38a0ca.png', '450 x 530 x 540', NULL, NULL, NULL, 1, 1, NULL, NULL),
('935df455-5875-4420-828c-4126862b6656', '2015-10-16', 'WD - BB 3.180 ILN', 'SET', '', '5ae2a563-46dc-4ae8-978b-500db45cdee1', 'WD_-_BB_3.180_ILN_.png', '1309 X 430 X 1890', NULL, NULL, NULL, 1, 0, NULL, NULL),
('949fe1c0-fd81-4d2b-860f-d607cf651858', '2019-10-29', 'BC-1868 OBR', 'PCS', '', '13001', 'bc-1868-obr-600x400x1800.png', '600 x 400 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('94e90606-aacd-45f0-804d-091ffcbea9b9', '0000-00-00', 'BIG BOXER 26 SPGC', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-2dd8cdc189efe35e.png', '475 x 335 x 240', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||47,5 cm||33,5 cm||24 cm||Ukuran Kemasan||49,5 cm||34,5 cm||46 cm', 138, 1, 0, NULL, NULL),
('9528470a-d090-421d-b971-1b2301ef5683', '2019-10-28', 'Charmmy kitty SD - 2313 CKT3', 'UNT', '', '14002', 'sd-2313-ckt3_edit.png', '1200 X 485 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('95a9c203-e4dd-4c17-a4c4-d8c9d45d14e3', '0000-00-00', 'SC - FZ 1.040 SF', 'SET', '', '124', 'SC - FZ 1.040 SF.png', '606 X 300 X 453', NULL, NULL, NULL, 1, 1, NULL, NULL),
('961651a2-f1df-4ee1-9142-e2c6efeaa548', '2015-10-16', 'MR - BB 160 ILN', 'UNT', 'tes', '26002', 'MR_-_BB_160_ILN1.png', '920 X 365 X 1616', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9724772e-0642-4ef8-b5ad-039fbe48acfb', '2017-11-29', 'KURSI TANPA TANGAN - 2R3', 'BH', '', '15', 'Big_-_2R3.png', '520 X 480 X 820', NULL, NULL, NULL, 1, 1, NULL, NULL),
('979a7002-095f-495b-aade-5a6ec537394d', '2018-04-09', 'LAPDESK BB8', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lap_desk_bb8_(26MEI16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('97ea1d23-d14b-45c4-ba53-562881544aa6', '2019-10-29', 'LPJ-19202 BCH', 'PCS', '', '18001', 'lpj---19202-bch--uk_1099393375.png', '800 x 440 x 1924', NULL, NULL, NULL, 1, 1, NULL, NULL),
('980893a7-8673-4c97-88ba-f6a9d8c99b5a', '0000-00-00', 'NKKB 244 BK3', 'SET', NULL, '16', 'product-53617b23ac25f056.png', '440 x 375 x 1065', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||44 cm||37.5 cm||106.5 CM||46.5 cm||46 cm||38 cm||46 cm||Kapasitas Muat||300||650', 76, 1, 0, NULL, NULL),
('98c7a1e1-4af9-4e3e-9401-21ffcc2b1ac9', '0000-00-00', 'LB - KT 3.1 - CCC', 'SET', '', '116', 'LB - KT 3.1 - CCC.png', '424 X 295 X 1468', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9933af49-c0c0-4420-876a-9b6069d6cde0', '2017-11-23', 'Kursi Tanpa Tangan Big 102 B', 'SET', '', '15', 'product-8db9ab6c95ce6f62.png', '445 x 455 x 870', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||46 cm||45 cm||87 cm||Ukuran Kemasan||46 cm||45 cm||201 cm (20 tumpuk kursi)', 101, 1, 0, NULL, NULL),
('99732214-40df-4c0b-a534-3bdd80705662', '2017-12-07', 'MBB - 3033', 'SET', '', '23001', 'MBB_3033.png', '1165 X 510 X 1500', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9c27b750-9d6b-4e97-9f03-74f1dfef6187', '0000-00-00', 'Silver Flower', 'SET', NULL, '2', 'big-e383067a453861a5.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('9ce3030e-b8fb-4de0-b935-89276e34bfed', '2018-04-04', 'BCBC . B - X48 - PR', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_B-X48_PR_(16MAR16).png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9d806d9e-ee5d-477c-a5ac-51c15a767e2f', '2017-12-07', 'LH - 837 - CLS', 'SET', '', '17001', 'LH_-_837_CLS.png', '800 X 400 X 715', NULL, NULL, NULL, 1, 1, NULL, NULL),
('9f05ebbd-4f92-4ee0-b4d9-3ab4c0e7e033', '2015-10-12', 'BCBC-242 HKBF', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-cedb8629d746012b.png', '650 x 450 x 1300', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||65 cm||45 cm||130 cm||Ukuran Kemasan||66 cm||40 cm||51 cm||Kapasitas Muat||215||450', 30, 1, 0, NULL, NULL),
('9f134859-ab9f-43b7-8ac4-a79e568bfe3f', '0000-00-00', 'Classic Spring Bed', 'SET', 'CLASSIC SPRINGBED ', '2', 'big-70543531935723d5.png', '180 x 200 x -', ' Sandaran : |||||| Divan :|||||| Kasur :||||||||||||||||||||||||||||||', '- Rangka kayu oven + obat anti kutu/rayap+triplek||- Busa silver||- Kain oscar coklat kopi||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain oscar coklat kopi||- Model kasur resleting (dapat dilepas)||- Rangka spring bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver||- Ukuran 100, 120, 160, 180, 200 x 200 cm||||||||||||||||', 1, 1, 0, NULL, NULL),
('a14ae281-1d41-4f7e-b1a1-d98fe598c317', '2015-10-12', 'BCBC.B - 163 - BMAN', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-fe1dfc3212a0887c.png', '650 x 450 x 1530', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1510 mm', 12, 1, 0, NULL, NULL),
('a2af27d5-8f2a-48db-996f-f1f2310776f5', '0000-00-00', 'Bed Car Army', 'SET', 'BED CAR ARMY merupakan Tempat tidur anak berbentuk mobil, dengan bagasi yang dapat dibuka dan ditutup', '5', 'big-b2146b09bb4de645.png', '230 x 120 x 95', 'Divan||Kasur||Ukuran||Knock Down||Lisensi||Garansi', 'Bahan Partikel board dan kayu yang dilapisi dengan busa dan dibungkus kain, kemudian di air brush||Kain Cotton dengan quilting sesuai dengan contour gambar panel (ukuran 100 x 180 cm)||230 cm x 120 cm x 95 cm||Ya||Ya||15 tahun', 1, 1, 0, NULL, NULL),
('a2d4948b-2d81-4d3a-8689-e9e544ff6bad', '2019-10-29', 'LPC-8328 TSC', 'PCS', '', '18001', 'lpc-8328-tsc--uk.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a41e3cd6-0205-4172-9ac3-683eb61dea0b', '2019-10-29', 'ATR-0338 OAK', 'PCS', '', '12001', 'atr-0338_1_(3).png', '1200 x 400 x 443', NULL, NULL, NULL, 1, 0, NULL, NULL),
('a4f33146-13d4-4438-bb1f-9defee87cafe', '2015-10-12', 'Stockcase Karakter SFC2-5000 SPGC', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-11e49029e168cdcb.png', '455 x 430 x 1200', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45.5 cm||43.5 cm||120 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650', 43, 1, 0, NULL, NULL),
('a5289cff-b705-458b-bb85-e39d421e70cd', '2018-04-05', 'BCBC. B - X36 - CKST', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC.B--X36_CKST_(22FEB16)_.png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a52af81f-ae45-4a35-8395-4fc45ce4ab95', '0000-00-00', 'DT - KT 8011 - CCC', 'SET', '', '116', 'DT - KT 8011 - CCC.png', '809 X 415 X 1540', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a5d99e60-293d-43ae-a0db-024b7072fd3c', '2015-10-12', 'Meja Makan DT-8888', 'SET', '', '15', 'product-0af377ffb4750beb.png', '860 x 860 x 720', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||86 cm||86 cm||71 cm||Ukuran Kemasan||88 cm||88 cm||19,5 cm (2 Tumpuk )', 106, 1, 0, NULL, NULL),
('a619b9f6-825f-411f-b659-d2862b55660d', '2017-04-05', 'KCA - 9122', 'SET', '', '15001', 'KCA-9122.png', '790 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('a70894c2-ec38-45de-bf90-6b662af4f057', '2019-10-25', 'CONRA - n5.K1', 'SET', '', '16', 'product-ff23afe91a9607b0.png', '455 x 430 x 1180', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a79a18bc-b94a-4801-88db-cba46700d935', '2015-10-16', 'SD - CA 9013 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'SD_-_CA_9013_MM.png', '1180 X 500 X 1522', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a7fcea68-9ac9-4ee7-8dd5-b01fc09b7c09', '2017-03-31', 'KCB - 920', 'SET', '', '15001', 'KCB-920.png', '790 x 465 x 750', NULL, NULL, NULL, 1, 0, NULL, NULL),
('a800ee4b-954e-4606-9a2c-91cdb8fd9e2f', '2019-10-24', 'test', 'test', 'asdfadsf', '118', 'Celana_Barcelona_Home_2019-2020_Grade_Ori.jpg', 'asdfaf', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a88b90d1-6cab-4125-8036-3757472d6696', '2019-10-28', 'KRS - 700 arm', 'PCS', 'KURSI ROTAN SINTETIS', '15', 'product-758037ea2cc799ea.png', '510 x 590 x 845', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a8a613a2-f7d3-48b8-b5d0-1d8bf91f98be', '0000-00-00', 'Hello Kitty Pocket Spring', 'SET', 'HELLO KITTY POCKET SPRING springbed dengan lapisan kasur terdiri dari rebonde density tinggi dan busa dengan rangka kasur spring pocket dan model kasur resleting (bisa dilepas)', '6', 'big-e064379abf5e06e2.png', '200 x 200 x 46', 'Divan||Tinggi Divan||Kasur||||||||||||Tinggi Kasur||||Sandaran||Knock Down||Garansi per', 'Rangka diva box dilapisi pp board dan busa dibungkus kain oscar warna putih dengan bemper kain faniboa warna pink||18 cm||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Ukuran : 160 cm x 200 cm||Ukuran : 180 cm x 200 cm||Ukuran : 200 cm x 200 cm||Sarung kasur menggunakan kain quilting dengan busa density tinggi||28 cm||Tinggi kasur + tinggi divan + tinggi kaki stabil 57 cm||Kayu dilapisi busa dan dibungkus dengan kain oscar, bagian tengah oscar warna putih dan untuk list menggunakan kain faniboa warna pink dan aksesoris pita yang dibungkus kain faniboa warna pink||Tidak||15 tahun', 9, 1, 0, NULL, NULL),
('a92c0270-50df-46a6-8fba-4993435a26e5', '2019-10-28', 'MRS - 7546 RAK', 'PCS', 'MEJA ROTAN SINTETIS', '15', 'product-411782494c7cbc29.png', '700 x 550 x 460', NULL, NULL, NULL, 1, 1, NULL, NULL),
('a9638837-c897-4f22-91c4-2ff442f26f03', '0000-00-00', 'Flora White', 'SET', 'FLORA WHITE springbed dengan lapisan kasur terdiri dari busa density tinggi', '2', 'big-9265e4b4991250e8.png', '200 x 200 x 53', '  Sandaran : ||||||||  Divan :||||||||||||  Kasur :||||||||||||||||||||', '- Sand. Mozard||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain moya hitam||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain moya hitam||- Model kasur reguler||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain jaquard quilting||- Busa silver||- Tinggi kasur = 24 cm||- Tinggi kasur + divan + stabil = 53 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm||', 1, 1, 0, NULL, NULL),
('a9a7956e-d62b-4f99-ba6b-e4d95f359a8c', '2017-12-07', 'LPC - 8271 - CLS', 'set', '', '18001', 'LPC_-_8271_CLS.png', '806 x 435 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('aa2b9872-d3bc-42f2-91a4-03464204b7fe', '2018-04-09', 'LAPDESK KTBF', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lapdesk_HK_(11FEB16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('aa83effd-1e33-4964-8d71-be6aafdd792c', '2019-10-25', 'KG - 710', 'PCS', '', '15', 'product-2896ab0d8408b7df.png', '600 x 830 x 805', NULL, NULL, NULL, 1, 1, NULL, NULL),
('abda8572-4bea-45e0-b680-9221238c3c3c', '0000-00-00', 'SD - KT 9011 - LMH', 'SET', '', '116', 'SD - KT 9011 - LMH .png', '1175 X 510 X 1530', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ac57fc5b-d7a4-43f7-8cc8-2f5e5c543660', '2016-02-22', 'Hot Wheels WDM - 11122 - HW', 'UNT', '', '31002', 'WDM-11222-HWL.png', '800  X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('ac8d95de-f2b5-42e9-aaf3-3297ed588d29', '0000-00-00', 'BCBC  XX2 KTSH', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-47c1a06d925872bb.png', '630 x 450 x 1510', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1510 mm', 8, 1, 0, NULL, NULL),
('ad02f2f6-c4f2-4174-97d9-dce434b356aa', '2018-04-09', 'KURSI IKLAN BIG 305 FROZ', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Big_-_305_Iklan_FROZ.png', '395 X 345 X 475', NULL, NULL, NULL, 1, 1, NULL, NULL),
('af827b5d-ce07-4b1f-b09f-60b74a7811c3', '2015-10-16', 'SD - BB 9015 ILN', 'SET', '', '5ae2a563-46dc-4ae8-978b-500db45cdee1', 'SD_-_BB_9015_ILN.png', '1093 X 425 X 1455', NULL, NULL, NULL, 1, 0, NULL, NULL),
('b122b3b0-80c7-4be8-bc04-a1fbd9cd42e4', '2019-10-29', 'LP2-B2PC1-LR', 'PCS', '', '18001', 'lp2-b2pc1-lr_sbrw.png', '800 x 430 x 1830', NULL, NULL, NULL, 1, 1, NULL, NULL),
('b1668a99-c432-4ab8-ba76-327f25eb5c29', '2015-10-12', 'Kursi KAC 21 KTMG ', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-20ff9a01d74e0081.png', '540 x 410 x 523', 'Width||Height||Length||Weight', '||||||', 90, 1, 0, NULL, NULL),
('b2a7c71f-c47a-4938-858c-db2866c3cca1', '2016-12-22', 'SILVER PLUS TOP - TIPE B', 'SET', '', '2', 'silver-plustop_EDIT.png', '100, 120, 160, 180, 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('b2bc56c5-fdb2-4bfa-a93b-6f7e870e065a', '2019-10-29', 'LPC-19301 OHT', 'PCS', '', '18001', 'lpc-19301-htm--uk.png', '1200 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('b335836c-6fb8-42e2-b4b0-b07c6ff8a771', '2015-10-12', 'Stockcase Karakter SFC2-5000 HKBF', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-3389c51d20496dc6.png', '455 x 430 x 1200', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45.5 cm||43.5 cm||120 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650', 41, 1, 0, NULL, NULL),
('b56836fb-5bb8-437f-bf62-afbf16090356', '2015-10-16', 'DT - CA 8013 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'DT_-_CA_8013_MM.png', '880 X 500 X 1559', NULL, NULL, NULL, 1, 1, NULL, NULL),
('b57a7585-c5cf-4310-90a6-f5a6fd35da6c', '2017-03-31', 'KCA - 9102', 'SET', '', '15001', 'KCA-9102.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('b5864107-7ed5-4004-9697-5a8a08296ea0', '2017-11-23', 'Kursi KAC 21 KTBF', 'SET', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'product-e9d7f6c0b248c167.png', '540 x 410 x 523', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||44 cm||41 cm||52,3 cm||Ukuran Kemasan||44 cm||41 cm||134 cm (20 Tumpuk Kursi)', 89, 1, 0, NULL, NULL),
('b5f8ff2e-904c-4eb4-b380-be5696094173', '2015-10-16', 'WD - BB 2.180 ILN', 'SET', '', '5ae2a563-46dc-4ae8-978b-500db45cdee1', 'WD_-_BB_2.180_ILN_.png', '920 X 430 X 1890', NULL, NULL, NULL, 1, 0, NULL, NULL),
('b69db6b9-954d-4d06-9740-ce03d64c943c', '0000-00-00', 'BCBC - XX2 - FROZ', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-c8524d87f5a96bf7.png', '650 x 450 x 1510', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1510 mm', 9, 1, 0, NULL, NULL),
('b73a0a6b-a1ba-4e15-aa5c-e0b4c348c358', '0000-00-00', 'Kursi Pakai Tangan Big-636', 'SET', NULL, '15', 'product-9f010965822a73ec.png', '645 x 570 x 900', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||64,5 cm||57 cm||90 cm||Ukuran Kemasan||64,5 cm||57 cm||195 cm (20 Tumpuk Kursi)', 111, 1, 0, NULL, NULL),
('b82c4037-6c0b-41da-a65a-b062b0e9a540', '0000-00-00', 'BCBC-163 HKBF', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-249ae6a658439030.png', '650 x 450 x 1530', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||65 cm||45 cm||153 cm||Ukuran Kemasan||76 cm||46 cm||51 cm||Kapasitas Muat||190||290', 33, 1, 0, NULL, NULL),
('b97b9f94-58b8-417b-9de3-ba0787b55008', '2019-10-29', 'LPC-8253 BQ', 'PCS', '', '18001', 'lpc-8253-bq--800-x-440-x-1.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('bb66a919-da5b-4bce-992b-8b94476471c3', '2019-10-28', 'Sofia The First WDM - 1925 - SOF', 'UNT', '', '17002', 'wdm-1925-sof.png', '806 X  440 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bbac326e-12c4-4c18-acde-f18019ed789b', '2019-10-29', 'ATR-0336 OAK', 'PCS', '', '12001', 'atr-0336_1_(1).png', '1600 x 400 x 543', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bbd0e5e1-d981-4639-b54a-21c6a4a0c6ec', '0000-00-00', 'NTA 552 AK3', 'SET', NULL, '16', 'product-f862fb4df3725ca7.png', '435 x 430 x 1340', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||43.5 cm||43 cm||134 cm||Ukuran Kemasan||52 cm||48.5 cm||46 cm||Kapasitas Muat||300||650', 78, 1, 0, NULL, NULL),
('bc094745-ae00-47c4-8ea6-f1cb3ddf21f6', '2017-04-05', 'KCA - 9133', 'SET', '', '15001', 'KCA-9133.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bc9c367b-5859-11e5-a774-002590adcb83', '0000-00-00', 'BLH-K7001', 'SET', '', '116', '2014-04-04-145841.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bc9c38db-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT-HK8004-BF', 'SET', '', '116', '2014-09-02-033110.jpg', '907 x 440 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bc9c3955-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD-HK9003-BF', 'SET', '', '116', '2014-09-02-033322.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bc9c39ae-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - BT 1681 - GH', 'SET', '', '117', '2014-10-20-051546.png', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bc9c3a0e-5859-11e5-a774-002590adcb83', '0000-00-00', 'MD-140-SBob', 'SET', '', '118', '2014-04-07-115609.jpg', '900 X 480 X 1044', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bc9c3a63-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB5-SBob', 'SET', '', '118', '2014-04-07-120127.jpg', '425 x 295 x 1435', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bc9c3ab6-5859-11e5-a774-002590adcb83', '0000-00-00', 'BP-90-SBob', 'SET', '', '118', '2014-04-07-120635.jpg', '1970 x 990 x 890', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bc9c3b01-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB5-SPM', 'SET', '', '120', '2014-04-10-101639.jpg', '425 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ab22-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD-SU1401-TJ', 'SET', '', '120', '2014-04-10-102149.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3abb1-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-PCS22150', 'SET', '', '121', '2014-09-11-041755.jpg', '610 X 415 X 1512', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ac0b-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-PCS3180-D2S', 'SET', '', '121', '2014-09-11-041526.jpg', '1202 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ac5e-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-PCS2180-L2S', 'SET', '', '121', '2014-09-11-041636.jpg', '801 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3acb1-5859-11e5-a774-002590adcb83', '0000-00-00', 'BL-PCS1140-SE', 'SET', '', '121', '2014-09-11-040855.jpg', '552 X 415 X 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ad02-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB5-40-PCS', 'SET', '', '121', '2014-09-11-040700.jpg', '440 x 400 x 1507', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ad4e-5859-11e5-a774-002590adcb83', '0000-00-00', 'BP-90-PCS', 'SET', '', '121', '2014-09-11-040331.jpg', '2100 X 970 X 1110', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca3ad9c-5859-11e5-a774-002590adcb83', '0000-00-00', 'BCR-101-PCS', 'SET', '', '121', '2014-09-11-032919.jpg', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca78428-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT-K8005-PCS', 'SET', '', '121', '2014-09-11-031047.jpg', '969 x 510 x 1280', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca784af-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-K14001', 'SET', '', '123', '2014-05-08-143645.jpg', '994 X 415 X 1835', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7850b-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD-K16001', 'SET', '', '123', '2014-05-08-155206.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7855b-5859-11e5-a774-002590adcb83', '0000-00-00', 'SB-K17001', 'SET', '', '123', '2014-05-09-105151.jpg', '1320 X 2070 X 1050', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca785a9-5859-11e5-a774-002590adcb83', '0000-00-00', 'BLS-K15001', 'SET', '', '123', '2014-05-09-160251.jpg', '1013 X 450 X 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca785f8-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-BM1681-DD', 'SET', '', '119', '2014-09-14-220144.jpg', '800 x 415 x 1680', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7864d-5859-11e5-a774-002590adcb83', '2019-10-29', 'LB5 - BTM', 'SET', '', '119', 'LB5_-_BTM1.jpg', '425 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7869c-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - BM1401 - DD', 'SET', '', '119', '2014-09-14-215440.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca786ed-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD-SU1681-TJ', 'SET', '', '120', '2014-04-10-101553.jpg', '800 x 415 x 1680', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7873d-5859-11e5-a774-002590adcb83', '2015-10-12', 'BL - K1001', 'SET', '', '117', '2014-04-07-113654.jpg', '742 x 425 x 1400', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca7878e-5859-11e5-a774-002590adcb83', '2015-10-12', 'BL - K1002', 'SET', '', '117', '2014-04-07-113228.jpg', '1071 x 425 x 1400', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca787da-5859-11e5-a774-002590adcb83', '2015-10-12', 'BL - K1003', 'SET', '', '117', '2014-04-07-113305.jpg', '742 x 425 x 1400', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca78827-5859-11e5-a774-002590adcb83', '0000-00-00', 'WDM - HK 1380 - BF', 'SET', '', '116', '2014-09-02-040020.jpg', '1201 x 425 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78876-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - HK 1601 - BF', 'SET', '', '116', '2014-09-02-040337.jpg', '806 x 425 x 1600', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca788c9-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD - HK 1801 SH', 'SET', '', '116', '2014-09-02-232010.jpg', '806 x 425 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78ad4-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB 5. 40 BF', 'SET', '', '116', '2014-09-02-042813.jpg', '440 x 400 x 1507', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78b32-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD - HK 1802 - SH', 'SET', '', '116', '2014-09-02-232429.jpg', '806 x 425 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78b83-5859-11e5-a774-002590adcb83', '0000-00-00', 'BLH - HK 7002 - SH', 'SET', '', '116', '2014-09-02-235007.jpg', '1172 x 415 x 1465', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78bd2-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - HK 1901 - SH', 'SET', '', '116', '2014-09-03-004540.jpg', '1205 x 535 x 1927', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78c22-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT - HK 8006 - SH', 'SET', '', '116', '2014-09-03-005059.jpg', '900 x 440 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78c6e-5859-11e5-a774-002590adcb83', '0000-00-00', 'HK - LB5 - SH', 'SET', '', '116', '2014-09-03-005248.jpg', '425 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78cb9-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - HK 9004 -SH', 'SET', '', '116', '2014-09-03-005405.jpg', '1230 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78d05-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - HK 1803 - SH', 'SET', '', '116', '2014-09-03-031007.jpg', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca78d54-5859-11e5-a774-002590adcb83', '0000-00-00', 'HK - LB4 - SL', 'SET', '', '116', '2014-09-04-002518.jpg', '417 x 425 x 1488', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78d9f-5859-11e5-a774-002590adcb83', '0000-00-00', 'HK - LB5 - SL', 'SET', '', '116', '2014-09-04-003818.jpg', '425 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78dea-5859-11e5-a774-002590adcb83', '0000-00-00', 'HK - LB84 -SL', 'SET', '', '116', '2014-09-04-004135.jpg', '783 x 425 x 1485', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78e34-5859-11e5-a774-002590adcb83', '0000-00-00', 'BCR - KT 90 - SL', 'SET', '', '116', '2014-09-04-004405.jpg', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca78e81-5859-11e5-a774-002590adcb83', '0000-00-00', 'BL - KT 1140 - SL', 'SET', '', '116', '2014-09-04-004930.jpg', '685 x 415 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78ecc-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT - KT 8007 - SL', 'SET', '', '116', '2014-09-04-005325.jpg', '800 x 420 x 1224', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78f16-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB - KT 440 - SL', 'SET', '', '116', '2014-09-04-023252.jpg', '440 x 400 x 1220', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78f60-5859-11e5-a774-002590adcb83', '0000-00-00', 'DTH - K8001 ', 'SET', '', '116', '2014-09-08-033347.jpg', '806 x 425 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78fad-5859-11e5-a774-002590adcb83', '0000-00-00', 'DTH - K8002', 'SET', '', '116', '2014-09-08-033503.jpg', '806 x 425 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca78ff5-5859-11e5-a774-002590adcb83', '0000-00-00', 'MRH - K11001', 'SET', '', '116', '2014-09-08-034143.jpg', '800 x 400 x 990', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79040-5859-11e5-a774-002590adcb83', '0000-00-00', 'MRH - K11002', 'SET', '', '116', '2014-09-08-034252.jpg', '800 x 400 x 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7908c-5859-11e5-a774-002590adcb83', '0000-00-00', 'SCH - K13001', 'SET', '', '116', '2014-09-08-034357.jpg', '730 x 250 x 1254', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca790d9-5859-11e5-a774-002590adcb83', '0000-00-00', 'SDH - K9001', 'SET', '', '116', '2014-09-08-034530.jpg', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79125-5859-11e5-a774-002590adcb83', '0000-00-00', 'SDH - 9002', 'SET', '', '116', '2014-09-08-034706.jpg', '800 x 500 x 904', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7916f-5859-11e5-a774-002590adcb83', '2015-10-12', 'DT - FZ 8009 - FF', 'SET', '', '124', '2014-09-08-050852.jpg', '880 x 420 x 1330', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca791c3-5859-11e5-a774-002590adcb83', '2015-10-12', 'BP - 120 FZ', 'SET', '', '124', '2014-09-08-224932.jpg', '2208 x 1270 x 985', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79211-5859-11e5-a774-002590adcb83', '2015-10-12', 'LB - 5 FZ', 'SET', '', '124', '2014-09-08-230015.jpg', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7925f-5859-11e5-a774-002590adcb83', '2015-10-12', 'SD - FZ 9006 - FF', 'SET', '', '124', '2014-09-08-230313.jpg', '1230 x 510 x 1522', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca792b1-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD - FZ 2.180 - FF', 'SET', '', '124', '2014-09-08-235329.jpg', '801 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79301-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD - FZ 3.180 - FF', 'SET', '', '124', '2014-09-09-000321.jpg', '1202 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7934d-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD - FZ 4.170 - FF', 'SET', '', '124', '2014-09-09-002552.jpg', '723 x 415 x 1700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79398-5859-11e5-a774-002590adcb83', '0000-00-00', 'PT - FZ 201 - FF', 'SET', '', '124', '2014-09-09-003107.jpg', '', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca793e6-5859-11e5-a774-002590adcb83', '2015-10-12', 'WD SD - FZ 1901 - FF', 'SET', '', '124', '2014-09-09-003256.jpg', '1205 x 535 x 1900', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79432-5859-11e5-a774-002590adcb83', '0000-00-00', 'PTH - 201 BF', 'SET', '', '116', '2014-09-10-232953.jpg', '', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79484-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - K2002', 'SET', '', '117', '2014-10-20-051742.png', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca79668-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB - 5 SPD', 'SET', '', '123', '2014-09-15-044730.jpg', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca796c2-5859-11e5-a774-002590adcb83', '0000-00-00', 'BL - KT 1140 - 40th', 'SET', '', '116', '2014-10-06-054029.png', '658 x 415 x 1400', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca79718-5859-11e5-a774-002590adcb83', '0000-00-00', 'Bed BP-KT90-40th', 'SET', '', '116', '2014-10-06-214111.png', '1970 x 990 x 890', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79769-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT - KT 8008 - 40th', 'SET', '', '116', '2014-10-06-214223.png', '800 x 420 x 1224', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca797b7-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB - KT5 - 40th', 'SET', '', '116', '2014-10-06-215029.png', '424 x 295 x 1435', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca79807-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - KT 9005 - 40th', 'SET', '', '116', '2014-10-06-215521.png', '966 x 440 x 1409', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca79859-5859-11e5-a774-002590adcb83', '0000-00-00', 'DT - KT 8010 - ML', 'SET', '', '116', '2014-10-06-223736.png', '800 x 450 x 1447', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca798a6-5859-11e5-a774-002590adcb83', '0000-00-00', 'LB - KT 2.15 - ML', 'SET', '', '116', '2014-10-06-223841.png', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca798f1-5859-11e5-a774-002590adcb83', '2015-10-12', 'LB - KT 4.1 - ML', 'SET', '', '116', '2014-10-06-223938.png', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7993c-5859-11e5-a774-002590adcb83', '2015-10-12', 'LB - KT 5 - ML', 'SET', '', '116', '2014-10-06-224131.png', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca7998a-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - KT 9007 - ML ', 'SET', '', '116', '2014-10-06-224630.png', '1230 x 510 x 1522', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca799d6-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - KT 3.180 - ML', 'SET', '', '116', '2014-10-06-225022.png', '1202 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79a20-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - KT 2.180 - ML', 'SET', '', '116', '2014-10-06-225223.png', '801 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79a6a-5859-11e5-a774-002590adcb83', '0000-00-00', 'WD - KT 2.4.170 - ML', 'SET', '', '116', '2014-10-06-225335.png', '723 x 415 x 1700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bca79ab6-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - K2003', 'SET', '', '117', '2014-10-20-051854.png', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bca79b07-5859-11e5-a774-002590adcb83', '0000-00-00', 'SD - K2004', 'SET', '', '117', '2014-10-20-052005.png', '', NULL, NULL, NULL, 0, 0, NULL, NULL),
('bda46c1d-65d1-47ef-8f18-677bc9492d89', '2015-10-16', 'SC - BB 1.040 ILN', 'UNT', '', '26002', 'SC_-_BB_1_040_ILN1.png', '606 X 300 X 453', NULL, NULL, NULL, 1, 0, NULL, NULL),
('bdd8ac6e-dcc7-4ea9-8dba-da2efcdf7e90', '2019-10-29', 'LPC-8232 AP LB', 'PCS', '', '18001', 'lpc-8232-ap-lb.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('be578b0f-add5-45b4-b82b-15213f67350a', '2018-04-05', 'BCBC - X36 - KTSH', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC-_X36_KTSH_(08_JAN15).png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('bec0f9e8-49e8-4221-8dbd-3e41f5938de2', '2019-10-25', 'CRS - 1G1R3 XD. K2C', 'SET', '', '16', 'product-66cfa7a1844e76e0.png', '650 x 450 x  1675', NULL, NULL, NULL, 1, 1, NULL, NULL),
('bf253205-f945-4674-b0c2-312dc6e4809a', '2019-10-28', 'MRS - 7563', 'PCS', '', '15', 'product-a009452d4d42506a.png', '700 x 550 x 630', NULL, NULL, NULL, 1, 1, NULL, NULL),
('bf864e9e-f23d-467a-a82c-2c36bd8f5d27', '2019-10-29', 'LPC-8362 AP WLNT', 'PCS', '', '18001', 'lpc-8362-ap--1206-x-430-x-_500256482.png', '1206 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c0793a79-33fa-4b2a-841a-12c1bbf4cf3f', '2019-10-29', 'LPMR-8355 BQ', 'PCS', '', '18001', 'lpmr-8355-bq--1200-x-440-x.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c0c893bc-f514-4864-9240-c5879607837d', '2017-03-20', 'KCA - 922', 'UNIT', '', '15001', 'KCA-922.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('c26941e9-e2e0-4afe-9dca-a772bfd5bfcf', '0000-00-00', 'WD - KT 6.160 - CCC', 'SET', '', '116', 'WD - KT 6.160 - CCC.png', '1202 X 415 X 1667', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c2e000d5-bba1-47f7-adf4-d980d528f2e2', '2016-04-20', 'SCA1 - 5000 KTHR', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SCA1_-_5000_KTHR.png', '435 X 430 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL),
('c38b7e72-8478-41ce-9e10-68c99244eb03', '2019-10-28', 'MRS - 475 Kc', 'PCS', '', '15', 'product-e4ff0008e88257e6.png', '475 x 475 x 430', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c492a5ba-a71f-478f-90ae-b664a3184660', '2017-12-07', 'LP - 8270 - CLS', 'SET', '', '18001', 'LP_-_8270_CLS.png', '806 X 435 X 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c4b0a6cb-806b-4cf3-bbf3-6deb73bf833e', '2018-04-04', 'BCBC. B-X48 - CWAR', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_X48_CWAR_(16MAR16).png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `m_barang` (`id_barang`, `tanggal`, `nama_barang`, `satuan`, `deskripsi`, `id_kategori`, `gambar`, `ukuran`, `spec_name`, `spec_val`, `posisi`, `aktif`, `new`, `tanggal_berlaku`, `tanggal_exp`) VALUES
('c4d1bfc8-4bef-4bbf-a83f-2336045f9fd4', '2015-10-12', 'BCBC.B - 163 KREC', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-5832c26c65f4b556.png', '650 x 450 x 1530', 'Panjang||Tinggi||Lebar', '650 mm||450 mm||1510 mm', 6, 1, 0, NULL, NULL),
('c6125140-395c-4e6f-b95b-8547cb58318a', '0000-00-00', 'BCBC-163 SPGC', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-d64118faaf4046a0.png', '650 x 450 x 1530', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||65 cm||45 cm||153 cm||Ukuran Kemasan||76 cm||46 cm||51 cm||Kapasitas Muat||190||290', 35, 1, 0, NULL, NULL),
('c71bad76-3641-4ed6-9896-bf2154790eef', '2019-10-25', 'KG - 711 HR', 'SET', '', '15', 'product-e096d323ae974ee2.png', '600 x 830 x 985', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c7f7ac81-d44c-4707-be56-5912e9ba5f9f', '0000-00-00', 'Hello Kitty Rama Pink', 'SET', 'HELLO KITTY RAMA PINK springbed dengan lapisan dari busa density tinggi dengan rangka kasur spring.', '6', 'big-0aec40a346109943.png', '200 x 200 x 42', 'Divan||Tinggi Divan||Kasur||||||||||||Tinggi Kasur||Sandaran||Knock Down||Garansi per', 'Rangka divan box dilapisi pp board dan busa dibungkus kain faniboa warna putih||18 cm||Ukuran : 100 cm x 200 cm||Ukuran : 120 cm x 200 cm||Ukuran : 160 cm x 200 cm||Ukuran : 180 cm x 200 cm||Ukuran : 200 cm x 200 cm||Sarung kasur menggunakan kain quilting||24 cm||Kayu dilapisi busa dibungkus dengan kain faniboa warna putih dan aksesoris yang dibungkus kain faniboa warna pink||Tidak||15 tahun', 10, 1, 0, NULL, NULL),
('c8343549-eb68-45dc-8989-0ee47c51cfca', '2016-06-06', 'NHW - X10 HOWL', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NHw_-X10_HOWL.png', '440 X 340 X 610', NULL, NULL, NULL, 1, 0, NULL, NULL),
('c85f2547-28af-41f8-885f-927eaca19382', '0000-00-00', 'DT - FZ 8012 - NF', 'SET', '', '124', 'DT - FZ 8012 - NF.png', '809 X 415 X 1540', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c86f32b6-a9d3-43f4-90f1-5e1efa1061d4', '2019-10-29', 'LPC-8362 AP JTI', 'PCS', '', '18001', 'lpc-8362-ap-jti.png', '1206 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('c95b0864-32c4-4d4c-b5ed-f053776046bc', '2019-10-29', 'Captain America SD - 22111 CIV', 'UNT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'SD_22111_CIV_EDIT.png', '1012  X 500  X 1552', NULL, NULL, NULL, 1, 0, NULL, NULL),
('caa2bc5d-e9cd-4c8e-8b7b-1759c67e3fb3', '2019-10-28', 'KRS - 333', 'PCS', '<div>Kursi Rotan Sintetis</div><div><br></div>', '15', 'product-26f720148c01a88f.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 1, NULL, NULL),
('cb37cb13-c6d4-43bf-b815-d36e1efa5791', '2016-04-26', 'MFC - BARBIE', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'MFC_-M43_BBD.png', '540 X 540 X 460', NULL, NULL, NULL, 1, 0, NULL, NULL),
('cbc24a45-99c6-49d3-82e7-cddc60f4906e', '2016-04-21', 'NSP - X10 - AW', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NSP_X10_AW.png', '530 X 470 X 870', NULL, NULL, NULL, 1, 0, NULL, NULL),
('cd6c7ce6-a5d4-40ac-b8e2-b859e3398dc0', '2018-04-05', 'BCBC. B - X36 - HOWL', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_-_X36_HOWL_List_Hitam_(18NOV15).png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('cd9a7715-c6ac-4a27-8a15-526c6e1b221f', '2017-11-21', 'DSC - 4Q - POOH', 'PCS', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'DSC_4Q_POOH.png', '650 X 390 X 950', NULL, NULL, NULL, 1, 1, NULL, NULL),
('cdeea367-aac1-464e-abb1-f9d3ff3bc8cc', '2017-03-10', 'KCA - 901', 'SET', '', '15001', 'KCA-901.png', '770 X 770 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('ce05f7cc-018a-4c8c-9bc7-314336c1c314', '0000-00-00', 'SD - 9008 - PCS', 'SET', '', '121', 'SD - 9008 - PCS.png', '1230 X 510 X 1522', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ce60e7f6-6962-4961-955e-6409c9b417cc', '2015-10-16', 'WD - CA 3.170 - MM', 'SET', '', 'aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'WD_-_CA_3.170_MM_.png', '1202 X 430 X 1726', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ced96595-201c-4336-a3da-3f3ad1d3cdc3', '2019-10-25', 'SOFTAN 181 A1', 'PCS', '', '15', 'product-6c6a5058982d070a.png', '730 x 620 x 750', NULL, NULL, NULL, 1, 1, NULL, NULL),
('cf61dd3c-d2d6-4b99-878a-eec667fa4a08', '2017-12-07', 'LH - 857 - CLS', 'SET', '', '17001', 'LH---857-CLS.png', '1400 X 435 X 760', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d102fbdd-2e1c-431c-8c84-3a3755c9c84f', '0000-00-00', 'silver double plus top', 'SET', 'SILVER DOUBLE PLUS TOP ', '2', 'big-88a093d4d706e542.png', '200 x 200 x 54', ' Sandaran : |||||||| Divan :|||||||||||| Kasur :||||||||||||||||||', '- Sand. Eiffel||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain moya abu||- Divan Box Barcelona||- Rangka kayu oven + obat anti kutu/rayap||- PP board PVC||- Busa silver||- Tinggi divan = 18 cm||- Kain moya abu||- Model kasur double plustop||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi per 15 tahun||- Kain knitting quilting||- Busa silver||- Tinggi kasur = 28 cm||- Tinggi kasur + divan + stabil = 54 cm||- Ukuran 100, 120, 160, 180, 200 x 200 cm', 1, 1, 0, NULL, NULL),
('d28d0f7f-0136-49ca-90a6-54eb2c2064a7', '2019-10-29', 'Spiderman Meja Belajar SD - 223311 - SPD', 'UNT', '', '78f09f46-f026-4580-9b72-d8f0bb5a4644', 'SD_-_22311_SPD.png', '1200 X 500 X 1400', NULL, NULL, NULL, 1, 0, NULL, NULL),
('d2a2a4a7-8d25-42e2-aaa0-99eb19fb23ff', '2016-06-06', 'NKT - X10 - KTBF', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'NKT_-_X10_KTBF.png', '440 X 340 X 610', NULL, NULL, NULL, 1, 0, NULL, NULL),
('d3448c28-0412-4454-ae6e-9f3970ad5d2b', '2018-04-09', 'LAPDESK SPGC', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lapdesk_Spiderman_(16MAR16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d37aeb80-b471-44e0-b888-f5c62b773329', '2019-10-29', 'RSG-928 OHJ', 'PCS', '', '20001', 'rsg-928-ohj-600x300x850.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d3d99f80-ea08-4440-903e-663c6f03321b', '2016-12-22', 'TWIN TETRIS', 'SET', '', '2', 'twin-tetris_EDIT.png', '100, 120', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d4059f41-d29a-403b-b837-37c42bbc4a76', '2019-10-29', 'LPC-8229 RTN', 'PCS', '', '18001', 'lpc-8229-rtn.png', '806 x 420 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d4a81639-4ffa-4bd3-8eff-1c04525673a9', '0000-00-00', 'Twin Frozen', 'SET', NULL, '3', 'big-d291ac2d012c7b27.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('d4d4dd5d-990b-4615-9837-5ee63365a1d1', '2019-10-28', 'MRS - 8446', 'PCS', '', '15', 'product-c889513b3f305b4b.png', '800 x 475 x 460', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d57a8c44-da0d-4a16-86b1-08dd129d0730', '2017-11-29', 'KURSI TANPA TANGAN BIG - 212 B', 'BH', '', '15', 'BIG-_212.png', '530 X 470 X 880', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d5d8a0c4-5bf8-4b35-bc05-5469b1e2d3c4', '2019-10-29', 'LPC-8228 CLT', 'PCS', '', '18001', 'lpc-8228-clt.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d63703fa-141b-4fb5-81cb-05117ad50bc0', '0000-00-00', 'SFC2 - 5000 - FROZ', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-2a507484c4c181f4.png', '455 x 435 x 1200', 'Panjang||Lebar||Tinggi', '455 mm||435 mm||1200 mm', 11, 1, 0, NULL, NULL),
('d69c09df-b5a0-4d78-a724-54252040b210', '0000-00-00', 'WD - KT 3.180 - LMH', 'SET', '', '116', 'WD - KT 3.180 - LMH.png', '1202 X 415 X 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d90f7f28-3cd6-4f11-813b-5322e16e99ca', '2019-10-24', 'CONTAN BB 400 K1', 'SET', '', '16', 'product-97080e0526fc23e4.png', '455 x 430 x 980', NULL, NULL, NULL, 1, 1, NULL, NULL),
('d9444251-e2fa-4a14-9191-acaf47d336ae', '2019-10-29', 'LPC-8352 WQ', 'PCS', '', '18001', 'lpc-8352-wq--1200-x-440-x-.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('dadb1eb0-cd21-4f90-aa57-f42a5b1aec75', '2015-10-12', 'Kursi Pakai Tangan Big 909', 'SET', '', '15', 'product-896ac3ed6fb59875.png', '720 x 530 x 730', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||72 cm||53 cm||73 cm||Ukuran Kemasan||72 cm||53 cm||197 cm  (20 Tumpuk Kursi)', 113, 1, 0, NULL, NULL),
('db67d6d6-4477-4210-998d-11231a13c008', '2019-10-29', 'LPC-19201 OHT', 'PCS', '', '18001', 'lpc-19201-htm--uk.png', '800 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('dbb44b10-f852-47a9-b93a-d039eb7b5902', '0000-00-00', 'BIG BOXER 26 HKLV', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-90c49e4a5ed1afe1.png', '475 x 335 x 240', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||47,5 cm||33,5 cm||24 cm||Ukuran Kemasan||49,5 cm||34,5 cm||46 cm', 136, 1, 0, NULL, NULL),
('dbd7cb4f-1975-454a-8adf-20e62e85592d', '0000-00-00', 'SFC2 - 4000 - FROZ', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-6bd2544d728554b4.png', '455 x 435 x 980', 'Panjang||Lebar||Tinggi', '455 mm||435 mm||980 mm', 10, 1, 0, NULL, NULL),
('dd042704-39bf-4d2e-9e2e-cf74703e5ac4', '2017-03-31', 'KCA - 913', 'SET', '', '15001', 'KCA_913.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('dd3c12a3-2a05-4a6e-aaf2-b70532f51904', '2017-11-29', 'KURSI ROTAN - 3Y3', 'BH', '', '15', 'BIG_-_3Y3.png', '380 X 380 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('dd3df509-e9b6-4348-9ba2-f925ce928935', '2019-10-29', 'BC-1868 OHJ', 'PCS', '', '13001', 'bc-1868-ohj-600x400x1800_1904426809.png', '600 x 400 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('de213374-e16a-40cf-b94e-f9f172e294d4', '2019-10-29', 'BC-1666 OPT', 'PCS', '', '13001', 'bc-1666-opt-600x300x1600.png', '600 x 300 x 1600', NULL, NULL, NULL, 1, 1, NULL, NULL),
('de426832-0947-43cd-8f93-b297d7c56ade', '2017-03-31', 'KCA - 9101', 'SET', '', '15001', 'KCA-9101.png', '770 X 770 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('de4d1360-fe85-4a22-abb2-2892803b5c4f', '0000-00-00', 'Bed Set Single Pillow Top', 'SET', '', '2', 'big-49f3d69ce687bfa3.png', '180 x 200 x 40', NULL, NULL, 1, 1, 0, NULL, NULL),
('debd8b06-ca17-42fa-a7a2-673c88f6c1e9', '0000-00-00', '3 In 1 Modern', 'SET', '3 IN 1 MODERN', '2', 'big-e16d68f0a81a51b4.png', '120 x 200 x -', '  Sandaran :||||||  Bagian depan / Kaki depan :||||||  Divan :|||||| Twin Atas dan Twin Bawah :||||||||||||||||||', '- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain ivory coklat muda||- Rangka kayu oven + obat anti kutu/rayap||- Busa silver||- Kain ivory coklat muda||- Rangka kayu oven + obat anti ktu/rayap||- Busa silver||- Perpaduan kain knitting + ivory coklat muda||- Model alita / tahu||- Kain knitting||- Busa silver||- Rangka kasur per bonel||- Per pinggir Z-Guard||- Jumlah Per : 110 bh / mÂ²||- Garansi Per 15 tahun||- Ukuran 100, 120 x 200 cm||||', 1, 1, 0, NULL, NULL),
('df1e6ef4-852f-416a-833e-48c8f84ee700', '2016-04-27', 'Meja Laptop Barbie', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Meja_Laptop_Barbie.png', '615 X 470 X 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('df219ee4-ca95-4c0e-8137-49cc2c51a5aa', '2017-02-10', 'NEW SPIDERMAN ULTIMATE', 'SET', '', '3', 'Twin_New_Spider-man_ultimate.png', '100 X 200, 120 X 200', NULL, NULL, NULL, 1, 1, NULL, NULL),
('dff1f768-a803-411e-82e0-3523c5d382f3', '2019-10-29', 'Spiderman WDM - 12322 - SPD', 'UNT', '', '78f09f46-f026-4580-9b72-d8f0bb5a4644', 'WDM_-_12322_SPD.png', '806  X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('e08f308f-d819-4fea-a112-97bb2c5a8ea1', '2019-10-29', 'LPMR-8355 WQ', 'PCS', '', '18001', 'lpmr-8355-wq--1200-x-440-x.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('e0f7ca75-77a0-4836-b140-b7ac6c462503', '2019-10-29', 'ATR-0335 OAK', 'PCS', '', '12001', 'atr-0335_1_1641887439.png', '1400 x 410 x 740', NULL, NULL, NULL, 1, 0, NULL, NULL),
('e0fc521e-19e1-4dc3-9ff5-cada394667e1', '0000-00-00', 'BIG BOXER 65 SPGC', 'SET', '', '12637502-e5c6-42b2-bb06-45577bbcabe0', 'product-152ca528cb599221.png', '620 x 435 x 310', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||62 cm||43,5 cm||31 cm||Ukuran Kemasan||64 cm||44,5 cm||56 cm', 137, 1, 0, NULL, NULL),
('e1adac94-37a1-422b-94cf-4a74358e6d18', '2019-10-29', 'LPC - 8228 MRH', 'PCS', '', '18001', 'lpc-8228_mrh.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('e2b3d48c-1173-440c-8ca3-0f96cb8931b6', '0000-00-00', 'Bed Car Hello Kitty VW', 'SET', 'Tempat tidur anak berbentuk mobil', '5', 'big-5c834388552ebadc.png', '100 x 180', 'Divan||Kasur||||Sandaran||Knock Down||Berlisensi||Garansi per', 'Bahan Divan menggunakan bahan partikel board dan kayu yang dilapisi dan dibungkus kain serta air brush||Ukuran : 100 cm x 180 cm||Kain kasur menggunakan bahan cotton dengan quilting sesuai dengan contour gambar||3 Dimensi||Ya||Ya||15 tahun', 14, 1, 0, NULL, NULL),
('e2e549e5-b68e-41dd-beff-7c9e75965c5e', '2019-10-29', 'LPMR-8227 LJ', 'PCS', '', '18001', 'lpmr-8227-lj--1206-x-430-x_1242054409.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('e4a2a5d4-e8e9-48e2-8c85-260cc99674aa', '2019-10-28', 'MRS - 8473', 'PCS', '', '15', 'product-f9feb1555d8f43d1.png', '800 x 475 x 730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('e6a52cf2-8c64-47da-9ebc-fd8ff4abf05a', '0000-00-00', 'Meja Teras Big-3650', 'SET', NULL, '15', 'product-21ca99955b389fdb.png', '510 x 510 x 450', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||51 cm||51 cm||45 cm||Ukuran Kemasan||51 cm||51 cm||172 cm (25 Tumpuk Kursi)', 112, 1, 0, NULL, NULL),
('e91aca68-239f-4416-a30c-8b09d2556049', '2015-10-12', 'BCBC - 163 - SORP', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'product-d2befc4b7940a3bb.png', '650 x 450 x 1530', 'Panjang||Lebar||Tinggi', '650 mm||450 mm||1510 mm', 3, 1, 0, NULL, NULL),
('e91d4f6e-8150-4b0d-b00c-729ebf66ad24', '2016-04-27', 'Laptop Table KTBF', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'laptop_Table_KTBF.png', '615 X 470 X 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('e91fa90f-07d8-412a-b695-d0554ef79b80', '2019-10-29', 'Princess WDM - 11535 - PCS', 'UNT', '', 'a4d0df09-ccf8-40c9-8cd4-3a5cf3ba26a3', 'wdm-11535-pcs.png', '1200 X 455 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('e9bb1b9b-b38c-451e-ab0a-958646e354a1', '2017-11-23', 'BIG BOXER 65', 'SET', '', '20', 'product-9fc275222f422899.png', '620 x 435 x 310', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi', 'Ukuran Produk||62 cm||43,5 cm||31 cm||Ukuran Kemasan||64 cm||44,5 cm||56 cm', 142, 1, 0, NULL, NULL),
('eab3ddd0-3408-40d3-b7f6-3d653c4381bf', '2018-04-05', 'BCBC. B - X36 - DORY', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC.B-X36_DORY_(11OKT16)_.png', '650 X 450 X 1330', NULL, NULL, NULL, 1, 1, NULL, NULL),
('eada55d4-2838-4302-b6e0-4e010e319710', '0000-00-00', 'WD - KT 2.180 - LMH', 'SET', '', '116', 'WD - KT 2.180 - LMH.png', '801 X 415 X 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('eb23d05d-f057-4371-8e20-01bbffe59054', '2019-10-29', 'LPC-8328 MRH', 'PCS', '', '18001', 'lpc-8328-mrh.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ebcf28ec-42be-4e6a-a378-4c2c99e8a131', '2017-03-13', 'KCA - 912', 'SET', '', '15001', 'KCA-912.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL),
('ebebca73-68f0-40af-872a-261b13507a7a', '2019-10-30', 'DT - BB 8015  ILN', 'SET', '', '22001', '2015-10-09-093449_0_2.png', '872 X 464 X 1519', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ee9cd6e8-5c5a-425c-9816-7dcc6c0a2dc0', '2019-10-28', 'KRS - 673 ABU', 'PCS', '<div>KURSI ROTAN SINTETIS</div><div><br></div>', '15', 'product-e37ce45c9c593663.png', '600 x 530 x 875', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ef9076d3-2f95-4bfa-b7ff-062af6219053', '2017-11-29', 'KURSI BASO BIG - 180 V', 'BH', '', '15', 'BIG_-_180V.png', '370 X 350 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('efa92cbe-6757-4cd1-95f6-58b66259230b', '2018-04-09', 'LAPDESK PRINCESS', 'PCS', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'lapdesk_Princess_(23FEB16).png', '450 X 310 X 57', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f095504b-4023-4e30-b8f4-009a6cc207f4', '0000-00-00', 'Stockcase SPDA-4000 AK1', 'SET', '', '16', 'product-9e664c1204d9683a.png', '450 x 430 x 975', 'Product Size||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45 cm||43 cm||97.5 cm||Ukuran Kemasan||45 cm||44.5 cm||48 cm||Kapasitas Muat||300||650', 66, 1, 0, NULL, NULL),
('f1667082-13ab-4a19-83a8-9d445dba59a1', '2019-10-29', 'Captain America WDM - 12131 CIV', 'UNT', '', '16af295b-9d68-4bd0-865c-cf04698db6a2', 'WDM_12131_CIV_EDIT.png', '984  X 420  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('f1b3b9af-934f-493a-acd1-76c2786b9613', '2019-10-29', 'Frozen WDM - 11735 - FFV', 'UNT', '', '32002', 'WDM-11735-FFV-N.png', '1200  X 415  X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL),
('f1ee0d42-1b08-4536-ae4b-7e9bddc01fd8', '2018-04-05', 'BCBC - XX2 - OBKT', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_XX2_OBKT_(21MEI15).png', '650 X 450 X 1510', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f29334bc-c25d-472b-ab55-33136258ee68', '2015-10-12', 'Stockcase Karakter SFC2-5000 KREC', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'product-6481b43b551cd9bc.png', '455 x 430 x 1200', 'Product SIze||Panjang||Lebar||Tinggi||Packing Size||Panjang||Lebar||Tinggi||Loading Capacity ||20 Feet||40 Feet', 'Ukuran Produk||45.5 cm||43.5 cm||120 cm||Ukuran Kemasan||46 cm||44.5 cm||49.5 cm||Kapasitas Muat||300||650', 44, 1, 0, NULL, NULL),
('f36c1519-42bc-43d2-95ca-e9bcaca8154b', '2017-11-29', 'KURSI TANPA TANGAN BIG - 209 - B', 'BH', '', '15', 'big_209_b.png', '530 X 470 X 880', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f69593cc-5e9f-4e9b-9dd4-a3209c212afc', '2019-10-29', 'LPC-19301 OPT', 'PCS', '', '18001', 'lpc-19301-oak--uk.png', '1200 x 430 x 1900', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f7d91a4b-7bd0-414f-a44d-aff9f46bf646', '2019-10-29', 'RSG-936 OPT', 'PCS', '', '20001', 'rsg-936-opt-600x300x850.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f7eafa5e-80ed-420b-b169-219053308f7a', '0000-00-00', 'Twin Hello kitty Classic Garden', 'SET', NULL, '3', 'big-2e2fd2b94997b3ae.png', '', NULL, NULL, 1, 1, 0, NULL, NULL),
('f8836674-91d1-4a67-809b-203bb11bfd45', '2019-10-29', 'LPC-8232 AP LJ', 'PCS', '', '18001', 'lpc-8232-ap-lj.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f8ba8f80-5cc8-4ccf-80ff-b50722f1bb56', '2019-10-29', 'RSG-928 OPT', 'PCS', '', '20001', 'rsg-928-opt-600x300x850.png', '600 x 300 x 850', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f98784ac-a677-441f-87c2-25106c8509a7', '2016-04-27', 'Meja Laptop HOWL', 'BH', '', '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Meja_Laptop_HOWL.png', '615 X 470 X 540', NULL, NULL, NULL, 1, 0, NULL, NULL),
('f9a192a8-7da9-4fdd-b233-2f4507f5498e', '2017-11-29', 'KURSI ROTAN - 3R3', 'BH', '', '15', 'BIG_-_3R3.png', '380 X 380 X 470', NULL, NULL, NULL, 1, 1, NULL, NULL),
('f9c75cdb-04f5-45af-a1b3-56daf5dd0f7d', '2018-04-09', 'SCA1 - 4000 - KTHR', 'SET', '', 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'SCA1-4000_KTHR_(25AGUS15).png', '435 X 430 X 980', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fa091c66-cf5b-4c93-ac26-43535f44d6f1', '2019-10-28', 'KRS - 3B3', 'PCS', '<div>Kursi Rotan Sintetis</div><div><br></div>', '15', 'product-27a22647af6ff2b6.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fa62ddba-e539-4ea9-adfb-1fff1cb8fef4', '2016-03-04', 'Twin Barbie Ilustrasi', 'SET', '', '3', 'Barbie-ilustrasi_rsz.png', '100, 120', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fb25162f-329e-4f15-a623-44d0b9509a1d', '0000-00-00', 'DT - FZ 8014 SF', 'SET', '', '124', 'DT - FZ 8014 SF.png', '872 X 464 X 1530', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fd4f2b93-b33b-437f-b0d4-dcd164551bac', '2019-10-29', 'NC - FZ 11 - WM', 'UNT', '<p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Colour &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Glossy White</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">The main ingredient &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Partical Board</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Thickness &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Min. 15 mm</p><p style=\"margin-bottom: 25px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Foil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PVC Glossy</p>', '32002', 'NC_-_FZ_11_-_WM1.png', '428 X 335 X 529', NULL, NULL, NULL, 1, 0, NULL, NULL),
('fd5b4cf4-b7b6-486e-82a8-9114906f7afd', '2019-10-24', 'CONTAN BB 500 K1', 'SET', '', '18001', 'product-b7a67b4ce4b041cc.png', '455 x 430 x 980', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fdf66430-2d6b-499a-80d2-2b182cfe10e2', '2019-10-28', 'SOFSAN - 663 - 1J Arm', 'PCS', '', '15', 'product-750373cf4029bc2d.png', '600 x 530 x 755', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fe8661b5-5efd-4112-b219-7d8f02613665', '2017-12-07', 'LPC - 8371 - CLS', 'SET', '', '18001', 'LPC_-_8371_CLS.png', '1206 X 435 X 1800', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fee6732f-13e5-4521-89e4-1228f35f3042', '2019-10-29', 'MR-619 A OTE', 'PCS', '', '22001', 'mr-619-a-ote_(1).png', '750 x 400 x 1500', NULL, NULL, NULL, 1, 1, NULL, NULL),
('ffe3d3ca-8fdc-42cf-8ba5-aa6c63d5f1c5', '2018-04-04', 'BCBC . B-X48 HOWL', 'SET', '', '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC_X48_HOWL_(18NOV15).png', '650 X 450 X 1730', NULL, NULL, NULL, 1, 1, NULL, NULL),
('fffc4cf0-9fcc-495d-a5b8-71b6e934ccc2', '2019-10-29', 'LSG-032', 'PCS', '', '20001', 'lsg-032-jrt--uk.png', '474 x 300 x 1030', NULL, NULL, NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang_unit`
--

CREATE TABLE `m_barang_unit` (
  `id_barang_unit` varchar(36) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_barang_unit` varchar(255) NOT NULL,
  `satuan` varchar(45) DEFAULT NULL,
  `deskripsi` mediumtext,
  `id_kategori` varchar(36) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `spec_name` mediumtext,
  `spec_val` mediumtext,
  `posisi` int(11) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `tanggal_berlaku` date DEFAULT NULL,
  `tanggal_exp` date DEFAULT NULL,
  `id_unit` varchar(36) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_barang_unit`
--

INSERT INTO `m_barang_unit` (`id_barang_unit`, `tanggal`, `nama_barang_unit`, `satuan`, `deskripsi`, `id_kategori`, `gambar`, `ukuran`, `spec_name`, `spec_val`, `posisi`, `aktif`, `new`, `tanggal_berlaku`, `tanggal_exp`, `id_unit`, `harga`) VALUES
('04294e1b-1912-467c-8b1e-fb263af28be8', NULL, 'LPC - 8231 AP', 'SET', NULL, '18001', 'no_image.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 440000),
('04299edf-98ca-4432-b886-0966fb0ea5f6', NULL, 'MBB - 314', 'SET', NULL, '23001', 'no_image.png', '1205 x 455 x 1500', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 363000),
('05cd393e-a297-47d3-bb7d-020dff701f35', NULL, 'MRH - K11002', 'SET', NULL, '116', 'no_image.png', '800 x 400 x 1200', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 466650),
('0606d4e0-0d01-4767-9320-d0b8f54a6630', NULL, 'KCA - 933', 'SET', NULL, '15001', 'no_image.png', '1180 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 578600),
('06a862bd-a220-4a2e-bba2-89c096e4a892', NULL, 'MTB-112', 'PCS', NULL, '21001', 'no_image.png', '1200 x 600 x 730', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 190300),
('07a369ad-6cc9-4b3b-91ff-0e5d57dcfda9', NULL, 'ATR - 0311', 'SET', NULL, '12001', 'no_image.png', '800 x 450 x 565', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 269500),
('083a72fb-82f9-4e13-9f76-14e7b070f9e3', NULL, 'MBS - 328 S1', 'SET', NULL, '23001', 'no_image.png', '1050 x 400 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 308000),
('08c8ea64-c4f9-461c-8000-dceb7e03d236', NULL, 'LP3-B2PC1-LR', 'PCS', NULL, '18001', 'no_image.png', '1200 x 430 x 1830', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 650100),
('0d6a6b36-5621-453c-9cd2-d05cc71ae273', NULL, 'RSG - 093 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 890', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 127600),
('0e55a83b-3bd4-451f-877c-6b0d66e800e4', NULL, 'LH - 809', 'SET', NULL, '17001', 'no_image.png', '1400 x 420 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 379500),
('115d1b97-f05e-4967-8f86-67418758b442', NULL, 'KCA - 9113', 'SET', NULL, '15001', 'no_image.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 605000),
('123e963c-eafc-43c1-a4c3-b2509bbcc81c', NULL, 'LPC - 8228 MRH', 'PCS', NULL, '18001', 'no_image.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('1a8a41f6-9e1c-4fa3-80da-52bf098cd5c3', NULL, 'LSG - 325', 'SET', NULL, '20001', 'no_image.png', '800 x 300 x 600', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 140800),
('1eb936d8-b456-4372-9f3a-5313462b2105', NULL, 'LPC - 8230 AP', 'SET', NULL, '18001', 'no_image.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 450000),
('2104da9a-d3a1-4f30-8040-b0c4ad1ccfe3', NULL, 'LPC-8228 CLT', 'PCS', NULL, '18001', 'no_image.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('2460d7ee-cc22-4f39-9825-75b9594474e1', NULL, 'LPC-8328 HTM', 'PCS', NULL, '18001', 'no_image.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 610500),
('250af1bd-a79e-4f11-a666-5a827c6b090b', NULL, 'RSG - 094 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 1180', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 160600),
('27224af3-1ee0-4ec7-9376-f2716407fe69', NULL, 'LPC-8328 MRH', 'PCS', NULL, '18001', 'no_image.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 610500),
('27c6e080-788a-4575-909b-955cdd745f09', NULL, 'LPC-8252 WQ', 'PCS', NULL, '18001', 'no_image.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 467500),
('29938024-c728-48d2-a890-dacf96d3c1b5', NULL, 'LPMR-8227 LJ', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 605000),
('2a9cd26d-163d-4883-92d3-05d21856ca3f', NULL, 'LPMR - 8223', 'SET', NULL, '18001', 'no_image.png', '1205 x 450 x 1825', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 654500),
('2c3d1d2d-f629-4542-a08e-c6a7c80fc63c', NULL, 'KRS - 646', 'PCS', NULL, '15', 'no_image.png', '450 x 530 x 540', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 55000),
('2f93e3a8-277d-4cb9-8ec1-f320733e39bf', NULL, 'LPMR - 8226', 'UNIT', NULL, '18001', 'no_image.png', '1200 X 430 X 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 620000),
('2fb7080d-44c6-40e6-9382-4dd38cd76f7a', NULL, 'BCBC-M 242 KTSH', 'SET', NULL, '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'no_image.png', '650 x 450 x 1300', NULL, NULL, 27, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 395000),
('3460c9a8-557d-4282-9ae5-6eaf49c6bc42', NULL, 'RB - 02 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 605', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 71500),
('38e242b7-8fe8-41d1-bc0c-65e178760fd6', NULL, 'MFC - 43 FROZ', 'PCS', NULL, '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'no_image.png', '540 X 540 X 460', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 45100),
('391c6d41-986d-435a-9443-15ca96658c64', NULL, 'LS-515', 'PCS', NULL, '19001', 'no_image.png', '800 x 300 x 1200', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 346500),
('3e53934c-601b-4ca2-8c0d-1b823bb474dd', NULL, 'LSG-032', 'PCS', NULL, '20001', 'no_image.png', '474 x 300 x 1030', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 162800),
('42095495-ca09-4e81-a6b2-ba90dc9207fb', NULL, 'LPMR-8355 WQ', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 686400),
('448d7010-f171-4671-b3f5-fd303082f7b3', NULL, 'CRS - XU 48', 'SET', NULL, '14', 'no_image.png', '650 x 450 x 1730', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 349800),
('4e0a0e29-c229-4025-a25d-3577505efc64', NULL, 'KCA - 912', 'SET', NULL, '15001', 'no_image.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 344960),
('4fd93bac-d4d6-42fe-9a96-43eb001919a3', NULL, 'LB - 5 SPD', 'SET', NULL, '123', 'no_image.png', '424 x 295 x 1435', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 248600),
('50bae2c5-464c-42a3-9928-b7c332e3eaec', NULL, 'ATR - 0303', 'SET', NULL, '12001', 'no_image.png', '605 x 440 x 530 ', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 179300),
('51b1c7a3-faaf-4435-af35-53c5f3557df2', NULL, 'KCB - 9120', 'SET', NULL, '15001', 'no_image.png', '790 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 513700),
('51c496c7-5002-4933-9d16-fd2de461aaba', NULL, 'KCB - 9130', 'SET', NULL, '15001', 'no_image.png', '1180 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 691900),
('5534080f-4cd3-48db-8b01-84425e0b42ce', NULL, 'BLH-K7001', 'SET', NULL, '116', 'no_image.png', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 696149.25),
('560422ed-2ef2-4f8d-b06d-b769828cec54', NULL, 'NCA - 522 KREC', 'SET', NULL, 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'no_image.png', '430 X 460 X 1050', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 198000),
('580452b0-aa38-4fae-b5e3-3854af570f2a', NULL, 'KCA - 913', 'SET', NULL, '15001', 'no_image.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 579700),
('58a393ef-5441-4d2d-b4a3-16d1e13b87a2', NULL, 'SCH - K13001', 'SET', NULL, '116', 'no_image.png', '730 x 250 x 1254', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 566950),
('5d61c596-bdb5-45e9-9344-f44f6e11f4b7', NULL, 'KRS - 3R3 TC', 'PCS', NULL, '15', 'no_image.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 24035),
('5db71815-bc2b-4396-bb95-0dbbe81249a2', NULL, 'KG - 720 HR', 'PCS', NULL, '15', 'no_image.png', '1040 x 830 x 985', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 423500),
('5f8b2fdc-189b-4dc9-9ce2-eb35b701d666', NULL, 'MRJ - 602', 'SET', NULL, '22001', 'no_image.png', '795 x 400 x 1320', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 357500),
('605ba045-9cac-44cf-bcc0-a5e88854cece', NULL, 'LPC - 8330 AP', 'SET', NULL, '18001', 'no_image.png', '1205 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 580000),
('6064e989-d8c1-4e46-9657-bee6e09fae07', NULL, 'MBS - 328 S2', 'SET', NULL, '23001', 'no_image.png', '1055 x 400 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 308000),
('6290bdb4-5a2b-4338-a9df-eb8e8f0de958', NULL, 'KRS - 3Y3', 'PCS', NULL, '15', 'no_image.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 24035),
('644648eb-a0b4-433f-82a2-9f6e519f565a', NULL, 'RSG - 9294 BP', 'SET', NULL, '20001', 'no_image.png', '425 x 300 x 1170', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 156200),
('66967789-5daa-4f41-93b9-c0fdbb8eec83', NULL, 'LPC - 8320 AP', 'SET', NULL, '18001', 'no_image.png', '1205 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 613800),
('670e76b4-b864-4719-9bf3-142228165601', NULL, 'MRS - 8446 RAK', 'PCS', NULL, '896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'no_image.png', '800 x 475 x 460', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 149875),
('695c9470-9c90-4c95-96fc-f7f349af33d1', NULL, 'BCBC-242 HKBF', 'SET', NULL, '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'no_image.png', '650 x 450 x 1300', NULL, NULL, 30, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 400125),
('6a32f92f-4d34-4f08-b26f-d2e68252fc60', NULL, 'SCA1 - 5000 KTHR', 'SET', NULL, 'e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'no_image.png', '435 X 430 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 224950),
('6e12b5c4-525e-4cb7-b48d-420e86d4cf0d', NULL, 'LPC-8253 BQ', 'PCS', NULL, '18001', 'no_image.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 462000),
('7107b4d0-826b-4c15-b6a9-639b08b18cc5', NULL, 'LPC-8229 ACM', 'PCS', NULL, '18001', 'no_image.png', '806 x 420 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('715eb6b5-fefa-436f-8090-1dc75a2aa760', NULL, 'LPC - 8228 HTM', 'PCS', NULL, '18001', 'no_image.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('72c13ce0-c070-42c4-a14f-6feff5c84ed9', NULL, 'KCA - 901', 'SET', NULL, '15001', 'no_image.png', '770 X 770 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 595100),
('7566e00f-ac6f-4c21-bff1-d4e7fe9055a7', NULL, 'KRS - 3B3', 'PCS', NULL, '15', 'no_image.png', '380 x 380 x 485', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 24035),
('76097268-8a4c-4456-9be3-b169bb3e9626', NULL, 'MRS - 8446', 'PCS', NULL, '15', 'no_image.png', '800 x 475 x 460', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 102300),
('76510225-47c2-4297-b165-9754f992a98b', NULL, 'LPMR-8355 BQ', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 686400),
('78dd6c3b-6b05-4118-86ca-a6103fd01140', '2019-12-17', 'AAA11', 'METER', '', '120', 'AAA11.png', '4x4', NULL, NULL, NULL, 1, 1, NULL, NULL, '373af58a-0cc0-4f5e-b5e4-43c857967f50', 12000),
('79d01609-d1ad-4c85-a124-4771cfb81575', NULL, 'RB - 04 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 1180', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 121000),
('7a6bc6c3-8051-4e26-b9af-5b8678eecf91', NULL, 'RSG - 9295 BP', 'SET', NULL, '20001', 'no_image.png', '425 x 300 x 1440', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 190300),
('7a9f8f51-6b2f-4c4e-803e-62b6599e4115', NULL, 'ATR - 0305', 'SET', NULL, '12001', 'no_image.png', '590 x 465 x 565', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 137500),
('7b528835-1a44-4f8f-b549-563561698545', NULL, 'LPC-8228 TSC', 'PCS', NULL, '18001', 'no_image.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('7dd40f86-d9d4-4143-b076-c54ddd558b10', NULL, 'LPC-8352 WQ', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 649000),
('7fd9f7c5-c6f9-4fe0-ab33-18735f22068d', NULL, 'RSG - 092 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 605', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 99000),
('81aaad21-ebe4-46ef-ad89-e200d46911ae', NULL, 'LPC-8232 AP LB', 'PCS', NULL, '18001', 'no_image.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 467500),
('81c3d1af-ced0-4499-872b-f98f78e063c8', NULL, 'SCA - 4000 PK1', 'SET', NULL, '16', 'no_image.png', '435 X 430 X 890', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 178200),
('81f76956-fbaa-4c9f-8da3-76f92b201ebc', NULL, 'LPC-8328 TSC', 'PCS', NULL, '18001', 'no_image.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 610500),
('82195299-1fbe-4060-9ba0-7a707300efdb', NULL, 'LH - 808', 'SET', NULL, '17001', 'no_image.png', '1400 x 415 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 431200),
('845d33ad-c47a-455b-836e-2c0b37782fc1', NULL, 'LA - 4033', 'SET', NULL, '16001', 'no_image.png', '800 X 400 X 1425', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 370700),
('890aec13-60ae-424b-9d8c-43dda7752413', NULL, 'LPC-8332 AP LB', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 621500),
('8ac4aae8-2750-48fe-b6c2-f506e0689908', NULL, 'LSG - 321', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 905', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 135300),
('8f8ee5b4-4a62-4ad0-b984-b646e84407c4', NULL, 'LPC - 8229 CLT', 'PCS', NULL, '18001', 'no_image.png', '800 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 436700),
('9334c110-2a6d-42dd-a656-1c87bbcc74d0', NULL, 'MRS - 8463', 'PCS', NULL, '15', 'no_image.png', '800 x 475 x 630', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 110000),
('9636a6a8-b948-4d2c-8f77-8f4963b17cf8', NULL, 'LPC - 8220 AP', 'SET', NULL, '18001', 'no_image.png', '805 x 450 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 450000),
('9d595153-7567-406f-8ebd-d98a6aca53c8', NULL, 'MRH - K11001', 'SET', NULL, '116', 'no_image.png', '800 x 400 x 990', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 369665),
('a2190cbb-28f2-44c4-9dbc-4f505ce3b5a3', NULL, 'BP - 120 FZ', 'SET', NULL, '124', 'no_image.png', '2208 x 1270 x 985', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 1160000),
('a4afcac5-aa29-4994-83cb-4b563dc60bf4', NULL, 'KCB - 910', 'SET', NULL, '15001', 'no_image.png', '770 X 770 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 369930),
('aa83315d-79f7-4587-b304-c415d5ced71c', NULL, 'SOFTAN 181 A1', 'PCS', NULL, '15', 'no_image.png', '730 x 620 x 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 379500),
('aaaa7839-4192-4138-875f-364255b83964', NULL, 'KCA - 9102', 'SET', NULL, '15001', 'no_image.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 423500),
('bb6c6963-e037-491e-8f74-2514ba2fe0bc', NULL, 'LMR - 034', 'SET', NULL, '20001', 'no_image.png', '800 x 300 x 1205', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 247500),
('bc303c1c-dd35-4850-bae4-babbb2d3645b', NULL, 'KCB - 920', 'SET', NULL, '15001', 'no_image.png', '790 x 465 x 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 414975),
('bc4534f9-0841-4b84-9e2a-6b7a6aeb984e', NULL, 'MRS - 8473', 'PCS', NULL, '15', 'no_image.png', '800 x 475 x 730', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 122375),
('bcd30b00-3e81-45e3-8abc-1af35d5efaf8', NULL, 'BCBC-163 SPGC', 'SET', NULL, '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'no_image.png', '650 x 450 x 1530', NULL, NULL, 35, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 430100),
('bcd9e58d-fb40-4576-b71a-8fef527636ea', NULL, 'KRS - 663', 'PCS', NULL, '15', 'no_image.png', '450 x 530 x 755', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 80000),
('bda79447-1646-488f-8736-34461a5ea3df', NULL, 'DTH - K8002', 'SET', NULL, '116', 'no_image.png', '806 x 425 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 747915),
('bdd66b68-e1d4-4209-ae63-f53d73c3da00', NULL, 'SCA - 5000 PK1', 'SET', NULL, '16', 'no_image.png', '450 X 430 X 1200', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 212300),
('be18bee7-c163-40ed-9308-8206d2a45c01', NULL, 'KCA - 922', 'UNIT', NULL, '15001', 'no_image.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 405900),
('c5fe01cb-ad35-4063-baaa-9d729ab36d60', NULL, 'KCA - 9133', 'SET', NULL, '15001', 'no_image.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 602800),
('cfb0b40e-77fb-456e-8527-fb09d650761e', NULL, 'LPMR-8227 LH', 'PCS', NULL, '18001', 'no_image.png', '1200 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 605000),
('d070a3dc-6d31-4673-9284-4e09e6bf43f3', NULL, 'KCB - 9110', 'SET', NULL, '15001', 'no_image.png', '770 X 770 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 374990),
('d0901dbe-eb52-4e6d-99b8-14a7ad828319', NULL, 'SB-K17001', 'SET', NULL, '123', 'no_image.png', '1320 X 2070 X 1050', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 1189150),
('d182dd34-36a1-4e31-8b6d-33dd118ea543', NULL, 'KCB - 930', 'SET', NULL, '15001', 'no_image.png', '1180 X 465 X 750', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 665500),
('d1d6e59d-5d63-4ffb-a983-4c4aee0bf309', NULL, 'MK - 280 MT', 'SET', NULL, '21001', 'no_image.png', '800 x 400 x 690', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 117700),
('d1dd8189-b3d0-41cc-93ff-673572e0d112', NULL, 'MRS - 7573', 'PCS', NULL, '15', 'no_image.png', '700 x 550 x 730', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 139975),
('d5fbf7bd-9465-4a37-b2a3-bdbf98ab69b8', NULL, 'BC - 1761', 'SET', NULL, '13001', 'no_image.png', '600 x 300 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 181500),
('d7c3aaa6-7404-4df9-9365-97b21251ed0f', NULL, 'KRS - 8R3 ARM', 'PCS', NULL, '15', 'no_image.png', '550 x 510 x 860', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 85800),
('dbd89684-bef8-41b0-8bc6-62bd5326516c', NULL, 'BCBC-163 HKBF', 'SET', NULL, '764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'no_image.png', '650 x 450 x 1530', NULL, NULL, 33, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 460075),
('de556f49-9fe6-4f29-b64c-d8cd168b74b4', NULL, 'MTB - 102', 'SET', NULL, '21001', 'no_image.png', '1200 x 600 x 725', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 205700),
('e0e79f5d-5f8c-46e5-9e38-4b5340c2ee7d', NULL, 'KCA - 902', 'SET', NULL, '15001', 'no_image.png', '790 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 344960),
('e0ed587c-6cd5-487f-945d-c8847a0ff88f', NULL, 'BC - 1760', 'SET', NULL, '13001', 'no_image.png', '605 x 400 x 1705', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 236500),
('e1cdbe92-8fb1-4e11-968b-344a5b0f1653', NULL, 'SD-K16001', 'SET', NULL, '123', 'no_image.png', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 879000),
('e71331a7-9b02-4f97-9493-df442fc97d51', NULL, 'KCA - 9122', 'SET', NULL, '15001', 'no_image.png', '790 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 421300),
('e78cc1ac-3ec2-4f4e-a703-1a25e4d525ef', NULL, 'MRS - 7546', 'PCS', NULL, '15', 'no_image.png', '700 x 550 x 460', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 119900),
('ea3b1702-06a9-4464-ae05-b52c7020825c', NULL, 'KCA - 903', 'UNIT', NULL, '15001', 'no_image.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 564300),
('ee146b37-a8db-405b-b39f-bcb33af846aa', NULL, 'MTB - 201', 'SET', NULL, '21001', 'no_image.png', '1420 x 600 x 725', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 300300),
('f32cbbd8-55f7-4046-b88f-69833667dd0d', NULL, 'SDH - K9001', 'SET', NULL, '116', 'no_image.png', '969 x 510 x 1400', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 696149.65),
('f3d95a21-aeee-47dd-a155-d0635c70e750', NULL, 'ATR - 0309 B', 'SET', NULL, '12001', 'no_image.png', '1200 x 450 x 1300', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 410000),
('f5a2950a-1cbf-4099-9002-b2cd205cc092', NULL, 'MRS - 7546 RAK', 'PCS', NULL, '15', 'no_image.png', '700 x 550 x 460', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 149875),
('f5d9f6a5-5a25-4ea9-b985-d4dbe2a5fa32', NULL, 'KCA - 9112', 'set', NULL, '15001', 'no_image.png', '790 x 315 x 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 424600),
('f778a050-950e-4bc4-8d4b-5ff583db94e6', NULL, 'ATR - 0301', 'SET', NULL, '12001', 'no_image.png', '610 x 359 x 630', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 176000),
('f799b224-b35b-498f-a46c-a8275181e0b2', NULL, 'RB - 03 S', 'SET', NULL, '20001', 'no_image.png', '400 x 300 x 890', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 99000),
('f9ddca79-b03f-4794-be08-d044b8b4f51a', NULL, 'LPC-8232 AP LJ', 'PCS', NULL, '18001', 'no_image.png', '800 x 440 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 467500),
('fa23c6a0-4597-4dca-9333-2c0431a62e42', NULL, 'KCA - 9101', 'SET', NULL, '15001', 'no_image.png', '770 X 770 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 504900),
('fa8f9734-972f-4db3-bac9-f45d0c6afa17', NULL, 'LPC-8328 CLT', 'PCS', NULL, '18001', 'no_image.png', '1200 x 415 x 1800', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 610500),
('fbe1aa60-4f9e-4d9e-80ca-76e52f856146', NULL, 'MBS - 315', 'SET', NULL, '23001', 'no_image.png', '1175 x 495 x 1210', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 299200),
('fdc2ff6e-3be3-43b2-839e-2f0df2320215', NULL, 'MBB - 3033', 'SET', NULL, '23001', 'no_image.png', '1165 X 510 X 1500', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 393800),
('fef6c3e8-c6b6-4d8e-a3d9-831d541a44ac', NULL, 'KG - 721 HR', 'PCS', NULL, '15', 'no_image.png', '1040 x 830 x 985', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 577500),
('ff019a47-5573-497a-a590-b147db0d5f64', NULL, 'KCA - 9103', 'SET', NULL, '15001', 'no_image.png', '1180 X 315 X 700', NULL, NULL, NULL, 1, 0, NULL, NULL, '43998776-7b1f-4573-b319-39915f93f96e', 586300);

-- --------------------------------------------------------

--
-- Table structure for table `m_distributor`
--

CREATE TABLE `m_distributor` (
  `id_distributor` varchar(36) NOT NULL,
  `nama_distributor` varchar(512) NOT NULL,
  `alamat` text,
  `email` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_distributor`
--

INSERT INTO `m_distributor` (`id_distributor`, `nama_distributor`, `alamat`, `email`, `aktif`) VALUES
('1', 'PADANG', '<p><span style=\"color:#000000\">Jl. By Pass Km.9<br />\nKelurahan Pampangan<br />\nTelp : 0751-61253, 62483 <br />\nCP: Stevanus Kwan</span></p>', NULL, 1),
('2', 'JAMBI', '<p><span style=\"color:#000000\">Jl. Lingkar Timur I No. 51 Rt. 36 Kel. Talang Bakung<br />\r\nKec. Jambi Selatan - Jambi<br />\r\nTelp : 0741-571117<br />\r\nCP1 : U S D I&nbsp;&nbsp; (0852 6648 6548)</span></p>\r\n', NULL, 1),
('3', 'KEDIRI', '<p><span style=\"color:#000000\">JLl Sudiro Arah Sidorejo<br />\nDs. Gayam Timur Kec. Gurah Kab. Kediri<br />\nCP1 : Masruri (0354-4520788)<br />\nCP2 : Aris Setiawan (0354-4520789)<br />\nCP3 : Faridah (0354-4520744)</span></p>', NULL, 1),
('4', 'JAYAPURA', '<p><span style=\"color:#000000\">Jl. Baru Entrop<br />\n(Samping Gudang Bir Bintang)<br />\nTelp : (0967) 536998</span></p>\n', NULL, 1),
('5', 'KENDARI', '<p><span style=\"color:#000000\">Jl. Chairil Anwar No. 77<br />\r\nPertigaan Menuju TPA Landipo - Puwatu<br />\r\nKendari 93114<br />\r\nCP : Adi Gunananda (0813 4202 6261)</span></p>\r\n', NULL, 1),
('7', 'LOMBOK', '<p><span style=\"color:#000000\">Jl.Tgh.Saleh Hambali No.335<br />\nBengkel - Labuapi - Mataram - NTB<br />\nTelp : 0370 - 637202, 0370 - 637237<br />\nCP : Suwardi, Lale Tirte Heny</span></span></p>\n', NULL, 1),
('8', 'CILODONG', '<p><span >Jl. Raya Jakarta – Bogor Km. 39 Pabuaran Cibinong No. 33<br>\nCilodong Cibinong Kabupaten Bogor.<br>\nTelp : (021) 8671467<br>\nFax. : (021) 8752837<br>\nCP : Daden Sudjana (081210151485 )</span></p>', NULL, 1),
('11', 'BANJARMASIN', '<p><span style=\"color:#000000\">Jl. A. Yani KM 27, 4 Landasan Ulin Banjarbaru.<br />\n( Samping Panti Sosial Budi Mulia Banjarmasin )<br />\nTelp : ( 0511 ) 4705340 atau 4705341<br />\nCP : Norhayati ( Aya ) - 08125059396</span><p>', NULL, 1),
('12', 'TANGERANG (Bengseng)', '<p><span style=\"color:#000000\">Jl. Warung Gantung Kompleks Bengseng No. 10<br />\r\nKalideres &ndash; Jakarta Barat<br />\r\nTLP : 021-5458174, 5458175, 5446764<br />\r\nFAX : 021-6198109</span></p>\r\n', NULL, 1),
('13', 'SURABAYA', '<p><span style=\"color:#000000\">JL. Margomulyo Sentong Asri 3 D Buntaran<br />\r\nCP : Khotimah, Nur Latifah (Ifah), Theresia Monica (Teta)<br />\r\nTELP : (031) 7494202, 7491447, 7491800<br />\r\nFAX : (031) 7494202, (031) 7484754</span></p>\r\n', NULL, 1),
('14', 'SUKABUMI', '<p><span style=\"color:#000000\">Jl. Pelabuhan 2. Km 5<br />\nRT 01 / RW 08 Kel. Cipanengah<br />\nKec. Lembursitu<br />\nTelp : (0266) 210391 / (0266) 210392<br />\nCP : Yenni (081314477499)</span></p>', NULL, 1),
('15', 'CIREBON', '<p><span>Jl. Jendral Sudirman No.258 Penggung<br>\nTelp : (0231)-487100, 483556, 2311448<br>\nCP1 : Kusyanto (081320721918)<br>\nCP2 : A.Aisyah (082128440705)</span></p>', NULL, 1),
('16', 'CIBENING', '<p><span style=\"color:#000000\">Kawasan MGM (Depan RS Efarina Etaham) Kp cilame RT 13 RW 5.<br />\nDs. Cibening, Kec. Bungursari Kab. Purwakarta.<br />\nTelp : (0264) 8220891/892<br />\nCP : Sugeng Rianto (081380716818)</span></p>\n', NULL, 1),
('17', 'BANDUNG', '<p><span style=\"color:#000000\">Jl. Sumber Asih No. 86 Rt. 09 Rw 07 Sumber Sari</br>Kel. Warung Muncang Kec. Bandung Kidul<br />\nKota Bandung<br />\nTelp : (022) 6015152<br />\nFax. : (022) 6032459<br />\nCP : Jessica (0828-190-31438)</span></p>\n', NULL, 1),
('18', 'KUPANG', '<p><span style=\"color:#000000\">Jl. Yos Sudarso - Osmok Tenau - Kupang Barat, NTT<br />\nTelp : (0380) 890635, 890104<br />\nFax. : (0380) 890146, 0380-890145<br />\nCP : Rosmiyati, Elisabet A Labu</span></p>', NULL, 1),
('19', 'SERANG', '<p><span style=\"color:#000000\">Kp. Rancasawah komplek BSD RT 01/RW 12<br />\r\nKel. Drangong, Kec. Taktakan.<br />\r\n0254 - 229422 / 229447<br />\r\n0254 - 229410<br />\r\nCP : Saliman (0878 8186 3968)</span></p>\r\n', NULL, 1),
('20', 'BALI', '<p><span>Jl. Cokroaminoto No.468 Denpasar<br>\nTelp : (0361) 422373/423014/422389<br>\nFax  : (0361) 412396/412397</span></p>', NULL, 1),
('21', 'JAKARTA', '<p><span style=\"color:#000000\">Jl. Raya Pabuaran No.16 RT.01/02 No.88,<br />\nKp. Pabuaran Jati Rangon-Jati Sampurna, Bekasi<br />\nKode Pos : 17432<br />\nTelp : (021) 92599645 / (021) 84307843<br />\nFax. : (021) 84307833<br />\nCP : Aminah (081314385717, 081311071223)</span></p>\n', NULL, 1),
('22', 'MALANG', '<p><span >Jl. Yos Sudarso No. 32-A, Bedali-Lawang<br>\nMalang 65215<br>\nTelp : (0341) 422993 / 427660<br>\nFax : (0341) 422216<br>\nEmail : nap_mkt@yahoo.co.id<br>\nCP : Deva / Intan</span></p>', NULL, 1),
('23', 'PURWOKERTO', '<p><span >Jl. Veteran No.234 Pasir Muncang<br>\nTelp : 0281-623885, 641521<br>\nFax. : 0281-636557<br>Email : bsf_pwt@yahoo.co.id<br>\nCP1 : Diah Tiur (085726734600)<br>\nCP2 : M. Riza Harriwijaya (081327666212)</span></p>', NULL, 1),
('24', 'CILACAP', '<p><span style=\"color:#000000\">Jl. Soekarno-Hatta No.115 Karangkandri<br />\nTelp : (0282) 5073135<br />\nFax. : (0282) 5073135<br />\nEmail : bsfdepo_cilacap@yahoo.com<br />\nCP1 : Yuli Astuti (081327379656)<br />\nCP2 : Ferry Himawan (08122941661)<br />\nCP3 : Supriyatno (081327544291)</span></p>\n', NULL, 1),
('25', 'WONOSOBO', '<p><span style=\"color:#000000\">Jl. Banyumas KM.5 Kalierang-Selomerto<br />\nTelp/Fax : (0286) 3320117<br />\nEmail : bsfdepo_wonosobo@yahoo.co.id<br />\nCP1 : Yuni (085726282188)<br />\nCP2 : Agus Kurnawan (085842544339)<br />\nCP3 : Arif Maulana (081312121091)</span><p>', NULL, 1),
('26', 'PONTIANAK', '<p><span >Jl. Raya Wajok Hilir, KM 12,6 RT02/03 Desa Wajok Hilir Kec.  Siantan Kab. Pontianak, Kalimantan Barat 78351<br>\nTelp : (0561)-882526/882528<br>\nFax : (0561)-882527<br>Email : dle_wajok@yahoo.co.id<br>\nCP1 : Juniaty (089693212656)<br>\nCP2 : Herman Gunawan (08125703389)</span></p>', NULL, 1),
('27', 'SEMARANG', '<p><span style=\"color:#000000\">Kawasan Industri Terboyo Blok H No. 1<br />\r\nJl. Raya Kaligawe KM.5-6 Semarang 50118<br />\r\nTelp : (024) 70446856, Fax : (024) 6581517<br />\r\nCP1 : Bambang Sugiyarto (081325526074)<br />\r\nCP2 : Rio Destiawan (081575581300)</span></p>\r\n', NULL, 1),
('28', 'SOLO', '<p><span style=\"color:#000000\">Lama : Jl. Sidoluhur No.98 Waringinrejo, Cemani, Sukoharjo<br />\r\nBaru : Beluk Kidul Sroyo Karanganyar<br />\r\nTelp : (0271)-643220/9127026, 0271-9127026 (Baru)<br />\r\nFax : (0271)-0271-643220<br />\r\nCP1 : Indri Hapsari (085728997738)<br />\r\nCP2 : Amin Nurdin (085647866999)</span></p>\r\n', NULL, 1),
('29', 'MAKASAR', '<p><span style=\"color:#000000\">Jl. Ir. Sutami ( Toll ) No. 8, Makassar 90244<br />\r\nCP : Benny Lay (0411-512273)</span></p>\r\n', NULL, 1),
('30', 'PULAU PUNJUNG', '<p><span >Jl. Lintas Sumatera Km 4<br>\nKec. Pulau Punjung<br>\nKab. Dharmasraya<br>\nSumatera barat<br>Telp : 082383816282<br>Fax : (0754) 40878</span></p>', NULL, 1),
('31', 'MUARA BUNGO', '<p><span style=\"color:#000000\">JL. Lintas Sumatra Arah Jambi (Pattimura) No.08<br />\nRT.03/02 Kel. Manggis-Kec Bathin III<br />\nTelp : (0747) 22012, 21522<br />\nFax : (0747) 22198<br />\nCP1 : Andi (085214841983)<br />\nCP2 : Dian (085266009677)<br />\nCP3 : Eka (089686012511)</span></p>\n', NULL, 1),
('32', 'BEKASI', '<p><span style=\"color:#000000\">Jl. Akasia I Blok AE No.30 Kawasan Industri<br />\nDelta Silicone 1 Lippo Cikarang Bekasi 17550<br />\nTelp : (021) - 8973272/8973417<br />\nFax. : (021) - 8973416<br />\nEmail : napolly_cmk@yahoo.com<br />\nCP 1 : Novi Fauzi Puspasari (085778484283)<br />\nCP 2 : Janiel J. Tumbelaka (02194371881)<br />\nCP 3 : Purwanto (02199546844)</span></p>\n', NULL, 1),
('33', 'LUBUK LINGGAU', '<p><span style=\"color:#000000\">Jl. Lintas Sumatra RT.02 No.08 Kel. Belalau<br />\nKec. Lubuk Linggau Utara I<br />\nTelp : (0733) 326369/0733-7025397/0821-75058688<br />\nFax. : (0733) 326362<br />\nCP1 : Sri Anita (0853 66558153)<br />\nCP2 : Titus (0852 73389635)<br />\nCP3 : Liza (0812 73835599)</span></p>\n', NULL, 1),
('34', 'BUKIT TINGGI', '<p><span style=\"color:#000000\">Komplek Pergudangan Jasa Mulya<br />\nJl. Raya by pass Bukit Tinggi - Medan KM.5<br />\nCP : Andre (085274496733)</span></p>\n', NULL, 1),
('35', 'PEMATANG SIANTAR', '<p><span >Jln. Hok salamuddin No. 88<br>\nSiantar state Kab. Simalungur</span><br>\n<span >Telp / Fax : (0622) 7551412</span><br>\n<span >CP : Imei (083196426888)</span></p>', NULL, 1),
('36', 'PANGKAL PINANG (BANGKA)', '<p><span >Jl. Pasir Kepatang no. 02<br>\nPangkal Pinang kep. Bangka - Belitung<br>\nTelp : 0717 - 435396 / Fax : 0717 - 435396<br>\nCP wilayah Bangka : Ida (085267731129 , 081995353579)<br>\nCP wilayah Belitung : Sania (081949528825 , 082373505125)</span></p>', NULL, 1),
('37', 'SAMARINDA', '<p><span style=\"color:#000000\">JL. Sultan Sulaiman NO.09 RT.19<br />\nKel. Sambutan Kec. Sambutan<br />\nTelp : 081253094288, 085234963888<br />\nFax. :(0541) 220528<br />\nmail : fyd_krp_smd@yahoo.com<br />\nCP1. Mardiani (081253768708)<br />\nCP2. Leo Palembangan (081346338260)</span></p>\n', NULL, 1),
('38', 'BATURAJA', '<p><span style=\"color:#000000\">Jl. Garuda Lintas Sumatera<br />\nArea pergudangan Sumatera Baturaja Timur<br />\nTelp : (0735) 7328740<br />\nCP 1 : Yudhi (081278981168)<br />\nCP 2 : Satriyah (087713796000)</span></p>\n', NULL, 1),
('39', 'JOGJAKARTA', '<p><span style=\"color:#000000\">Jl.Cangkringan Km.4 Dsn Babadan Rt/Rw 006/002 <br />\nPurwomartani Kalasan Sleman<br />\nTelp : (0274) 4469282<br />\nFax. : (0274) 4469285<br />\nCP : Ernawati (Sales Counter)</span></p>', NULL, 1),
('40', 'BALIKPAPAN', '<p><span>Jl. Mulawarman RT. 23 No.18/20<br>\nKelurahan Manggar - Batakan<br>\nBalikpapan  76116<br>\nTelp : (0542) 770720, 761948, 743513<br>\nFax. : (0542) 761947, 770343<br>\nCP : 081349085433</span></p>', NULL, 1),
('41', 'MANADO', '<p><span style=\"color:#000000\">Jl. Manado Bitung Km 10 Watutumou<br />\nMinut Sulut<br />\nTelp : (0431) 813585<br />\nFax. : (0431) 813545<br />\nCP 1 : Isye Mahaling (082393544800 / 082393544900)<br />\nCP 2 : Raden Salehe (08124477140)<br />\nCP 3 : Tonny Hongjoyo (081356945589)</span></p>', NULL, 1),
('42', 'TASIKMALAYA', '<p><span style=\"color:#000000\">Jl. Raya Ciawi Km.8 RT/RW 19/05< br/>\nJatihurip, Cisayong Kab.Tasikmalaya<br />\nEmail : Rbnm.tasik@yahoo.co.id<br />\nCP1 : Beben (085223755527)<br />\nCP2 : Lupi (0265 320381)</span></div>\n', NULL, 1),
('43', 'BOGOR', '<p><span style=\"color:#000000\">Jl. Baru kemang km 5 no .28 Bogor<br />\nTelp : (0251) 7533613 / 7533615 (Kamel)<br />\nEmail : </span><a href=\"mailto:cabangbogor@yahoo.co.id\" id=\"yui_3_13_0_ym1_1_1395388202380_13347\" rel=\"nofollow\" target=\"_blank\">cabangbogor@yahoo.co.id</a><br />\nCP : Suhendi (087877621471)</span></p>\n', NULL, 1),
('44', 'PALU', '<p><span style=\"color:#000000\">Jl. raya kayumalue No 131 A<br />\nKel. kayumalue ngapa, SUL-TENG<br />\nTelp : (0451) 492710 / 492711(Marketing)<br />\nCP : 082291635005 (Marketing)</span></p>\n', NULL, 1),
('45', 'MEDAN ', '<p><span style=\"color:#000000\">Jl. Eka Surya Gg. sidodadi No.37<br />\nKel. Seli Tua - 20114<br />\nTelp : (061) 7031111/0323<br />\nCP : Fendi (085261173777</span></p>\n', NULL, 1),
('46', 'PEKANBARU', '<p><span >Jl. Soekarno Hatta no. 08 Rt.02/03<br>\nKel. Labuh baru Kec. payung sekaki<br>\nPekanbaru 28291 - Riau<br>\nTelp : 0761-61823/61824<br>\nCP 1 : Andy (0811765966)<br>\nCP 2 : Kelvin (08127600582)<br>\nCP 3 : Dewi (08126859788)</span></p>', NULL, 1),
('47', 'BANDUNG (Sapan)', '<p><span style=\"color:#000000\">Jl. Raya Sapan No. 45 B Rt. 05/01<br />\nDesa Tegalluar Kec. Bojongsoang<br />\nKab. Bandung - 40297<br />\nTelp : (022) 88881798 / 97 / 99<br />\nFax. : (022) 88881784</span></p>\n', NULL, 1),
('48', 'SORONG', '<p><span style=\"color:#000000\">Jl. Basuki Rahmat KM 8.5<br />\r\nPLTD Klaseman (Gudang CV Teguh) Sorong<br />\r\nTlp&nbsp; : 0951 - 333998<br />\r\nFax : 0951 - 323997</span></p>\r\n', NULL, 1),
('49', 'MANOKWARI', '<p><span style=\"color:#000000\">Jl. Trikora - Sowi 2 Awini Teberi Lestari<br />\n(Samping Galaxy) Manokwari - Papua Barat<br />\nTelp : (0967) 536998<br />\nFax. : (0967) 536997</span></p>\n', NULL, 1),
('50', 'JEMBER', '<p><span style=\"color:#000000\">Jl. Teuku Umar Np. 55<br />\nTegal Besar - Jember<br />\nTelp : (0331) 325222 / 325851<br />\nFax. : (0331) 325222</span><br /></p>\n', NULL, 1),
('51', 'LAMPUNG', '<p><span style=\"color:#000000\">Jl. Ir. Sutami KM.18 Ds. Sukanegara<br />\nTj. Bintang, Sribawono - Lampung 35361<br />\n( PO BOX 1168 / BDL 35011)<br />\nTelp : (0721) 350212 / 3 / 4 / 8017169<br />\nFax. : (0721) 350519</span></span></p>\n', NULL, 1),
('52', 'BENGKULU', '<p><span style=\"color:#000000\">Jl. Depati Payung Negara No. 50<br />\nRt. 19 / 04 Kel. Pagar Dewa Kec. Selebar<br />\nBengkulu - 38211<br />\nTelp : (0735) 53540<br />\nFax. : (0736) 53425</span></p>\n', NULL, 1),
('53', 'TEGAL ', '<p><span style=\"color:#000000\">Jl. Jalak Barat No. 41<br />\nTegal Belakang Pasific Mall<br />\nTelp : (0283) 352130</span></p>\n', NULL, 1),
('54', 'TANGERANG (Cipondoh)', '<p><span >Jl. KH Hasyim Ashari 21 (Cipondoh Raya)<br>\nTanah Tinggi, Tangerang<br>\nTLP : 021 - 55703202<br>\nFAX : 021 - 5521551</span></p>', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `id_kategori` varchar(36) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `lisensi` varchar(255) DEFAULT NULL,
  `id_lisensi` varchar(36) DEFAULT NULL,
  `id_merek` varchar(36) NOT NULL,
  `posisi` int(11) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`id_kategori`, `nama_kategori`, `keterangan`, `lisensi`, `id_lisensi`, `id_merek`, `posisi`, `aktif`) VALUES
('116', 'Hello Kitty', NULL, 'NC', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('117', 'Ben 10', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 0),
('118', 'Sponge Bob', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 0),
('119', 'Batman', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('120', 'Superman', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('12001', 'Audio TV Rack', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('121', 'Princess', NULL, 'NC', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('123', 'Spiderman', NULL, 'NC', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('124', 'Frozen', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('12637502-e5c6-42b2-bb06-45577bbcabe0', 'Houseware CL', 'Houseware Character License', 'CL', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', NULL, 1),
('13001', 'Book Cabinet', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('14', 'BCBC NC', 'BCBC Non Character', 'NC', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', 1, 0),
('14002', 'Charmmy Kitty', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('15', 'Meja & Kursi NC', 'Meja & Kursi Non Character', 'NC', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', 3, 1),
('15001', 'Kitchen Set', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('15002', 'Keroppi', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('16', 'Stockcase & Nacase NC', 'Stockcase & Nacase Non Character', 'NC', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', 5, 1),
('16001', 'Kids Wardrobe', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('1685cd4d-e98b-489a-8cfa-5e39a9de8c07', 'Moto GP', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('16af295b-9d68-4bd0-865c-cf04698db6a2', 'Captain America', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('17001', 'Ornamental Wardrobe', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('17002', 'Sofia The First', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('18001', 'Wardrobe', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('19001', 'Shoes Wardrobe', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('2', 'Regular Series', '-', 'NC', NULL, 'f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 2, 1),
('20', 'Houseware NC', 'Houseware Non Character', 'NC', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', 6, 1),
('20001', 'Versatile Cabinet', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('21001', 'Office', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('21002', 'Angel Cat Sugar', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('22001', 'Dressing Table', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('23001', 'Study Desk', NULL, 'NC', NULL, '3f1c5000-cd57-4755-af94-b0255b1291d3', NULL, 1),
('26002', 'Barbie', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('3', 'Kids Series', '-', 'CL', NULL, 'f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 6, 1),
('31002', 'Hot Wheels', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('32002', 'Frozen', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('5', 'Bed Car series', '-', 'CL', NULL, 'f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 7, 1),
('5ae2a563-46dc-4ae8-978b-500db45cdee1', 'Barbie', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('6', 'Teenagers Series', '-', 'CL', NULL, 'f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 8, 1),
('6e2410d9-b45b-43d5-9500-ec414d5f3d01', 'Tsum-tsum', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('7', 'Hotel and Wedding Bed Series', '-', 'NC', NULL, 'f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 3, 1),
('764e9786-f27c-4f1c-93dc-bedbf7e4c571', 'BCBC CL', 'BCBC Character License', 'CL', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', NULL, 1),
('78f09f46-f026-4580-9b72-d8f0bb5a4644', 'Spiderman', '', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('896c9ca4-1466-47f0-bc6b-bf3b0b507cd6', 'Meja & Kursi CL', 'Meja & Kursi Character License', 'CL', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', NULL, 1),
('a4d0df09-ccf8-40c9-8cd4-3a5cf3ba26a3', 'Princess', 'Princess', 'CL', NULL, 'b54f427e-07cb-42fa-9134-7b5bb1d6aebc', NULL, 1),
('aa1e5fce-9453-4f90-a7ec-404c90d302f2', 'Cinderella', '', 'CL', NULL, '7da621b5-131e-4e77-84f7-e359ec4bf260', NULL, 1),
('e37fb8a6-10db-47cc-8b53-d885142cd7a8', 'Stockcase & Nacase CL', 'Stockcase & Nacase Character License', 'CL', NULL, '5fb80e62-4c66-11e5-ad87-902b34d4622b', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_lisensi`
--

CREATE TABLE `m_lisensi` (
  `id_lisensi` varchar(36) NOT NULL,
  `nama_lisensi` varchar(255) NOT NULL,
  `perusahaan` varchar(255) DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_lisensi`
--

INSERT INTO `m_lisensi` (`id_lisensi`, `nama_lisensi`, `perusahaan`, `aktif`) VALUES
('51924949-6011-11e5-9379-902b34d4622b', 'NON LICENSE', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_merek`
--

CREATE TABLE `m_merek` (
  `id_merek` varchar(36) NOT NULL,
  `nama_merek` varchar(255) NOT NULL,
  `deskripsi` mediumtext,
  `logo` varchar(255) DEFAULT NULL,
  `posisi` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_merek`
--

INSERT INTO `m_merek` (`id_merek`, `nama_merek`, `deskripsi`, `logo`, `posisi`, `aktif`) VALUES
('3f1c5000-cd57-4755-af94-b0255b1291d3', 'Big Panel', 'PANEL FURNITURE', 'Big Panel.png', 5, 1),
('5fb80e62-4c66-11e5-ad87-902b34d4622b', 'Napolly', 'PLASTIK', 'Napolly.png', 2, 1),
('7da621b5-131e-4e77-84f7-e359ec4bf260', 'Kea Panel', 'PANEL FURNITURE', 'Kea Panel.png', 3, 1),
('b54f427e-07cb-42fa-9134-7b5bb1d6aebc', 'A Panel', 'PANEL FURNITURE', 'A Panel.png', 4, 1),
('f0e15f93-ac53-4f6d-9c85-b441b1be9ba0', 'Bigland', 'SPRINGBED', 'Bigland.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_setting`
--

CREATE TABLE `m_setting` (
  `id_setting` varchar(36) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_transaksi`
--

CREATE TABLE `m_transaksi` (
  `id_transaksi` varchar(36) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `nama_transaksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_transaksi`
--

INSERT INTO `m_transaksi` (`id_transaksi`, `kode_transaksi`, `nama_transaksi`) VALUES
('69b79415-55f9-11e5-a609-902b34d4622b', 'MEREK', 'MASTER MEREK'),
('7fe78ddb-55f9-11e5-a609-902b34d4622b', 'KATEGORI', 'MASTER KATEGORI'),
('87b8373c-578b-11e5-a643-902b34d4622b', 'ROLE', 'MASTER ROLE'),
('967487c9-578b-11e5-a643-902b34d4622b', 'TRANSAKSI', 'MASTER TRANSAKSI'),
('9ad1822c-55f9-11e5-a609-902b34d4622b', 'BARANG', 'MASTER BARANG'),
('a1b038a9-5773-11e5-a643-902b34d4622b', 'HAK_AKSES', 'HAK AKSES'),
('a85f6b41-55f9-11e5-a609-902b34d4622b', 'BARANG_UNIT', 'MASTER BARANG UNIT'),
('ab340ec3-5c53-11e5-a774-002590adcb83', 'DISTRIBUTOR', 'SALES & DISTRIBUTOR'),
('beab369c-55f9-11e5-a609-902b34d4622b', 'AREA', 'MASTER AREA'),
('c8638758-55f9-11e5-a609-902b34d4622b', 'UNIT', 'MASTER UNIT'),
('d1e55ed8-55f9-11e5-a609-902b34d4622b', 'USER', 'MASTER USER'),
('ecdb1682-60ee-11e5-9895-902b34d4622b', 'SETTING', 'MASTER SETTING');

-- --------------------------------------------------------

--
-- Table structure for table `m_unit`
--

CREATE TABLE `m_unit` (
  `id_unit` varchar(36) NOT NULL,
  `nama_unit` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `id_area` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_unit`
--

INSERT INTO `m_unit` (`id_unit`, `nama_unit`, `alamat`, `id_area`) VALUES
('00e97090-a4a6-4093-8dfd-d6bf9039d031', 'MANADO', 'Jl.Raya Manado-Bitung KM.10 No.47 Watutumou Kec.Kalawat,Minahasa – Sulut PO. BOX 1275 MANADO ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('02d53bf9-93a2-461f-aa7c-7640efbc158a', 'DEPO CILACAP', NULL, '23eco11a-5839-11ea-8ab7-68f72844f250'),
('04d7b67a-e04b-46b9-8fcb-fb5b4be1c1dc', 'JAMBI', 'Jl. Fatahillah No. 07 RT 19/06 Kelurahan Talang Bakung, Tanjung Lumut  Jambi Selatan                   ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('137f8c78-88ee-408e-bbbb-204e8cb82558', 'CIREBON', 'JL. DI CIREBON', '3c35c7bc-84a5-4088-81d0-e07c109f84ea'),
('17054659-52d1-4e8a-ac27-eaecd6763191', 'AA UNIT 022', 'Jalan AA No 55', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('17de0898-8b3e-4815-964e-29595bfe2c79', 'BALIKPAPAN', 'Jl. Mulawarman RT. 23/RW. 007 No. 18 Kel. Manggar, Balikpapan Timur – 76116 Kalimantan Timur  ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('1907b86d-db5e-4983-a9b0-95c60e3ec64d', 'BEKASI', 'Jl. Akasia I Blok A-E No.30 Kawasan Industri Delta Silikone Lippo Cikarang BEKASI – 17550       ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('1a0f1b95-826f-403b-a200-9af6412f3919', 'BALI', 'Jl. Cokroaminoto KM 6 No. 468  Denpasar, BALI – 80116', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('1c49c369-62fe-4b19-89f9-214abae42698', 'MALANG', 'Jl. Yos Sudarso No.32 Komplek Bedali Agung RT.12/RW.11 – Lawang Malang      ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('1dd175d6-81e6-46fa-8d5b-7f131e4b29d1', 'LUBUK LINGGAU', 'Jl. Lintas Sumatera RT.002 NO.008 Kel.Belalau I Kec. Lubuk Linggau Utara I LUBUK LINGGAU        ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('2f84d300-9ca5-4b10-a97d-b477267e3a16', 'DEPO JAKARTA', 'Jln. Raya Kranggan No.88 Kel/Kec.Jati Sempurna Kab.Bekasi                        ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('2fbc4661-7f71-41b2-af50-e59ccb76da5b', 'JEMBER', 'Jl. Teuku Umar 55 Tegal Besar JEMBER          ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('30e28a5c-3696-445e-8144-8cb6887c90c4', 'UNIT BANDUNG', 'Jl. Raya Sapan No.45 B RT.05/01 Desa Tegal Luar Kec.Bojongsoang Kab. Bandung 40297                       ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('312c5ff5-f9fe-4a2b-85fc-d8b7ec3cf13c', 'TASIKMALAYA', 'Jl.Raya Ciawi KM 8  RT.19 RW.05 Cidadap Desa Jatiurip Kec.Cisayong Kab.Tasikmalaya       ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('373af58a-0cc0-4f5e-b5e4-43c857967f50', 'CBG', 'KAWASAN INDUSTRI SENTUL', '1150dbf1-4a07-11e5-ae0f-902b34d4622b'),
('3f01e51f-51c7-46bf-bf5d-9a64be9a0c6a', 'MEDAN', 'JL. Eka Surya Gg.Sidodadi No.37 kel.Deli Tua – 20114 MEDAN                                                                         ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('3f04d44b-7cfa-483f-a343-32d9e329d3af', 'SAMARINDA', 'Jl. PM.NooR Perum Pondok Surya Indah Blok CK No.3 RT.42 SAMARINDA – 75119  ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('43998776-7b1f-4573-b319-39915f93f96e', 'CBK', 'Sentul Bogor', '1150dbf1-4a07-11e5-ae0f-902b34d4622b'),
('453fd92a-86fd-4a5f-9344-2009830e6dec', 'PANGKAL PINANG', 'Jl. Pasir Ketapang No.03 Pangkal Pinang - Bangka Belitung                                                                ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('4856a6bb-b2c8-46ef-8cce-6a35d42f245c', 'SAMPIT', 'Jl. HM.Arsyad No.100 A Kel.MB Ketapang Sampit, Kota Waringin Timur Kalimantan Tengah   ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('4959cbdc-b177-43da-9981-d309469b0438', 'SORONG', 'Jl.Basuki Rahmat KM.8,5 PLTD KLASEMAN (GUDANG CV TEGUH) SORONG,PAPUA BARAT  ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('4bceca56-8d07-470b-b475-531a559b4bc9', 'DEPO KERINCI', NULL, '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('571a86a1-da0f-4242-a61e-b837bcf4817c', 'BUKIT TINGGI', 'Jln. Raya Bukittinggi – Medan Km.5 Depan Tugu AVRO ANSON                                                        ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('58afc50c-c15d-486b-839c-1e435d233d70', 'CAB. TEGAL', NULL, '23eco11a-5839-11ea-8ab7-68f72844f250'),
('6397e60c-030c-46c2-b276-d8e1eba7c1dc', 'JAYAPURA', 'Jl. Baru Kelapa Dua Entrop (Samping Gudang Laris Jaya) JAYAPURA – Papua – 99224 ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('647f3146-b196-4132-a5e2-05bdc6b52e32', 'MUARABUNGO', 'Jl. Lintas Sumatera Arah Jambi KM.04 No.8 RT.03/02 Kel.Manggis Kec.Bathin III MUARA BUNGO  ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('6e5f4425-dadc-4298-83ec-bf20c9091510', 'CABANG BANDUNG', 'Jl. Sumber Asih No.86 Rt 09/Rw 07 Sumber Sari Kel.Warung Muncang Kec.Bandung Kidul Kota Bandung ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('745f965c-8f39-4609-bd17-724f1c643d41', 'KENDARI', 'Jl.Chairil Anwar No.77 Pertigaan ke TPA Ladipo Puwatu – KENDARI                                                             ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('77f03a32-2f7a-491a-bb81-3d19a69353bc', 'PADANG', 'CAMI Building, Jl. Raya By Pass KM 9 RT04/VI Kel Pampangan PADANG – 25227                             ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('7c3e5b4c-9b4c-438e-8b9f-9978d48a57b8', 'PURWOKERTO', 'Jl. Veteran, Desa Pangebatan RT 03 RW 07 Kec.Karanglewas Purwokerto                                           ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('7dce64f1-21f1-46da-8ec2-990355cd0f97', 'UJUNG PANDANG', 'Jl. Ir. Sutami ( Tol ) No. 8 Kel. Parangloe Kec. Bringkanaya UJUNG PANDANG – 90244   ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('80d51823-4a07-11e5-ae0f-902b34d4622b', 'UNIT BEKASI', 'jalan BEKASI', '1150dbf1-4a07-11e5-ae0f-902b34d4622b'),
('92191b4c-4287-47b0-9841-a692d0d1a8ee', 'DEPO CIBENING', 'Kp.Cilame Rt,13/05 Cibening, Bungursari Purwakarta – Jawa Barat                           ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('9b9d655f-f782-4447-b0e2-7d0c0cbd03a7', 'YOGYAKARTA', 'Jl. Cangkringan Km 4 Dsn.Babadan Rt.06 Rw.02 Desa Purwomartani Kec.Kalasan – Sleman Yogyakarta ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('9d29c45e-fce1-4beb-86d8-826c7006f186', 'CAB. RENGAT', 'Jl.Raya Pematang Rebah No.68 A-B Pematang Reba – Rengat                                                           ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('9ebf8aa4-1016-40d2-a599-dfce07239c80', 'PONTIANAK', 'Jl. Wajok Hilir KM 12.6 RT 02/03 Kec.Siantan  PONTIANAK – 78351                ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('a5470f0a-36b5-4601-81fa-f761e858e3ac', 'LAMPUNG', 'Jl. Ir. Sutami KM.18 Desa Sukanegara Tanjung Bintang Sribawono – LAMPUNG                                ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('a5e6f2a9-4225-4037-a55e-57931b012895', 'DEPO SIANTAR', 'Komplek Megaland Blok EE No. 3A Pematang Siantar', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('ab45f8ca-ea68-4b3b-9eb8-9fbbcb4ced8b', 'PEKANBARU', 'Jl. Soekarno Hatta No.08 RT.02/03 Kel.Labuh baru Kec.Payung Sekaki PEKANBARU – 28291                 ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('af14cb81-4bec-4444-b3f4-f0ef968908c4', 'SEMARANG', 'Terboyo Blok I No. 2 Industrial Park Jl. Kaligawe KM 5 - 6 SEMARANG        ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('af1e80f3-fd48-458f-b529-dcf28e016291', 'UNIT BENGKULU', 'Jl. Lintas Bengkulu - Manna RT 003 RW 002 Babatan Sukaraja Kab. Seluma Bengkulu', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('aff5afe1-891c-4d4a-bca8-a2b504c45290', 'PALEMBANG', 'Jl. Pangeran Ayin No. 147 RT. 13 Kel. Sako Palembang 30163 PALEMBANG                                         ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('b0848a72-2271-4f26-977a-f02c4fc69dfb', 'CAB. SUKABUMI', 'Jl.Pelabuhan II KM.5 RT.001 RW.008 Cipanengah Lembursitu Kota Sukabumi Barat', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('b6c60780-5bf1-4529-9704-79bc6d9a5224', 'BATURAJA', 'Pergudangan Sumatera, Jalam Garuda Lintas Sumatera (Depan Islamic Center Masjid Agung Baturaja) Baturaja Timur', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('bf19f802-6c5e-4e79-86ea-f2127138fd27', 'KUPANG', 'Jl. BUNG TOMO III No.14 Kota Baru, Kelapa Lima – KUPANG   ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('bf544060-583e-4998-a659-46149b2ae860', 'SOLO', 'Beluk Kidul Rt.004 Rw.008 Sroyo, Jaten Karanganyar    ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('c0f38dd2-8dc6-41c7-9a3f-5b44f4d07574', 'CAB. PULAU PUNJUNG', 'Jln/Lintas Sumatera Km.4 Pulau Punjung Kab.Dhamasraya – Sumatera Barat                                         ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('c7c558d3-eb50-4270-8c2a-3f803830cd67', 'PALU', 'Jl. TRANS PALU-PANTOLOAN RT.01/RW.04 Sulawesi Tengah – PALU    PO BOX 1017              ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('cf833044-e15d-4a51-bdf2-bdc47088ec3a', 'MANOKWARI', NULL, '55fix11a-5839-11ea-8ab7-68f72844f700'),
('d93d3fe9-7752-4f11-a3bd-7d7a954e388a', 'CHITOSE PALEMBANG', 'Jln. Pangeran Ayin No.146 A Sako Palembang 30114                                                                           ', '5feb711a-5839-11ea-8ab7-68f72844f2c2'),
('da151340-08c8-4ebe-b803-a8f309a1fe35', 'CABANG TANGERANG', 'Jl. KH Hasyim Ashari 21 ( Cipondoh Raya ) Tanah Tinggi TANGERANG              ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('ddaf6bb3-eb3a-4830-893d-a294c289ad47', 'SURABAYA', 'Jl. Margo Mulyo Gang Sentong No.3D SURABAYA                               ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('e751091f-9c25-4864-a81f-3678839f40bb', 'SERANG', 'Jln. Raya Cilegon KM,02 Kel.Dranggong–Taktakan Serang (Belakang Kantor Bulog Serang)                     ', '23eco11a-5839-11ea-8ab7-68f72844f250'),
('edd19c49-035c-4b7b-9fd7-b78fe382e048', 'LOMBOK', 'Jl. TGH. Saleh Hambali No. 335 Desa Bengkel - Kec. Labu Api Lombok Barat - Mataram - NTB       ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('f0b59233-172f-40c9-a46a-4ac6a401068e', 'BANJARMASIN', 'Jl.Ahmad Yani KM 27,5 Landasan Ulin Banjar Baru (Sebelah Panti Sosial Budi Mulia) BANJARMASIN ', '55fix11a-5839-11ea-8ab7-68f72844f700'),
('f4f331c2-d853-4d9b-9740-2a41d63c6cce', 'KEDIRI', 'Jl. Sudiro arah Sidorejo Dusun Gayam Timur Desa Gayam Kec. Gurah Kab. KEDIRI 64211', '55fix11a-5839-11ea-8ab7-68f72844f700');

-- --------------------------------------------------------

--
-- Table structure for table `m_users`
--

CREATE TABLE `m_users` (
  `id_user` varchar(36) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_role` varchar(36) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `departemen` varchar(255) DEFAULT NULL,
  `id_unit` varchar(36) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_users`
--

INSERT INTO `m_users` (`id_user`, `nama_user`, `password`, `email`, `id_role`, `aktif`, `departemen`, `id_unit`, `photo`) VALUES
('193fd680-05df-4bae-9c4b-8390e71af31b', 'Icha', '646568576460a51f014364ed71628f47', 'mis@cahayabuana.co.id', '1779ba70-499e-11e5-bbd3-00ffaf90c978', 1, 'MIS', '373af58a-0cc0-4f5e-b5e4-43c857967f50', 'Icha.png'),
('2f5139c2-2f0e-4ecf-8fc2-9b059770d390', 'Unit', 'ba2fc57c3fc0556651e4dbc263b8770a', 'unit@unit.com', 'b259037c-4fbe-11e5-acc3-902b34d4622b', 1, 'MARKETING', '373af58a-0cc0-4f5e-b5e4-43c857967f50', 'TES.png'),
('442c9dd9-499e-11e5-bbd3-00ffaf90c978', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '1779ba70-499e-11e5-bbd3-00ffaf90c978', 1, 'MIS', '373af58a-0cc0-4f5e-b5e4-43c857967f50', 'no_photo.png'),
('bdc3c765-892f-4c39-a409-b4b332088d18', 'TRI', '222', 'adm', '1779ba70-499e-11e5-bbd3-00ffaf90c978', 1, 'MIS', '17054659-52d1-4e8a-ac27-eaecd6763191', 'TRI.png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` varchar(36) NOT NULL,
  `nama_role` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `nama_role`, `keterangan`) VALUES
('042d0b6e-4fbf-11e5-acc3-902b34d4622b', 'SALESMAN', 'SALESMAN UNIT'),
('1779ba70-499e-11e5-bbd3-00ffaf90c978', 'ADMIN', 'ADMINISTRATOR'),
('b259037c-4fbe-11e5-acc3-902b34d4622b', 'UNIT', 'UNIT ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE `ukuran` (
  `KELOMPOK` varchar(255) NOT NULL,
  `NAMA_BARANG` varchar(255) NOT NULL,
  `UKURAN` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran`
--

INSERT INTO `ukuran` (`KELOMPOK`, `NAMA_BARANG`, `UKURAN`) VALUES
('KELOMPOK', 'NAMA_BARANG', 'UKURAN'),
('Angel Cat Sugar', 'Angel Cat Sugar BC - 4611 ACS', '850 x 300 x 1460'),
('Angel Cat Sugar', 'Angel Cat Sugar DT - 5601 - ACS', '865 x 420 x 1200'),
('Angel Cat Sugar', 'Angel Cat Sugar LB - 5 ACS', '425 x 295 x 1435'),
('Angel Cat Sugar', 'Angel Cat Sugar SD - 2631 - ACS ', '1050 x 395 x 1200'),
('Angel Cat Sugar', 'Angel Cat Sugar WD - 1621 ACS', '800 x 400 x 1110'),
('Angel Cat Sugar', 'Angel Cat Sugar WDM - 1625 - ACS', '800 x 420 x 1800'),
('Angel Cat Sugar', 'Angel Cat Sugar WDT - 1441 ACS', '800 x 400 x 1600'),
('Angel Cat Sugar', 'BC - 3611 ACS', '600 x 400 x 1235'),
('Angel Cat Sugar', 'SD - 2622 ACS', '1120 x 400 x 1200'),
('Angel Cat Sugar', 'WDM - 1635 - ACS', '1200 x 420 x 1800'),
('Barbie', ' Barbie WD - 11125 BBD', '805 x 420 x 1800'),
('Barbie', 'Barbie BC - 71001 - BBD', '600 x 405 x 1535'),
('Barbie', 'Barbie DT - 51001 BBD', '400 x 800 x 1300'),
('Barbie', 'Barbie MRC - 61001 - BBD', '795 x 405 x 1260'),
('Barbie', 'Barbie SD - 21001 - BBD', '505 x 1130 x 1365'),
('Barbie', 'Barbie WDM - 11042 - BBD', '800 x 420 x 1810'),
('Barbie', 'WDM - 11135 BBD', '1200 x 420 x 1800'),
('Barca', 'Barca CBFMT - 218', '805 x 440 x 1800'),
('Barca', 'Barca CBFMT - 318', '1205 x 440 x 1800'),
('Barca', 'CB114.B - MINP', '425 x 400 x 1435'),
('Barca', 'CB214.B-MINP', '800 x 420 x 1700'),
('Barca', 'LB - 121 FBC', '425 x 300 x 1200'),
('Barca', 'SD - 212 FBC', '800 x 500 x 1200'),
('Barca', 'Study Desk SD 211. B - MIBX', '1200 x 500 x 1400'),
('Barca', 'Study Desk SD 211.B - NPBX', '1200 x 500 x 1400'),
('Charmy Kitty', 'Charmmy Kitty AVR - 3311 CMY', '600 x 400 x 630'),
('Charmy Kitty', 'Charmmy kitty DT - 5301 - CKT', '910 x 420 x 1300'),
('Charmy Kitty', 'Charmmy kitty LS - 7311 CMY', '600 x 335 x 896'),
('Charmy Kitty', 'Charmmy Kitty WDM - 1322 CKT', '800 x 420 x 1800'),
('Charmy Kitty', 'Charmmy kitty WDM - 1332 - CKT', '1200 x 435 x 1800'),
('Charmy Kitty', 'SD - 2331 - CKT', '1120 x 500 x 1250'),
('Charmy Kitty', 'WD - 1313 CKT', '760 x 400 x 1210'),
('Cinderella', 'LB - 12 CAR', '425 x 300 x 1200'),
('Cinderella', 'SD - 21311 - CAR', '950 x 550 x 1260'),
('Cinderella', 'WDT - 11311 - CAR', '830 x 420 x 1800'),
('Frozen', 'Frozen DT - 51611 - FFV', '800 x 400 x 1180'),
('Frozen', 'Frozen SD - 21611 - FFV', '1110 x 500 x 1220'),
('Frozen', 'Frozen WD - 11611 - FFV', '600 x 400 x 1220'),
('Hot Wheels', 'SD - 11211 - HWL', '760 x 400 x 1210'),
('Hot Wheels', 'SD - 21210 - HWL', '1120 x 500 x 1250'),
('Hot Wheels', 'WD - 11212 - HWL', '800 x 410 x 1700'),
('Keropi', 'Kerokerokeroppi SD - 2531 - KRP', '1050 x 395 x 1200'),
('Little Miss Princess', 'Little Miss Princess LB - 5 LMP', '425 x 295 x 1435'),
('Little Miss Princess', 'Little Miss Princess LB - 5 MMH', '425 x 295 x 1435'),
('Little Miss Princess', 'Mr. Bump SD - 2711 MMB', '800 x 500 x 1200'),
('Little Miss Princess', 'Mr. Bump WD - 1312 MMB', '730 x 400 x 1200'),
('Loney Tunes', 'Looney Tunes SD - 2231 LT', '1055 x 400 x 1205'),
('Loney Tunes', 'Tweety SD - 2322 TWT', '1120 x 500 x 1200'),
('Loney Tunes', 'Tweety WD - 1122 TWT', '785 x 400 x 1400'),
('Loney Tunes', 'Tweety WD - 1311 TWT', '730 x 400 x 1200'),
('Mr. Bump', 'Mr. Bump SD - 2711 MMB', '800 x 500 x 1200'),
('Mr. Bump', 'Mr. Bump WD - 1312 MMB', '730 x 400 x 1200'),
('Panel Com', 'BCPC - 2.22 CKT', '655 x 460 x 1275'),
('Panel Com', 'Com Panel BPCP - 2.22 - FROZ', '655 x 460 x 1275'),
('Panel Com', 'Com Panel BPCPM - 2.X2 - BBD', ''),
('Sofia The First', 'Sofia The first DT - 5911 SOF', '800 x 400 x 1340'),
('Sofia The First', 'Sofia The first SD - 2911 SOF', '976 x 500 x 1200'),
('Sofia The First', 'Sofia The first WD - 1922 SOF', '800 x 412 x 1445'),
('Sofia The First', 'Sofia The first WDM - 1932 SOF', '800 x 410 x 1780'),
('Sofia The First', 'Sofia The first WDM - 1933 SOF', '1170 x 410 x 1780'),
('Tom and Jerry', 'Tom & Jerry SD - 2221 TJ ', '800 x 500 x 1200'),
('Tom and Jerry', 'Tom & Jerry WD - 1211 TJ', '625 x 400 x 1205'),
('Upin Ipin', 'Upin Ipin LB - 4 UIP', '425 x 295 x 1170'),
('Upin Ipin', 'Upin Ipin SD - 2811 UIP', '800 x 500 x 1025'),
('Upin Ipin', 'Upin Ipin WD - 1811 UIP', '624 x 400 x 1110'),
('Audio TV Rack', 'ATR - 0300', '610 x 359 x 630'),
('Audio TV Rack', 'ATR - 0301', '610 x 359 x 630'),
('Audio TV Rack', 'ATR - 0303', '605 x 440 x 530 '),
('Audio TV Rack', 'ATR - 0304', '800 x 450 x 565'),
('Audio TV Rack', 'ATR - 0305', '590 x 465 x 565'),
('Audio TV Rack', 'ATR - 0307', '1040 x 450 x 575'),
('Audio TV Rack', 'ATR - 0309 B', '1200 x 450 x 1300'),
('Audio TV Rack', 'ATR - 0311', '800 x 450 x 565'),
('Audio TV Rack', 'ATR - 0322', '1000 x 450 x 465'),
('Audio TV Rack', 'ATR - 0333', '1600 x 470 x 520'),
('Book Cabinet', 'BC - 1760', '605 x 400 x 1705'),
('Book Cabinet', 'BC - 1761', '600 x 300 x 1800'),
('Dressing Table', 'MR - 6215', '800 x 400 x 1595'),
('Dressing Table', 'MR - 8633', '800 x 410 x 1830'),
('Dressing Table', 'MRJ - 602', '795 x 400 x 1320'),
('Dressing Table', 'MRJ - 603', '795 x 400 x 1320'),
('Kids Wardrobe', ' Lemari Anak LA - 4018', '730 x 405 x 1195'),
('Kids Wardrobe', 'LA - 4028 S2', '730 x 405 x 1195'),
('Kids Wardrobe', 'LA 4028 S1', '730 x 405 x 1195'),
('Kids Wardrobe', 'Lemari Anak LA - 4038', '730 x 405 x 1200'),
('Kids Wardrobe', 'Lemari Anak LA - 413', '625 x 405 x 1205'),
('Kids Wardrobe', 'Lemari Anak LAC - 4016 - AP', '800 x 400 x 1400'),
('Kids Wardrobe', 'Lemari Anak LAC - 4021 AP', '805 x 450 x 1430'),
('Kitchen Set', 'Kitchen Set  Atas 5322', '1180 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5120 & Kitchen Set Bawah 6120', '1085 x 755 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5150 & Kitchen Set Bawah 6150', '1070 x 775 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5220 & Kitchen Set Bawah 6220', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5221 & Kitchen Set Bawah 6220', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5222 & Kitchen Set Bawah 6220', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5250 & Kitchen Set Bawah 6250', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5251 & Kitchen Set Bawah 6250', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5252 & Kitchen Set Bawah 6250', '790 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5320 & Kitchen Set Bawah 6320', '1180 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5321 & Kitchen Set Bawah 6320', '1180 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5350 & Kitchen Set Bawah 6350', '1185 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5351 & Kitchen Set Bawah 6350', '1185 x 315 x 700'),
('Kitchen Set', 'Kitchen Set Atas 5352', '1185 x 315 x 700'),
('Kitchen Set', 'LDA - 521 & LDB - 521', '775 x 335 x 735'),
('Kitchen Set', 'LDA - 5215 & LDB - 5215', '660 x 660 x 735'),
('Kitchen Set', 'LDA - 5225 & LDB 5225', '775 x 335 x 735'),
('Kitchen Set', 'LDA - 5235 & LDB - 5235', '1160 x 335 x 735'),
('Kitchen Set', 'LDA 531 & LDB 531', '1160 x 335 x 735'),
('Office', 'MK - 280 MT', '800 x 400 x 690'),
('Office', 'MK - 380 TK', '800 x 400 x 1230'),
('Office', 'MT - 101', '1100 x 560 x 725'),
('Office', 'MTB - 102', '1200 x 600 x 725'),
('Office', 'MTB - 201', '1420 x 600 x 725'),
('Office', 'MTC - 2001', '1100 x 550 x 770'),
('Ornamental Wardrobe', 'LH - 3008 ', '1595 x 450 x 1720'),
('Ornamental Wardrobe', 'LH - 4008', '1645 x 485 x 1875'),
('Ornamental Wardrobe', 'LH - 7008', '1500 x 400 x 1420'),
('Ornamental Wardrobe', 'LH - 803', '1205 x 425 x 715'),
('Ornamental Wardrobe', 'LH - 808', '1400 x 415 x 700'),
('Ornamental Wardrobe', 'LH - 809', '1400 x 420 x 700'),
('Ornamental Wardrobe', 'LH - 815', '1400 x 545 x 695'),
('Ornamental Wardrobe', 'LH - 822', '740 x 385 x 825'),
('Ornamental Wardrobe', 'LH - 824', '740 x 385 x 1230'),
('Ornamental Wardrobe', 'LH - 826', '740 x 385 x 1730'),
('Shoes Wardrobe', 'LS - 059', '700 x 320 x 1000'),
('Shoes Wardrobe', 'LS - 510 New', '805 x 300 x 1020'),
('Study Desk', 'MBB - 314', '1205 x 455 x 1500'),
('Study Desk', 'MBBJ - 321', '1200 x 455 x 1500'),
('Study Desk', 'MBC - 322', '1165 x 600 x 1610'),
('Study Desk', 'MBS - 315', '1175 x 495 x 1210'),
('Study Desk', 'MBS - 318', '1055 x 400 x 1205'),
('Study Desk', 'MBS - 328 S1', '1050 x 400 x 1205'),
('Study Desk', 'MBS - 328 S2', '1055 x 400 x 1205'),
('Study Desk', 'MBSJ - 311', '1155 x 400 x 1205'),
('Study Desk', 'Meja Belajar MB - 312 (A)', '805 x 400 x 1195'),
('Versatile Cabinet', 'LMR - 034', '800 x 300 x 1205'),
('Versatile Cabinet', 'LSG - 325', '800 x 300 x 600'),
('Versatile Cabinet', 'RB - 02 S', '400 x 300 x 605'),
('Versatile Cabinet', 'RB - 03 S', '400 x 300 x 890'),
('Versatile Cabinet', 'RB - 04 S', '400 x 300 x 1180'),
('Versatile Cabinet', 'RB - 1202 BP', '390 x 300 x 620'),
('Versatile Cabinet', 'RB - 1203 BP', '390 x 300 x 915'),
('Versatile Cabinet', 'RB - 1204 BP', '390 x 300 x 1205'),
('Versatile Cabinet', 'RBD - 043 S', '800 x 300 x 1205'),
('Versatile Cabinet', 'RSG - 092 S', '400 x 300 x 605'),
('Versatile Cabinet', 'RSG - 093 S', '400 x 300 x 890'),
('Versatile Cabinet', 'RSG - 094 S', '400 x 300 x 1180'),
('Versatile Cabinet', 'RSG - 5 FBC', '425 x 295 x 1435'),
('Versatile Cabinet', 'RSG - 9294 BP', '425 x 300 x 1170'),
('Versatile Cabinet', 'RSG - 9295 BP', '425 x 300 x 1440'),
('Versatile Cabinet', 'RSG - 9445', '400 x 400 x 1200'),
('Versatile Cabinet', 'RSG - 9455', '400 x 400 x 1480'),
('Wardrobe', 'LP - 1924', '805 x 430 x 1900'),
('Wardrobe', 'LP - 72 FR', '805 x 435 x 1700'),
('Wardrobe', 'LP - 7200 ', '805 x 435 x 1700'),
('Wardrobe', 'LP - 7200 S', '805 x 435 x 1700'),
('Wardrobe', 'LP - 7210 New', '805 x 435 x 1700'),
('Wardrobe', 'LP - 7267 - S', '805 x 435 x 1800'),
('Wardrobe', 'LP - 727 S', '805 x 435 x 1700'),
('Wardrobe', 'LP - 7300', '1205 x 435 x 1700'),
('Wardrobe', 'LP - 7300 - S', '1205 x 435 x 1700'),
('Wardrobe', 'LPC - 7251', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 7252 - SP', '805 x 440 x 1800'),
('Wardrobe', 'LPC - 7253 SP', '805 x 440 x 1800'),
('Wardrobe', 'LPC - 7256 S', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 7259 S', '805 x 435 x 1800'),
('Wardrobe', 'LPC - 7351', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8210 - AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8211 - AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8220 AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8221 AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8230 AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8231 AP', '805 x 450 x 1800'),
('Wardrobe', 'LPC - 8310 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8311 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8320 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8321 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8330 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC - 8331 AP', '1205 x 450 x 1800'),
('Wardrobe', 'LPC -7255 - S', '805 x 450 x 1800'),
('Wardrobe', 'LPC 7268', '805 x 440 x 1800'),
('Wardrobe', 'LPJ - 7113', '570 x 440 x 1805'),
('Wardrobe', 'LPMR - 1921', '805 x 440 x 1700'),
('Wardrobe', 'LPMR - 8223', '1205 x 450 x 1825'),
('Wardrobe', 'LPSJ - 721', '805 x 435 x 1700'),
('Wardrobe', 'LPSJ - 722 C', '805 x 435 x 1700'),
('Wardrobe', 'LPSJ - 723 C', '805 x 435 x 1700'),
('Wardrobe', 'LSG - 321', '400 x 300 x 905'),
('Bed Car', 'BED CAR ARMY', '230 x 120 x 95 '),
('Bed Car', 'Bed Car Hello Kitty (Baggage Series)', '245 x 145 x 68'),
('Bed Car', 'Bed Car Hello Kitty VW', '100 x 180'),
('Bed Car', 'Bed Car New Spiderman Classic Sport (Baggage Series)', '100 x 180'),
('Hello Kitty Series', 'Hello Kitty Classic', '200 x 200 x 44'),
('Hello Kitty Series', 'Hello Kitty Pillow Top', ''),
('Hello Kitty Series', 'Hello Kitty Plus Top Latex', '200 x 200 x 50'),
('Hello Kitty Series', 'Hello Kitty Pocket Spring', '200 x 200 x 46'),
('Hello Kitty Series', 'Hello Kitty Rama Pink', '200 x 200 x 42'),
('Hello Kitty Series', 'Hello Kitty Twin Bed Classic Sandaran Hati', '120 x 200 x 52'),
('Hotel Platinum Bed', 'Chicago Hotel Platinum Bed', '200 x 200 x 53'),
('Hotel Platinum Bed', 'Las Vegas Hotel Platinum Bed', '200 x 200 x 61'),
('Hotel Platinum Bed', 'Los Angles Hotel Platinum Bed', '200 x 200 x 61'),
('Hotel Platinum Bed', 'New York Hotel Platinum Bed', '200 x 200 x 59'),
('Pillow Top Anak', 'Frozen Pillow Top', ''),
('Regular', '3 IN 1 CLASSIC', '120 x 200 x -'),
('Regular', '3 IN 1 MODERN', '120 x 200 x -'),
('Regular', 'Aristocrat (King Pocket Full Latex)', ''),
('Regular', 'Bed Set Reguler Sand. 720', '200 x 200 x 40'),
('Regular', 'Bed Set Reguler Sandaran Napolly', '200 x 200 x 40'),
('Regular', 'Bed Set Single Pillow Top', ''),
('Regular', 'Big Pocket', '200 x 200 x 57'),
('Regular', 'Big Pocket Plus ', ''),
('Regular', 'Classic Spring Bed', '200 x 200 x -'),
('Regular', 'Double Pocket Latex', '200 x 200 x 74'),
('Regular', 'Flora Blue Divan Barcelona', '200 x 200 x 53'),
('Regular', 'Flora Green Divan Exotic Laci', '200 x 200 x 67'),
('Regular', 'Flora White', '200 x 200 x 53'),
('Regular', 'Golden Double Pillow Top', ''),
('Regular', 'Golden Pillow Top Sand. Buckingham', ''),
('Regular', 'Golden Pillow Top Sand. Holland', ''),
('Regular', 'Golden Pillow Top Sandaran Belgium', '200 x 200 x 61'),
('Regular', 'Golden Pillow Top Sandaran Sweden', '200 x 200 x 68'),
('Regular', 'Golden Plus Top Flora', ''),
('Regular', 'Golden Plustop Spring Latex', '200 x 200 x 61'),
('Regular', 'King Pocket Big Ben', '200 x 200 x 65'),
('Regular', 'King Pocket Egypt', '200 x 200 x 64'),
('Regular', 'King Pocket Paris', '200 x 200 x 64'),
('Regular', 'King Pocket Pillow Top Florist', ''),
('Regular', 'King Pocket Plus Sand. France Dark Brown', ''),
('Regular', 'King Pocket Plus Sand. Kensington', ''),
('Regular', 'King Pocket Plus Top latex', ''),
('Regular', 'New Latex Mix (Sandaran Sweden)', '200 x 200 x 64'),
('Regular', 'New Latex Mix Sand. Buckingham', ''),
('Regular', 'New Platinum Big Pedic', '200 x 200 x 66'),
('Regular', 'New Silver Plus', '200 x 200 x 54'),
('Regular', 'new yunani salur', '200 x 200 x 53'),
('Regular', 'silver double plus top', '200 x 200 x 54'),
('Regular', 'Silver Flower', ''),
('Regular', 'Silver Plus Top', '200 x 200 x 57'),
('Regular', 'Silver Plus Top Sand. Rumania', ''),
('Regular', 'Standard Plus', '200 x 200 x 57'),
('Regular', 'Student Bed Laci', '200 x 200 x 35'),
('Regular', 'Twin Bed Lovely Sandaran Hati', '120 x 200 x 54'),
('Regular', 'Twin Bed Lovely Spring Latex Sandaran Belgium', '120 x 200 x 54'),
('Regular', 'Twin Bed NEW LILY', '120 x 200 x 52'),
('Regular', 'Twin Bed STUDENT', '120 x 200 x -'),
('Regular', 'Twin Bed Yunani Salur Sand. Matisse Full Oscar)', '120 x 200 x 52'),
('Regular', 'Yunani Salur Pilow Top', ''),
('Twin Bed Anak', 'Batman and Robin Twin Bed', '120 x 200 x 28'),
('Twin Bed Anak', 'Hello Kitty Best Friend Twin Bed', '120 x 200 x 52'),
('Twin Bed Anak', 'Hello Kitty Full Of Love', '120 x 200 x 52'),
('Twin Bed Anak', 'Hello Kitty Twin Bed', '120 x 200 x 52'),
('Twin Bed Anak', 'Spiderman Ultimate Twin Bed', '120 x 200 x 28'),
('Twin Bed Anak', 'Twin Frozen', ''),
('Twin Bed Anak', 'Twin Hello kitty Classic Garden', ''),
('Twin Bed Anak', 'Twin Hello Kitty Magnolia', ''),
('Wedding Bed', ' New Romantic Wedding Bed', '200 x 200 x 70'),
('Wedding Bed', 'Lovely Wedding Bed ', '200 x 200 x 65'),
('Wedding Bed', 'Monalisa Wedding Bed', '200 x 200 x 70'),
('Wedding Bed', 'New Glamour Wedding Bed', '200 x 200 x 63'),
('Batman', 'LB5 - BTM', '425 x 295 x 1435'),
('Batman', 'SD - BM1401 - DD', '969 x 510 x 1400'),
('Batman', 'WD-BM1681-DD', '800 x 415 x 1680'),
('Ben 10', 'BL - K1001', '742 x 425 x 1400'),
('Ben 10', 'BL - K1002', '1071 x 425 x 1400'),
('Ben 10', 'BL - K1003', '742 x 425 x 1400'),
('Ben 10', 'SD - K2002', ''),
('Ben 10', 'SD - K2003', ''),
('Ben 10', 'SD - K2004', ''),
('Ben 10', 'WD - BT 1681 - GH', ''),
('Frozen', 'BP - 120 FZ', ''),
('Frozen', 'DT - FZ 8009 - FF', ''),
('Frozen', 'LB - 5 FZ', ''),
('Frozen', 'PT - FZ 201 - FF', ''),
('Frozen', 'SD - FZ 9006 - FF', ''),
('Frozen', 'WD - FZ 2.180 - FF', ''),
('Frozen', 'WD - FZ 3.180 - FF', ''),
('Frozen', 'WD - FZ 4.170 - FF', ''),
('Frozen', 'WD SD - FZ 1910 - FF', ''),
('Hello Kitty', 'BCR - KT 90 - SL', ''),
('Hello Kitty', 'Bed BP-KT90-40th', '1970 x 990 x 890'),
('Hello Kitty', 'BL - KT 1140 - 40th', '658 x 415 x 1400'),
('Hello Kitty', 'BL - KT 1140 - SL', '685 x 415 x 1400'),
('Hello Kitty', 'BLH - HK 7002 - SH', '1172 x 415 x 1465'),
('Hello Kitty', 'BLH-K7001', '969 x 510 x 1400'),
('Hello Kitty', 'Dressing Table DT - KT 8008 - 40th', '800 x 420 x 1224'),
('Hello Kitty', 'Dressing Table DT - KT 8010 - ML', '800 x 450 x 1447'),
('Hello Kitty', 'DT - HK 8006 - SH', '900 x 440 x 1400'),
('Hello Kitty', 'DT - KT 8007 - SL', '800 x 420 x 1224'),
('Hello Kitty', 'DT-HK8004-BF', '907 x 440 x 1400'),
('Hello Kitty', 'DTH - K8001 ', '806 x 425 x 1400'),
('Hello Kitty', 'DTH - K8002', '806 x 425 x 1400'),
('Hello Kitty', 'HK - LB4 - SL', '417 x 425 x 1488'),
('Hello Kitty', 'HK - LB5 - SH', '425 x 295 x 1435'),
('Hello Kitty', 'HK - LB5 - SL', '425 x 295 x 1435'),
('Hello Kitty', 'HK - LB84 -SL', '783 x 425 x 1485'),
('Hello Kitty', 'LB - KT 2.15 - ML', '424 x 295 x 1435'),
('Hello Kitty', 'LB - KT 4.1 - ML', ''),
('Hello Kitty', 'LB - KT 440 - SL', '440 x 400 x 1220'),
('Hello Kitty', 'LB 5. 40 BF', '440 x 400 x 1507'),
('Hello Kitty', 'Locker Box LB - KT 5 - ML', ''),
('Hello Kitty', 'Locker Box LB - KT5 - 40th', '424 x 295 x 1435'),
('Hello Kitty', 'MRH - K11001', '800 x 400 x 990'),
('Hello Kitty', 'MRH - K11002', '800 x 400 x 1200'),
('Hello Kitty', 'PTH - 201 BF', ''),
('Hello Kitty', 'SCH - K13001', '730 x 250 x 1254'),
('Hello Kitty', 'SD - HK 9004 -SH', '1230 x 510 x 1400'),
('Hello Kitty', 'SD-HK9003-BF', '969 x 510 x 1400'),
('Hello Kitty', 'SDH - 9002', '800 x 500 x 904'),
('Hello Kitty', 'SDH - K9001', '969 x 510 x 1400'),
('Hello Kitty', 'Study Desk SD - KT 9005 - 40th', '966 x 440 x 1409'),
('Hello Kitty', 'Study Desk SD - KT 9007 - ML ', '1230 x 510 x 1522'),
('Hello Kitty', 'Wardrobe WD - KT 2.180 - ML', '801 x 415 x 1800'),
('Hello Kitty', 'Wardrobe WD - KT 2.4.170 - ML', '723 x 415 x 1700'),
('Hello Kitty', 'Wardrobe WD - KT 3.180 - ML', '1202 x 415 x 1800'),
('Hello Kitty', 'WD - HK 1601 - BF', '806 x 425 x 1600'),
('Hello Kitty', 'WD - HK 1801 SH', ''),
('Hello Kitty', 'WD - HK 1802 - SH', ''),
('Hello Kitty', 'WD - HK 1803 - SH', ''),
('Hello Kitty', 'WD - HK 1901 - SH', '1205 x 535 x 1927'),
('Hello Kitty', 'WDM - HK 1380 - BF', '1201 x 425 x 1800'),
('Princess', 'BCR-101-PCS', ''),
('Princess', 'BL-PCS1140-SE', '552 X 415 X 1400'),
('Princess', 'BP-90-PCS', '2100 X 970 X 1110'),
('Princess', 'DT-K8005-PCS', '969 x 510 x 1280'),
('Princess', 'LB5-40-PCS', '440 x 400 x 1507'),
('Princess', 'WD-PCS2180-L2S', '801 x 415 x 1800'),
('Princess', 'WD-PCS22150', '610 X 415 X 1512'),
('Princess', 'WD-PCS3180-D2S', '1202 x 415 x 1800'),
('Spiderman', 'BLS-K15001', '1013 X 450 X 1400'),
('Spiderman', 'LB - 5 SPD', '424 x 295 x 1435'),
('Spiderman', 'SB-K17001', '1320 X 2070 X 1050'),
('Spiderman', 'SD-K16001', '969 x 510 x 1400'),
('Spiderman', 'WD-K14001', '994 X 415 X 1835'),
('Sponge Bob', 'BP-90-SBob', '1970 x 990 x 890'),
('Sponge Bob', 'LB5-Sbob', '425 x 295 x 1435'),
('Sponge Bob', 'MD-140-SBob', '900 X 480 X 1044'),
('Superman', 'LB5-SPM', '425 x 295 x 1435'),
('Superman', 'SD-SU1401-TJ', '969 x 510 x 1400'),
('Superman', 'WD-SU1681-TJ', '800 x 415 x 1680'),
('BCBC', 'BCBC  XX2 KTSH', '630 x 450 x 1510'),
('BCBC', 'BCBC - 163 - SORP', '650 x 450 x 1510'),
('BCBC', 'BCBC - M  242 BMAN', '650 x 450 x 1300'),
('BCBC', 'BCBC - M 242 CLA', '650 x 450 x 1300'),
('BCBC', 'BCBC - M 242 SMTJ', '650 x 450 x 1300'),
('BCBC', 'BCBC - X1G2 CLA', '650 x 450 x 1510'),
('BCBC', 'BCBC - XX2 - FROZ', '650 x 450 x 1510'),
('BCBC', 'BCBC XX2 BARBIE', '650 x 450 x 1510'),
('BCBC', 'BCBC-163 HKBF', '650 x 450 x 1530'),
('BCBC', 'BCBC-163 SMAN', '650 x 450 x 1530'),
('BCBC', 'BCBC-163 SPGC', '650 x 450 x 1530'),
('BCBC', 'BCBC-222 HKBF', '650 x 450 x 1300'),
('BCBC', 'BCBC-242 MMRO', '650 x 450 x 1300'),
('BCBC', 'BCBC-M 242 KTAE', '650 x 450 x 1300'),
('BCBC', 'BCBC-M 242 SORP', '650 x 450 x 1300'),
('BCBC', 'BCBC. B - 2G2 MMRO', '650 x 450 x 1300'),
('BCBC', 'BCBC.B - 163 - BMAN', '650 x 450 x 1510'),
('BCBC', 'BCBC.B - 163 KREC', '650 x 450 x 1510'),
('BCBC', 'BCBC.B-2G2 WPFD', '650 x 450 x 1300'),
('Houseware', 'BB 40', '430 x 295 x 415'),
('Houseware', 'BB 65', '620 x 435 x 310'),
('Houseware', 'Big Boxer - 65 MCB', '620 x 435 x 310'),
('Houseware', 'Big Boxer - 80 H', '680 x 480 x 415'),
('Houseware', 'Big Boxer - 80 MCB', '700 x 480 x 415'),
('Houseware', 'Big Boxer 125 H', '770 x 550 x 455'),
('Houseware', 'BIG BOXER 26 HKLV', '475 x 335 x 240'),
('Houseware', 'Big Boxer 26 MC', '510 x 470 x 872'),
('Houseware', 'BIG BOXER 26 SPGC', '475 x 335 x 240'),
('Houseware', 'BIG BOXER 44 HKHP', '550 x 385 x 285'),
('Houseware', 'BIG BOXER 44 SPGC', '550 x 385 x 285'),
('Houseware', 'BIG BOXER 65 HKGS', '620 x 435 x 310'),
('Houseware', 'Big Boxer 65 MCB', '620 x 435 x 310'),
('Houseware', 'BIG BOXER 65 SPGC', '620 x 435 x 310'),
('Houseware', 'BIG BOXER 80 B', '700 x 480 x 415'),
('Houseware', 'BIG BOXER B5-4', '395 x 255 x 355'),
('Houseware', 'BIG BOXER B5-5', '455 x 300 x 190'),
('Houseware', 'Big Boxer-26', '510 x 470 x 872'),
('Houseware', 'Big Boxer-44', '510 x 470 x 872'),
('Houseware', 'Big Boxer-44-MCB', '550 x 385 x 285'),
('Meja Kursi', 'BIG 528', '570 x 550 x 880'),
('Meja Kursi', 'KAC - 21 - SOPW', '540 x 410 x 523'),
('Meja Kursi', 'Kursi - NBM - 210 BR', '-'),
('Meja Kursi', 'Kursi Baso Big-303', '395 x 345 x 475'),
('Meja Kursi', 'Kursi Big 209', '530 x 470 x 880'),
('Meja Kursi', 'Kursi Big 228', '420 x 380 x 530'),
('Meja Kursi', 'KURSI BIG 552', '590 x 565 x 735'),
('Meja Kursi', 'Kursi KAC 21 KREC', '-'),
('Meja Kursi', 'Kursi KAC 21 KTBF', '440 x 410 x 523'),
('Meja Kursi', 'Kursi KAC 21 KTMG ', '-'),
('Meja Kursi', 'Kursi NBM - 210 BB', '-'),
('Meja Kursi', 'Kursi NBM - 210 BP', '-'),
('Meja Kursi', 'Kursi NBM - 210 BT', '-'),
('Meja Kursi', 'Kursi NKT - 210 BMG', '510 x 470 x 872'),
('Meja Kursi', 'Kursi NSM - 210 BF', '-'),
('Meja Kursi', 'Kursi NSM - 210 BR', '-'),
('Meja Kursi', 'Kursi Pakai Tangan Big 509', '540 x 560 x 795'),
('Meja Kursi', 'Kursi Pakai Tangan Big 908', '680 x 570 x 770'),
('Meja Kursi', 'Kursi Pakai Tangan Big 909', '645 x 570 x 900'),
('Meja Kursi', 'Kursi Pakai Tangan Big-636', '645 x 570 x 900'),
('Meja Kursi', 'Kursi Tanpa Tangan Big 101', '465 x 445 x 870'),
('Meja Kursi', 'Kursi Tanpa Tangan Big 102 B', '460 x 450 x 870'),
('Meja Kursi', 'Meja Makan 3696 KB', '955 x 955 x 770'),
('Meja Kursi', 'Meja Makan Big-3696', '955 x 995 x 705'),
('Meja Kursi', 'Meja Makan DT-8888', '860 x 860 x 710'),
('Meja Kursi', 'Meja Makan DT-8888 KB', '860 x 860 x 770'),
('Meja Kursi', 'Meja MFC - 43 - SOPW', '540 x 540 x 460'),
('Meja Kursi', 'Meja MFC 43 KREC', '-'),
('Meja Kursi', 'Meja MFC-43 KTBF', '540 x 540 x 460'),
('Meja Kursi', 'Meja Teras Big-3650', '510 x 510 x 450'),
('Meja Kursi', 'NFr  - 810 - EL', '610 x 560 x 890'),
('Meja Kursi', 'NFr - 910 - AN', '690 x 570 x 770'),
('Meja Kursi', 'NFr - 910 - EL', '690 x 570 x 770'),
('Meja Kursi', 'NFr - X10 - AN', '440 x 340 x 610'),
('Meja Kursi', 'NFr - X10 - EL', '440 x 340 x 610'),
('Meja Kursi', 'NKT 210 ACL', '510 x 470 x 872'),
('Meja Kursi', 'NKT 210 BCL', '510 x 470 x 872'),
('Meja Kursi', 'NKT 210 CCL', '510 x 470 x 872'),
('Meja Kursi', 'NSo - X10 - PW', '440 x 340 x 610'),
('Stockcase Nacase', 'NEA 144 AK1', '435 x 430 x 1100'),
('Stockcase Nacase', 'NEAOT 144 AMK1', '435 x 430 x 1100'),
('Stockcase Nacase', 'NKKB 224 BK3', '440 x 375 x 920'),
('Stockcase Nacase', 'NKKB 244 BK3', '440 x 375 x 1065'),
('Stockcase Nacase', 'NTA 552 AK3', '435 x 430 x 1340'),
('Stockcase Nacase', 'NTAOT 115 AMK3', '435 x 430 x 930'),
('Stockcase Nacase', 'SCA 3 4000 - MMLM', '450 x 430 x 960'),
('Stockcase Nacase', 'SCA 3 5000 - MMLM', '450 x 430 x 1180'),
('Stockcase Nacase', 'SCA1 - 4000 UIDK', '435 x 430 x 980'),
('Stockcase Nacase', 'SCA1 - 5000 - HOWL', '-'),
('Stockcase Nacase', 'SCA1 - 5000 UIDK', '435 x 430 x 1200'),
('Stockcase Nacase', 'SCA3 4000-ACS', '435 x 430 x 960'),
('Stockcase Nacase', 'SCA3 5000 - ACS', '435 x 430 x 1200'),
('Stockcase Nacase', 'SCB - 400 ACS', '-'),
('Stockcase Nacase', 'SCB - 500 ACS', '435 x 430 x 1200'),
('Stockcase Nacase', 'SCC 400 CKST', '435 x 315 x 885'),
('Stockcase Nacase', 'SCC 500 CKST', '435 x 315 x 1090'),
('Stockcase Nacase', 'SFC2 - 4000 - BCPL', '455 x 435 x 980'),
('Stockcase Nacase', 'SFC2 - 4000 - FROZ', '455 x 435 x 980'),
('Stockcase Nacase', 'SFC2 - 5000 - BCPL', '455 x 435 x 1200'),
('Stockcase Nacase', 'SFC2 - 5000 - FROZ', '455 x 435 x 1200'),
('Stockcase Nacase', 'STB 500 BK1', '440 x 375 x 1080'),
('Stockcase Nacase', 'Stockcase Karakter SCA1 - 5 MMRO', '435 x 43 x 1200'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-4000 HKBF', '455 x 435 x 980'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-4000 KREC', '455 x 435 x 980'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-4000 SPGC', '455 x 435 x 980'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-4000 WPFD', '455 x 435 x 980'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-5000 HKBF', '435 x 43 x 1200'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-5000 KREC', '435 x 43 x 1200'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-5000 SPGC', '435 x 43 x 1200'),
('Stockcase Nacase', 'Stockcase Karakter SFC2-5000 WPFD', '435 x 43 x 1200'),
('Stockcase Nacase', 'Stockcase SPDA-4000 AK1', '450 x 430 x 975'),
('Stockcase Nacase', 'Stockcase SPDA-5000 AK1', '450 x 430 x 1175'),
('Stockcase Nacase', 'Stockcase SPEA-4000 AK1', '450 x 430 x 975'),
('Stockcase Nacase', 'Stockcase SPEA-5000 AK1', '450 x 430 x 1175'),
('Stockcase Nacase', 'Stockcase STA-4000 BK1', '435 x 430 x 890'),
('Stockcase Nacase', 'Stockcase STA-5000 BK1', '435 x 430 x 1090'),
('Stockcase Nacase', 'Stockcase STB-400 BK1', '440 x 375 x 880'),
('Stockcase Nacase', 'Stockcase SWNB-400 BK1', '440 x 375 x 880'),
('Stockcase Nacase', 'Stockcase SWNB-500 BK1', '440 x 375 x 1080');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_barang`
-- (See below for the actual view)
--
CREATE TABLE `v_barang` (
`nama_merek` varchar(255)
,`nama_kategori` varchar(255)
,`nama_barang` varchar(255)
,`satuan` varchar(45)
,`ukuran` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `v_barang`
--
DROP TABLE IF EXISTS `v_barang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_barang`  AS  select `m`.`nama_merek` AS `nama_merek`,`k`.`nama_kategori` AS `nama_kategori`,`b`.`nama_barang` AS `nama_barang`,`b`.`satuan` AS `satuan`,`b`.`ukuran` AS `ukuran` from (`m_barang` `b` join (`m_kategori` `k` join `m_merek` `m` on((`k`.`id_merek` = `m`.`id_merek`))) on((`b`.`id_kategori` = `k`.`id_kategori`))) order by `m`.`nama_merek`,`k`.`nama_kategori`,`b`.`nama_barang` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_hak_akses`),
  ADD KEY `fk_transaksi_user_user_idx` (`id_user`),
  ADD KEY `fk_transaksi_user_transaksi_idx` (`id_transaksi`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD KEY `p_id` (`parent_id`);

--
-- Indexes for table `m_area`
--
ALTER TABLE `m_area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_m_barang_kategori_idx` (`id_kategori`);

--
-- Indexes for table `m_barang_unit`
--
ALTER TABLE `m_barang_unit`
  ADD PRIMARY KEY (`id_barang_unit`),
  ADD KEY `fk_m_barang_kategori_idx` (`id_kategori`),
  ADD KEY `fk_m_barang_unit_idx` (`id_barang_unit`);

--
-- Indexes for table `m_distributor`
--
ALTER TABLE `m_distributor`
  ADD PRIMARY KEY (`id_distributor`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `fk_m_kategori_merek_idx` (`id_merek`),
  ADD KEY `fk_m_kategori_lisensi_idx` (`id_lisensi`);

--
-- Indexes for table `m_lisensi`
--
ALTER TABLE `m_lisensi`
  ADD PRIMARY KEY (`id_lisensi`);

--
-- Indexes for table `m_merek`
--
ALTER TABLE `m_merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `m_setting`
--
ALTER TABLE `m_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `m_transaksi`
--
ALTER TABLE `m_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `m_unit`
--
ALTER TABLE `m_unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD KEY `fk_m_unit_area_idx` (`id_area`);

--
-- Indexes for table `m_users`
--
ALTER TABLE `m_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_m_users_roles_idx` (`id_role`),
  ADD KEY `fk_m_users_unit_idx` (`id_unit`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD CONSTRAINT `fk_transaksi_user_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `m_transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi_user_user` FOREIGN KEY (`id_user`) REFERENCES `m_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `fk_m_barang_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `m_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD CONSTRAINT `fk_m_kategori_merek` FOREIGN KEY (`id_merek`) REFERENCES `m_merek` (`id_merek`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `m_unit`
--
ALTER TABLE `m_unit`
  ADD CONSTRAINT `fk_m_unit_area` FOREIGN KEY (`id_area`) REFERENCES `m_area` (`id_area`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `m_users`
--
ALTER TABLE `m_users`
  ADD CONSTRAINT `fk_m_users_roles` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_m_users_unit` FOREIGN KEY (`id_unit`) REFERENCES `m_unit` (`id_unit`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
