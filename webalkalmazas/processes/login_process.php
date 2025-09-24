<?php
// Bejelentkezési adatok fogadása
$email = $_POST['email'];
$password = $_POST['password'];

$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');

//adatb csatlakozás
if (mysqli_select_db($conn, 'munkakozvetito')) {
    $sql = "SELECT * FROM felhasznalok WHERE email = ? AND jelszo = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, 'ss', $email, $password); //paraméterek beszúrása
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    
    if (mysqli_num_rows($result) > 0) {     //helyes oldalra iranyitas
        $row = mysqli_fetch_assoc($result);
        if ($row['szerepkor'] == 'dolgozó') {
            header("Location: ../dolgozo_index.php");
        } else if ($row['szerepkor'] == 'álláskereső') {
            header("Location: ../allaskereso_index.php");
        } else{
            echo("Valami nem sikerült. Kérjük próbálja meg később!");
        }
        exit();
    } else {
        echo 'Hibás email vagy jelszó!';
    }

    // Eredmény felszabadítása és kapcsolat lezárása
    mysqli_free_result($result);
    mysqli_close($conn);
} else {
    die('Nem sikerült csatlakozni az adatbázishoz.');
}
?>
