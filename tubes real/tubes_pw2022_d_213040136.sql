-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 05.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_pw2022_d_213040136`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `universitas`
--

CREATE TABLE `universitas` (
  `id` int(11) NOT NULL,
  `nama_universitar` varchar(50) NOT NULL,
  `tahun_berdiri` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `universitas`
--

INSERT INTO `universitas` (`id`, `nama_universitar`, `tahun_berdiri`, `deskripsi`, `foto`) VALUES
(1, 'Universitas Pasundan', '14 November 1960', 'Universitas Pasundan Bandung atau dikenal dengan Unpas. adalah sebuah universitas swasta di Bandung, Indonesia, yang memiliki Kampus di lima lokasi, yaitu di Jalan Lengkong Besar No. 68 (Kampus I), Jalan Tamansari No. 6-8 (Kampus II), Jalan Wartawan IV No. 22 (Kampus III), Jalan Dr. Setiabudhi No. 193 (Kampus IV), dan Jalan Sumatra No. 41 (Kampus V).Universitas Pasundan Bandung (Unpas) berdiri tanggal 14 November 1960, keberadaan dan pengembangannya tidak lepas dari tujuan dan cita-cita Paguyuban Pasundan, sebagai organisasi induk yang lahir tahun 1913, sehingga esensi dan eksistensinya tidak terlepas dari garapan pengabdian Paguyuban Pasundan, terutama dalam turut mencerdaskan kehidupan dan kesejahteraan bangsa Indonesia. Unpas telah tumbuh dan berkembang menjadi sebuah universitas terkemuka dan kebanggaan masyarakat, terbukti dari jumlah mahasiswa yang saat ini terbesar di lingkungan Kopertis Wilayah IV Jabar dan Banten.', '62a1b3098c3f5.jpg'),
(2, 'Universitas Padjadjaran', '11 September 1957', 'Universitas Padjadjaran disingkat Unpad.adalah sebuah perguruan tinggi negeri di Jawa Barat, Indonesia. Kampus utama Unpad, terutama untuk Program Sarjana, berada di Jatinangor, Kabupaten Sumedang, Jawa Barat.Sejak 20 Oktober 2014, status universitas berubah menjadi Perguruan Tinggi Negeri Badan Hukum (PTN BH) dari sebelumnya berstatus Badan Layanan Umum (BLU). Peresmian itu ditandai dengan peraturan pemerintah (PP) yang ditandatangani Presiden Susilo Bambang Yudhoyono. Penetapan itu didasarkan atas evaluasi kinerja yang dilakukan tim independen yang dibentuk oleh Kementerian Pendidikan dan Kebudayaan (Kemendikbud).[2] Berdasarkan Keputusan Badan Akreditasi Nasional Perguruan Tinggi (BAN PT) tertanggal 16 Januari 2014, Unpad mendapat peringkat A (sangat baik).', '62a1b21c2e324.jpg'),
(3, 'Institut Teknologi Bandung', '1920', 'Institut Teknologi Bandung disingkat ITB.adalah sebuah perguruan tinggi negeri yang berkedudukan di Kota Bandung. Nama ITB diresmikan pada tanggal 2 Maret 1959.[2] Sejak tanggal 14 Oktober 2013 ITB menjadi Perguruan Tinggi Negeri Badan Hukum (PTN BH) yang memiliki otonomi pengelolaan dalam akademik dan nonakademik.[9] ITB telah memiliki 27 program studi yang terakreditasi secara internasional (sebelas dari ABET, sebelas dari ASIIN).[10][11][12]Kampus utama ITB saat ini merupakan lokasi dari sekolah tinggi teknik pertama di Indonesia[note 4] sekaligus lembaga pendidikan tinggi pertama di Hindia Belanda.[note 5] Walaupun masing-masing institusi pendidikan tinggi yang mengawali ITB memiliki karakteristik dan misi masing-masing, semuanya memberikan pengaruh dalam perkembangan yang menuju pada pendirian ITB.Rektor ITB saat ini adalah Prof. Ir. N. R. Reini Djuhraeni Wirahadikusuma, MSCE, PhD, untuk masa jabatan 2020–2025.', '62a16723ddf94.jpg'),
(5, 'Universitas Gadjah Mada', '1949', 'Universitas Gadjah Mada (Hanacaraka: ꦈꦤꦶꦥ꦳ꦼꦂꦱꦶꦠꦱ꧀ꦒꦗꦃꦩꦢ; disingkat UGM) merupakan universitas negeri di Indonesia yang didirikan oleh Pemerintah Republik Indonesia pada tanggal 19 Desember 1949 berdasarkan Peraturan Pemerintah Nomor 23 Tahun 1949 tentang Peraturan Tentang Penggabungan Perguruan Tinggi Menjadi Universiteit tanggal 16 Desember 1949.[5] Kampus yang terletak di Kapanewon Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta merupakan universitas pertama yang didirikan oleh Pemerintah Republik Indonesia setelah Indonesia merdeka. Pada saat didirikan, Universitas Gadjah Mada hanya memiliki enam fakultas, tetapi sekarang telah memiliki 18 fakultas dan dua sekolah yaitu Sekolah Vokasi dan Sekolah Pascasarjana (dahulu bernama Program Pascasarjana), dan lebih dari 100 Program Studi untuk S2, S3, dan Spesialis. Sebagian besar fakultas dalam lingkungan Universitas Gadjah Mada terdiri atas beberapa jurusan/bagian dan atau program studi. Kegiatan Universitas Gadjah Mada dituangkan dala', 'ugm.jpg'),
(6, 'Universitas Indonesia', '1849', 'Universitas Indonesia disingkat sebagai UI, adalah sebuah perguruan tinggi di Indonesia. Kampus utamanya terletak di bagian Utara dari Depok, Jawa Barat tepat di perbatasan antara Depok dengan wilayah Jakarta Selatan, sementara kampus utama lainnya terdapat di Salemba, Jakarta Pusat. UI dianggap sebagai salah satu dari tiga perguruan tinggi papan atas di Indonesia bersama dengan Universitas Gadjah Mada dan Institut Teknologi Bandung .[9][10]  Cikal-bakal terbentuknya Universitas Indonesia adalah ketika pemerintah kolonial Belanda mendirikan sebuah sekolah yang bertujuan untuk menghasilkan asisten dokter tambahan yang memegang sertifikat untuk melakukan perawatan-perawatan tingkat dasar serta mendapatkan gelar Dokter Jawa (Javanese doctor). Secara resmi, UI memulai kegiatannya pada 2 Februari 1950 dengan presiden (saat ini disebut rektor) pertamanya Ir. R.M. Pandji Soerachman Tjokroadisoerio.[11] Tanggal tersebut dijadikan hari kelahiran Universitas Indonesia.', '62a0ba8b80c79.png'),
(7, 'Institut Pertanian Bogor', ' 1 September 1963', 'Institut Pertanian Bogor (nama bahasa Inggris: IPB University, sebelumnya Bogor Agricultural University.adalah sebuah perguruan tinggi pertanian negeri yang berkedudukan di Dramaga, Bogor.  Sebelum diresmikan pada tahun 1963, IPB adalah sebuah fakultas pertanian pada Universitas Indonesia. Pada tanggal 1 September 1963.[4] Presiden Pertama Indonesia, Ir. Soekarno, melakukan peletakkan batu pertama pembangunan kampus sekaligus menandai peresmian Institut Pertanian Bogor sebagai sebuah perguruan tinggi mandiri.  Saat ini, Rektor IPB untuk periode 2017-2022 adalah Prof. Dr. Arif Satria, S.P, M.Si.[5]  Berdasarkan hasil keputusan rapat pleno Badan Akreditasi Nasional Perguruan Tinggi (BAN-PT) tanggal 7 November 2017, BAN-PT memutuskan bahwa Institut Pertanian Bogor (IPB) memperoleh status terakreditasi dengan peringkat A (sangat baik)', '62a0acfc095f3.jpg'),
(8, 'Universitas Diponegoro', '9 Januari 1957', 'Universitas Diponegoro disingkat sebagai Undip (Jawa: ꦈꦤꦶꦮ꦳ꦼꦂꦱꦶꦠꦱ꧀​ꦢꦶꦥꦺꦴꦤꦼꦒꦺꦴꦫꦺꦴ) adalah sebuah perguruan tinggi negeri di Indonesia yang berlokasi di Semarang, Jawa Tengah, Indonesia. Saat ini Undip telah memiliki 11 Fakultas dan 2 Sekolah. Kampus utama Undip terletak di daerah Tembalang, dan kampus utama lainnya terletak di daerah Pleburan. Undip didirikan pada tanggal 9 Januari 1957 sebagai Perguruan Tinggi Swasta dan baru mendapat status sebagai Perguruan Tinggi Negeri pada tanggal 9 Januari 1960. Kata Diponegoro diambil dari nama pahlawan nasional, yaitu Pangeran Diponegoro yang merupakan seorang pangeran pengobar semangat kemerdekaan dari tindakan kolonialisme Belanda di awal abad ke-18. Semangat ini turut menginspirasi pendirian Undip. Berdasarkan Peraturan Pemerintah Nomor 52 Tahun 2015, Undip ditetapkan statusnya menjadi Perguruan Tinggi Negeri Badan Hukum.', '62a0b3ddbfdc4.png'),
(9, 'Universitas Pendidikan Indonesia', '20 Oktober 1954', 'Universitas Pendidikan Indonesia (UPI)[4] (Aksara Sunda: ᮅᮔᮤᮗᮨᮁᮞᮤᮒᮞ᮪ ᮕᮨᮔ᮪ᮓᮤᮓᮤᮊᮔ᮪ ᮄᮔ᮪ᮓᮧᮔᮦᮞᮤᮃ) adalah sebuah perguruan tinggi negeri yang kampus utamanya berkedudukan di Kota Bandung, Jawa Barat, Indonesia.[5] Sejak tahun 2012, UPI berstatus sebagai perguruan tinggi yang diselenggarakan pemerintah (PTP),[6] berubah dari status sebelumnya sebagai perguruan tinggi Badan Hukum Milik Negara (BHMN).  UPI adalah perguruan tinggi yang menganut sistem multikampus[7] yaitu dengan 6 kampus yang tersebar di dua provinsi yaitu Jawa Barat dan Banten. Kampus utama UPI berlokasi di Jalan Setiabudhi 229, Bandung. Sedangkan kampus lainnya berlokasi di Cibiru, Tasikmalaya, Sumedang, Purwakarta, dan Serang.', '62a0b45f9c4df.png'),
(10, 'Universitas Telkom', '14 Agustus 2013 ', 'Universitas Telkom, atau Telkom University yang disingkat Tel-U, adalah sebuah perguruan tinggi swasta di Indonesia. Kampus utama Tel-U terletak di Kabupaten Bandung, Jawa Barat, tepatnya di Jalan Telekomunikasi - Terusan Buahbatu, di kawasan Bandung Technoplex (BT-Plex). Kampus lainnya berlokasi di daerah Gegerkalong Hilir, sebelah utara Kota Bandung, di kompleks perkantoran PT. Telkom (Telkom Innovation and Development Center dan Telkom Corporate University/Telkom Training Center).  Telkom University merupakan penggabungan dari empat institusi yang berada di bawah badan penyelenggara Yayasan Pendidikan Telkom (YPT), yaitu Institut Teknologi Telkom (IT Telkom), Institut Manajemen Telkom (IM Telkom), Politeknik Telkom, dan Sekolah Tinggi Seni Rupa dan Desain Indonesia Telkom (STISI Telkom).', '62a0b648c887d.jpg'),
(11, 'Universitas Katolik Parahyangan', '17 Januari 1955', 'Universitas Katolik Parahyangan (aksara Sunda: ᮅᮔᮤᮗᮨᮁᮞᮤᮒᮞ᮪ ᮊᮒᮧᮜᮤᮊ᮪ ᮕᮛᮠᮡᮍᮔ᮪, atau dikenal dengan singkatan Unpar) adalah salah satu perguruan tinggi swasta yang terletak di Kota Bandung, Indonesia. Kampus utamanya terletak di Jalan Ciumbuleuit, dan kampus lainnya terletak di Jalan Merdeka, Jalan Aceh, dan Jalan Nias. Sebelum memiliki gedung sendiri di Jalan Merdeka, kegiatan akademis juga sempat menggunakan gedung &quot;Panti Budaya&quot; (sekarang menjadi Gedung Bank Indonesia yang baru). Unpar memiliki semboyan Bakuning Hyang Mrih Guna Santyaya Bhakti yang berarti &quot;Berdasarkan Ke Tuhanan Menuntut Ilmu untuk Dibaktikan kepada Masyarakat&quot;.  Universitas Katolik Parahyangan didirikan pada tahun 1955 oleh pimpinan Gereja Katolik di Jawa Barat, yakni Uskup Bandung Pierre Marin Arntz, O.S.C. dan Uskup Bogor Paternus Nicholas Joannes Cornelius Geise, O.F.M.. Hal ini sebagai jawaban atas kurangnya ahli berpendidikan tinggi untuk membangun Indonesia pasca Perang Kemerdekaan.', '62a0b7232a896.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'skywalker', '$2y$10$xc7EDi8nHIDjVIrPz5vVPOgOvYGcQNnlfsKyGeSauVI.Uq.F8slUi'),
(2, 'masbay', '$2y$10$.WORE8oT70MH77JZ2z1wF.7Iucl9Ekqq7QgrPg4LjQrsJUw6zkXJa'),
(3, '123', '$2y$10$6c5QhJLJXmhy8hz3pnQ1ken40WpRn/IY7/aEHUjji9b1jXN/7bnBa'),
(4, 'qwerty', '$2y$10$tNz0kVotk6V38yDIkkx57.kD6gC8/XpQKAY.JH1aUKoq6TFTgXUnG'),
(5, 'user', '$2y$10$03iHUhmp1J4UUZmQBxOiM.31ktvgQbb7YxTxPtVDKeyrHXX45Flq6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
