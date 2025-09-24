<?php
$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');

if (mysqli_select_db($conn, 'munkakozvetito')) {
    $sql = "SELECT felhasznalok.nev, felhasznalok.email
            FROM felhasznalok
            WHERE felhasznalok.felhasznalo_id IN (
                SELECT resztvevok.felhasznalo_id
                FROM resztvevok
                INNER JOIN kepzesek ON resztvevok.kepzes_id = kepzesek.kepzes_id
                WHERE kepzesek.kepzes_ara > 500
            );";
    $res = mysqli_query($conn, $sql) or die ('Hibás utasítás!'); 

    echo '<table border=1>';
    echo '<tr>';            
    echo '<th>Név</th>';        
    echo '<th>e-mail cím</th>';
    echo '</tr>';

    while ( ($current_row = mysqli_fetch_assoc($res))!= null) {    
        echo '<tr>'; 
        echo '<td>' . $current_row["nev"] . '</td>'; 
        echo '<td>' . $current_row["email"] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
    
    mysqli_free_result($res);    // memória felaszabadítása


}else {
    die('Nem sikerült csatlakozni az adatbázishoz.');
}

?>