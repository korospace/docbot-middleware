INSERT INTO `m_kelakuns` (`nkdkelakun`, `nnmkelakun`, `username_i`, `username_u`, `created_at`, `updated_at`) VALUES
('1.0.0.0', 'Aktiva', 'superkoro', NULL, '2023-03-21 09:49:33', '2023-03-21 09:49:33'),
('2.0.0.0', 'Passiva', 'superkoro', NULL, '2023-03-21 09:49:46', '2023-03-21 09:49:46'),
('3.0.0.0', 'Modal', 'superkoro', NULL, '2023-03-21 09:50:01', '2023-03-21 09:50:01'),
('4.0.0.0', 'Pendapatan', 'superkoro', NULL, '2023-03-21 09:50:06', '2023-03-21 09:50:06'),
('5.0.0.0', 'Beban', 'superkoro', NULL, '2023-03-21 09:50:09', '2023-03-21 09:50:09');
INSERT INTO `m_katakuns` (`nkdkelakun`, `nkdkatakun`, `nnmkatakun`, `username_i`, `username_u`, `created_at`, `updated_at`) VALUES
('1.0.0.0', '1.1.0.0', 'Aktiva lancar', 'superkoro', NULL, '2023-03-21 09:50:29', '2023-03-21 09:50:29'),
('1.0.0.0', '1.2.0.0', 'Aktiva tetap', 'superkoro', NULL, '2023-03-21 09:50:46', '2023-03-21 09:50:46'),
('2.0.0.0', '2.1.0.0', 'Hutang', 'superkoro', NULL, '2023-03-21 09:50:46', '2023-03-21 09:50:47'),
('4.0.0.0', '4.1.0.0', 'Pendapatan Operasional', 'superkoro', NULL, '2023-03-21 09:58:21', '2023-03-21 09:58:21'),
('4.0.0.0', '4.2.0.0', 'Pendapatan lain-lain', 'superkoro', NULL, '2023-03-21 09:58:31', '2023-03-21 09:58:31'),
('5.0.0.0', '5.1.0.0', 'beban operasional', 'superkoro', NULL, '2023-04-12 02:30:51', '2023-04-12 02:30:51'),
('5.0.0.0', '5.4.0.0', 'beban administrasi', 'superkoro', NULL, '2023-04-12 02:30:51', '2023-04-12 02:30:52');
INSERT INTO `m_subkatakuns` (`nkdkelakun`, `nkdkatakun`, `nkdsubkatakun`, `nnmsubkatakun`, `username_i`, `username_u`, `created_at`, `updated_at`) VALUES
('1.0.0.0', '1.1.0.0', '1.1.1.0', 'Kas', 'superkoro', NULL, '2023-03-21 09:51:05', '2023-03-21 09:51:05'),
('1.0.0.0', '1.1.0.0', '1.1.2.0', 'Bank', 'superkoro', NULL, '2023-03-21 09:51:17', '2023-03-21 09:51:17'),
('1.0.0.0', '1.1.0.0', '1.1.3.0', 'Deposito', 'superkoro', NULL, '2023-03-21 09:54:25', '2023-03-21 09:54:25'),
('1.0.0.0', '1.1.0.0', '1.1.4.0', 'Piutang', 'superkoro', NULL, '2023-03-21 09:54:37', '2023-03-21 09:54:37'),
('1.0.0.0', '1.1.0.0', '1.1.5.0', 'Perlengkapan', 'superkoro', NULL, '2023-03-21 09:54:51', '2023-03-21 09:54:51'),
('1.0.0.0', '1.2.0.0', '1.2.1.0', 'Bangunan', 'superkoro', NULL, '2023-03-21 09:56:52', '2023-03-21 09:56:52'),
('2.0.0.0', '2.1.0.0', '2.1.1.0', 'Hutang jangka pendek', 'superkoro', NULL, '2023-03-21 09:56:52', '2023-03-21 09:56:53');
INSERT INTO `m_akuns` VALUES 
('1.0.0.0','1.1.0.0','1.1.1.0','1.1.1.1','Kas besar','debit',0,'superkoro',NULL,'2023-03-21 09:53:19','2023-03-22 11:11:44'),
('1.0.0.0','1.1.0.0','1.1.1.0','1.1.1.2','Kas kecil','debit',0,'superkoro',NULL,'2023-03-21 09:53:29','2023-03-22 11:12:28'),
('1.0.0.0','1.1.0.0','1.1.2.0','1.1.2.1','Bank BRI','debit',0,'superkoro',NULL,'2023-03-21 09:53:42','2023-04-03 16:22:47'),
('1.0.0.0','1.1.0.0','1.1.2.0','1.1.2.2','Bank Mandiri','debit',0,'superkoro',NULL,'2023-03-21 09:53:53','2023-04-12 02:40:23'),
('1.0.0.0','1.1.0.0','1.1.3.0','1.1.3.1','Deposito berjangka','debit',0,'superkoro',NULL,'2023-03-21 09:55:12','2023-03-21 09:55:12'),
('1.0.0.0','1.1.0.0','1.1.4.0','1.1.4.1','Piutang pinjaman','debit',0,'superkoro',NULL,'2023-03-21 09:55:27','2023-03-21 09:55:27'),
('1.0.0.0','1.1.0.0','1.1.4.0','1.1.4.2','Piutang infaq','debit',0,'superkoro',NULL,'2023-03-21 09:55:49','2023-03-21 09:55:49'),
('1.0.0.0','1.1.0.0','1.1.5.0','1.1.5.1','Perlengkapan kantor','debit',0,'superkoro',NULL,'2023-03-21 09:56:04','2023-03-21 09:56:04'),
('1.0.0.0','1.1.0.0','1.1.5.0','1.1.5.2','Perlengkapan sekolah','debit',0,'superkoro',NULL,'2023-03-21 09:56:21','2023-03-21 09:56:21'),
('1.0.0.0','1.2.0.0','1.2.1.0','1.2.1.1','Gedung sekolah','debit',0,'superkoro',NULL,'2023-03-21 09:57:11','2023-03-21 09:57:11'),
('1.0.0.0','1.2.0.0','1.2.1.0','1.2.1.2','Akumulasi Penyusutan gedung','debit',0,'superkoro',NULL,'2023-03-21 09:57:38','2023-03-21 09:57:38'),
('2.0.0.0', '2.1.0.0', '2.1.1.0','2.1.1.3','Hutang pinjaman','kredit',0,'superkoro',NULL,'2023-03-21 09:57:38','2023-03-21 09:57:39'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.1','Infaq Spp','kredit',0,'superkoro',NULL,'2023-03-21 11:50:35','2023-03-22 11:12:28'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.2','akhirusannah','kredit',0,'superkoro',NULL,'2023-03-21 11:51:24','2023-03-22 11:11:44'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.3','Komite','kredit',0,'superkoro',NULL,'2023-04-03 03:41:08','2023-04-03 03:41:08'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.4','Buku Paket','kredit',0,'superkoro',NULL,'2023-04-03 03:43:08','2023-04-03 16:23:26'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.5','KBM','kredit',0,'superkoro',NULL,'2023-04-03 03:43:57','2023-04-03 03:43:57'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.6','Seragam','kredit',0,'superkoro',NULL,'2023-04-03 03:44:52','2023-04-03 03:44:52'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.7','Pengembangan Sekolah','kredit',0,'superkoro',NULL,'2023-04-03 03:49:28','2023-04-03 03:49:28'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.8','PPDB','kredit',0,'superkoro',NULL,'2023-04-03 03:49:28','2023-04-03 03:49:28'),
('4.0.0.0','4.1.0.0',NULL,'4.1.0.9','Formulir Pendaftaran','kredit',0,'superkoro',NULL,'2023-04-03 03:49:29','2023-04-03 03:49:29'),
('5.0.0.0','5.1.0.0',NULL,'5.1.0.1','Beban perlengkapan','debit',0,'superkoro',NULL,'2023-04-12 02:35:07','2023-04-12 02:40:22'),
('5.0.0.0','5.1.0.0',NULL,'5.1.0.2','Beban peralatan','debit',0,'superkoro',NULL,'2023-04-12 02:35:46','2023-04-12 02:40:23'),
('5.0.0.0','5.4.0.0',NULL,'5.4.0.1','Beban asuransi','debit',0,'superkoro',NULL,'2023-04-12 02:35:46','2023-04-12 02:40:24'),
('5.0.0.0','5.4.0.0',NULL,'5.4.0.2','Beban gaji guru & karyawan','debit',0,'superkoro',NULL,'2023-04-12 02:35:46','2023-04-12 02:40:25');

UPDATE m_akuns SET saldo = 0;
UPDATE m_akuns SET saldo = 50000000 WHERE nkdakun = '1.1.2.1';
UPDATE m_akuns SET saldo = 50000000 WHERE nkdakun = '2.1.1.3';
