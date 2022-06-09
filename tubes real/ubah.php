<!-- PHP -->
<?php
session_start();

if ( !isset($_SESSION["login"]) ) {
    header("Location: login.php");
    exit;
}

require 'functions.php';

// ambil data di URL
$id = $_GET["id"];

// query data universitas berdasarkan id
$unv = query("SELECT * FROM universitas WHERE id = $id")[0];


// untuk melihat tombol submit sudah dipencet atau belum
if (isset($_POST["submit"])) {


    //cek hasil data yang berhasil diubah
    if (ubah($_POST) > 0) {
        echo "
           <script> 
           alert('data berhasil diubah');
           document.location.href = 'index.php';
           </script>
        ";
    } else {
        echo "
           <script> 
            alert('data gagal diubah');
            document.location.href = 'index.php';
           </script>
        ";
    }
}

?>
<!-- AKHIR PHP -->

<!-- HTML -->
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Ubah data universitas</title>
</head>

<body>
    <h1>Ubah Data Universitas</h1>

    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $unv["id"]; ?>">
        <input type="hidden" name="FotoLama" value="<?= $unv["foto"]; ?>">
        <ul>
            <li>
                <label for="nama_universitar">Nama Universitas : </label>
                <input type="text" name="nama_universitar" id="nama_universitar" required value="<?= $unv["nama_universitar"]; ?>">
            </li>

            <li>
                <label for="tahun_berdiri">Tahun Berdiri : </label>
                <input type="text" name="tahun_berdiri" id="tahun_berdiri" required value="<?= $unv["tahun_berdiri"]; ?>">
            </li>

            <li>
                <label for="deskripsi"> Deskripsi : </label>
                <input type="text" name="deskripsi" id="deskripsi" required value="<?= $unv["deskripsi"]; ?>">
            </li>

            <li>
                <label for="foto"> Foto : </label> <br>
                <img src="img/<?= $unv['foto']; ?>" width="40"> <br>
                <input type="file" name="foto" id="foto">
            </li>

            <li>
                <button type="submit" name="submit">Ubah Data!</button>
            </li>

        </ul>

    </form>

</body>

</html>
<!-- AKHIR HTML -->