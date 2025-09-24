<?php
$jelentkeztetett_id = $_POST['jelentkeztetett_id'];
$kepzes_id = $_POST['kepzes_id'];

$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

// Karakterkódolás beállítása
mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');

if (mysqli_select_db($conn, 'munkakozvetito')) {
    $sql = "INSERT INTO resztvevok (kepzes_id, felhasznalo_id) VALUES (?, ?);";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, 'ss', $kepzes_id, $jelentkeztetett_id); //?ek helyére berakuk a paramétereket
    
    if (mysqli_stmt_execute($stmt)) {
        echo 'Sikeresen hozzáadta a felhasználót a képzéshez!';
        header("Location: ../dolgozo_kepzesre_jelentkeztetes.php");
        exit();
    } else {
        echo 'Hiba történt a képzés hozzáadása során. Kérjük, próbálja meg újra!';
    }

    // Kapcsolat lezárása
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
} else {
    die('Nem sikerült csatlakozni az adatbázishoz.');
}


?>