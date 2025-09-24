<?php
$conn = mysqli_connect('localhost', 'root', '') or die('Hibás csatlakozás!');

// Karakterkódolás beállítása
mysqli_query($conn, 'SET NAMES UTF8');
mysqli_query($conn, "SET character_set_results=utf8");
mysqli_set_charset($conn, 'utf8');

if (mysqli_select_db($conn, 'munkakozvetito')) {
    $sql = "SELECT telephelyek.telepules, COUNT(allasajanlatok.allasajanlat_id) AS 'állásajánlatok száma'
            FROM allasajanlatok
            INNER JOIN telephelyek ON allasajanlatok.telephely_id = telephelyek.telephely_id
            GROUP BY telephelyek.telepules;";
    $res = mysqli_query($conn, $sql) or die ('Hibás utasítás!'); // utasítás végrehajt

    echo '<table border=1>';
    echo '<tr>';            
    echo '<th>Város</th>';        
    echo '<th>Állásajánlatok száma</th>';
    echo '</tr>';

    while ( ($current_row = mysqli_fetch_assoc($res))!= null) {  
        echo '<tr>'; 
        echo '<td>' . $current_row["telepules"] . '</td>'; 
        echo '<td>' . $current_row["állásajánlatok száma"] . '</td>';
        echo '</tr>';
    }
    echo '</table>';
    
    mysqli_free_result($res);   


}else {
    die('Nem sikerült csatlakozni az adatbázishoz.');
}

?>