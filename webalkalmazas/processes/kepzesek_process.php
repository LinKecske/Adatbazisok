<?php
    // csatlakozás az adatbázishoz
    $conn = mysqli_connect('localhost', 'root', '') or die("Hibás csatlakozás!");

    // karakterkódolás beállít.
    mysqli_query($conn, 'SET NAMES UTF8');
    mysqli_query($conn, "SET character_set_results=utf8");
    mysqli_set_charset($conn, 'utf8');
         
    if ( mysqli_select_db($conn, 'munkakozvetito') ) {    // ha sikeres az adatbázis kiválasztása    
        $sql = "SELECT 
                kepzesek.kepzes_neve AS 'Képzés neve', 
                kepzesek.kepzes_szintje AS 'Szint', 
                kepzesek.kepzettseg_megnevezese AS 'Képzettség megnevezése', 
                kepzesek.kepzes_ara AS 'Képzés ára'
                FROM kepzesek;"; // ez csak egy string, még nem hajtódik végre
        $res = mysqli_query($conn, $sql) or die ('Hibás utasítás!'); // itt hajtódik végre
          
        echo '<table border=1>';
        echo '<tr>';            
        echo '<th>Képzés neve</th>';        
        echo '<th>Szint</th>';
        echo '<th>Kalpzettség megnevezése</th>';
        echo '<th>Képzés ára</th>';
        echo '</tr>';
        
        while ( ($current_row = mysqli_fetch_assoc($res))!= null) {    
            echo '<tr>'; 
            echo '<td>' . $current_row["Képzés neve"] . '</td>'; 
            echo '<td>' . $current_row["Szint"] . '</td>'; 
            echo '<td>' . $current_row["Képzettség megnevezése"] . '</td>'; 
            echo '<td>' . $current_row["Képzés ára"] . 'Ft</td>'; 
            echo '</tr>';
        }
        echo '</table>';
        
        mysqli_free_result($res);    
    } else {                                   
        die('Nem sikerült csatlakozni az adatbázishoz.');
    }
 
    mysqli_close($conn); // lezárjuk az adatbázis-kapcsolatot
?>
