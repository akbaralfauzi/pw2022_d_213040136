<!-- PHP -->
<?php


session_start();

if (isset($_SESSION["login"])) {
    header("Location: index.php");
    exit;
}

require 'functions.php';

if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $result = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

    // cek username
    if (mysqli_num_rows($result) === 1) {

        //cek password
        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])) {
            // SET SESSION
            $_SESSION["login"] = true;
            header("Location: index.php");
            exit;
        }
    }

    $error = true;
}

?>
<!-- AKHIR PHP -->

<!-- HTML -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>

    <div class="container">
        <img src="img/death star.jpg" width="600" class="mb-3" alt="">
        <h1 class="text-center">⠀𝗟𝗼𝗴𝗶𝗻 </h1>


        <?php if (isset($error)) : ?>
            <p style="color: red; font-style:italic">username / password salah</p>
        <?php endif;  ?>

        <form action="" method="post">

            <ul class="card-title">
                <div class="text-center mb-3">
                    <label for="username"></label>
                    <input type="text" placeholder="Username" name="username" id="username">
                </div>
                <div class="text-center mb-3">
                    <label for="password"></label>
                    <input type="password" placeholder="Password" name="password" id="password">
                </div>
                <div class="text-center mb-3">
                    <button type="submit" name="login">Login</button>
                </div>
                <div class="text-center mb-3">
                    <a href="registrasi.php" name="registrasi">Registrasi</a>
                </div>
            </ul>

        </form>
    </div>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</html>
<!-- AKHIR HTML -->