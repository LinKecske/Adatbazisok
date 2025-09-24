<?php
// Adatok fogadása
$kepzes_neve = $_POST['kepzes_neve'];
$szint = $_POST['szint'];
$kepzettseg_megnevezese = $_POST['kepzettseg_megnevezese'];
$kepzes_ara = $_POST['kepzes_ara'];
$kezdes_datuma = $_POST['kezdes_datuma'];
$befejezes_datuma = $_POST['befejezes_datuma'];
$max_letszam = $_POST['max_letszam'];

// Csatlakozás az adatb-hez
$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

// Karakterkódolás beállítása
mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');

// Adatbázis kiválasztása
if (mysqli_select_db($conn, 'munkakozvetito')) {
    // lekérdezés stringként
    $sql = "INSERT INTO kepzesek (kepzes_neve, kepzes_szintje, kepzettseg_megnevezese, kepzes_ara, kezdes_datuma, befejezes_datuma, max_letszam) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_prepare($conn, $sql); //sql utasítás előkészítése
    mysqli_stmt_bind_param($stmt, 'sssssss', $kepzes_neve, $szint, $kepzettseg_megnevezese, $kepzes_ara, $kezdes_datuma, $befejezes_datuma, $max_letszam); // berajuk az sql utasításba a változókat
    
    if (mysqli_stmt_execute($stmt)) {
        echo 'Sikeresen hozzáadta a képzést!';
        header("Location: ../dolgozo_kepzes_kiirasa.php");
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
