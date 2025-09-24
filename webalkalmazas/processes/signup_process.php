<?php

$prefix = $_POST['prefix'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$szerepkor = 'álláskereső';

// Csatlakozás
$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

// Karakterkódolás beállítása
mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');


// Adatbázis kiválasztása
if (mysqli_select_db($conn, 'munkakozvetito')) {
    $check_sql = "SELECT email FROM felhasznalok WHERE email = ?";
    $check_stmt = mysqli_prepare($conn, $check_sql);
    mysqli_stmt_bind_param($check_stmt, 's', $email);
    mysqli_stmt_execute($check_stmt);
    mysqli_stmt_store_result($check_stmt);

    //email validálás
    if (mysqli_stmt_num_rows($check_stmt) > 0) {
        echo 'A megadott e-mail cím már létezik. Kérjük, használjon egy másik e-mail címet.';
    } else {
        $sql = "INSERT INTO felhasznalok (elotag, nev, email, jelszo, szerepkor) VALUES (?, ?, ?, ?, ?)";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, 'sssss', $prefix, $name, $email, $password, $szerepkor); 
        if (mysqli_stmt_execute($stmt)) {
            echo 'Sikeres regisztráció!';
            header("Location: ../login.php");
            exit();
        } else {
            echo 'Hiba történt a regisztráció során. Kérlek, próbáld meg újra!';
        }
    }
    // Kapcsolat lezárása
    mysqli_close($conn);
} else {
    die('Nem sikerült csatlakozni az adatbázishoz.');
}
?>
