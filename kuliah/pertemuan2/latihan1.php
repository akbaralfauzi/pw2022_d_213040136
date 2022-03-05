<?php 
// pertemuan 2, belajar mengenal sintaks PHP
// echo untuk mencetak nilai ke layar

echo 1 + 2 * 3 / 4 ; 
echo "<hr>";


// operator
// Aritmatika
// +, -, *, /, %

echo 5 % 2 ; //sisa bagi
echo '<hr>'; 
echo 10 + "10" + 10;
echo '<hr>';

// perbandingan 
// <, >, <=, >=, ==,!=

echo 10 != 20;
echo '<hr>';

// variable
// tempat menampung nilai 
// tidak boleh mengandung spasi 
//boleh menampung angka, tidak boleh diawal
// snake_case : $nama_depan_mahasiswa
// camelcase : namaDepanMahasiswa
// kebab-case : nama-depan-mahasiswa

$nama = 'mahasiswa';
echo $nama ;
echo '<hr>';
$x = 1;
$y = 2;


//penugasan // asssignment
//= , +=, -=, *=, /=, %=
$a = 10 ;
$a += 20;
$a += 30;
echo $a ;
echo '<hr>';

// incremenrt & dcrement
// ++ , --
$b = 10;
echo ++$b;
echo '<br>';
echo ++$b;
echo --$b;
echo "<hr>";

// identitas
// ===, !==
echo 10 === "10" ;

// komponen sintax PHP yang lain

?>


' back tick
~ tillde
# pound
^ caret
| pipe 
\ backslash
/ slash 