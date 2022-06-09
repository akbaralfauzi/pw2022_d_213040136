<!-- PHP -->
<?php
session_start();

if ( !isset($_SESSION["login"]) ) {
    header("Location: login.php");
    exit;
}

require 'functions.php';

// koneksi ke DBMS
$conn = mysqli_connect("localhost", "root", "", "tubes_pw2022_d_213040136");

// untuk melihat tombol submit sudah dipencet atau belum
if (isset($_POST["submit"])) {


    //cek hasil data yang berhasil ditambahkan
    if (tambah($_POST) > 0) {
        echo "
           <script> 
           alert('data berhasil ditambahkan');
           document.location.href = 'index.php';
           </script>
        ";
    } else {
        echo "
           <script> 
            alert('data gagal ditambahkan');
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
    <title>Tambah data universitas</title>
</head>

<body>
    <h1>Tambah data universitas</h1>

    <form action="" method="post" enctype="multipart/form-data">
        <ul>
            <li>
                <label for="nama_universitar">Nama Universitas : </label>
                <input type="text" name="nama_universitar" id="nama_universitar" required>
            </li>

            <li>
                <label for="tahun_berdiri">Tahun Berdiri : </label>
                <input type="text" name="tahun_berdiri" id="tahun_berdiri" required>
            </li>

            <li>
                <label for="deskripsi">Deskripsi : </label>
                <input type="text" name="deskripsi" id="deskripsi" required>
            </li>

            <li>
                <label for="foto">Foto : </label>
                <input type="file" name="foto" id="foto" required>
            </li>

            <li>
                <button type="submit" name="submit">Manambahkan Data!</button>
            </li>

        </ul>

    </form>

</body>

</html>
<!-- AKHIR HTML -->