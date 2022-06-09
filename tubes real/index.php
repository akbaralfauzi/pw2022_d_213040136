<!-- PHP -->

<?php
session_start();

if ( !isset($_SESSION["login"]) ) {
    header("Location: login.php");
    exit;
}

require 'functions.php';
$universitas = query("SELECT * FROM universitas");

//tombol cari ditekan
if(isset($_POST["cari"]) ) {
    $universitas = cari($_POST["keyword"]);
}

?>
<!-- AKHIR PHP -->

<!-- HTML -->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title> 𝐄𝐝𝐮𝐜𝐚𝐭𝐢𝐨𝐧 </title>
</head>

<body>
  
   <div class="text-center mb-3">
   <a href="Logout.php">Logout</a> 

    <h1> Daftar Universitas Favorit</h1>

    <a href="tambah.php">Tambah data universitas</a>
    <br><br>

<form action="" method="post">

<input type="text" name="keyword" size="40" autofocus 
placeholder="masukkan keyword pencarian.." autocomplete="off">
<button type="submit" name="cari">cari!</button>


</form>

<br>
    <table border="1" cellpadding="10" cellspacing="0">

        <!-- 1 -->

        <tr>
            <th>No.</th>
            <th>Aksi.</th>
            <th>Foto.</th>
            <th>Nama Universitas.</th>
            <th>Tahun Berdiri.</th>
            <th>Deskripsi.</th>
                </tr>

        <!-- bagian 1  -->

        <!-- bagian 2 -->
        <?php $i = 1; ?>
        <?php foreach ($universitas as $row) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td>
                    <a href="ubah.php?id=<?= $row["id"]; ?>">ubah</a> |
                    <a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('apakah anda yakin ingin menghapus data?');">hapus</a>
                </td>
                <td><img src="img/<?= $row["foto"]; ?>" width="100"></td>
                <td><?= $row["nama_universitar"]; ?></td>
                <td><?= $row["tahun_berdiri"]; ?></td>
                <td><?= $row["deskripsi"]; ?></td>
            </tr>
            <?php $i++ ?>
        <?php endforeach; ?>

        <!-- bagian 2 -->

    </table>

    <script src="js/srcipt.js></script>
</body>

</html>

<!-- TUTUP HTML  -->