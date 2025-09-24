<?php
    // csatlakozás az adatbázishoz
    $conn = mysqli_connect('localhost', 'root', '') or die("Hibás csatlakozás!");

    // kódolás beállítása
    mysqli_query($conn, 'SET NAMES UTF8');
    mysqli_query($conn, "SET character_set_results=utf8");
    mysqli_set_charset($conn, 'utf8');
         
    if ( mysqli_select_db($conn, 'munkakozvetito') ) {    // adatb. kiválasztása   

        // sql utasítás stringként
        $sql = "SELECT allasajanlatok.munkakori_pozicio AS 'munkaköri pozíció', 
                    allasajanlatok.elvart_eletkor AS 'elvárt életkor', 
                    allasajanlatok.kapcsolattarto_email AS 'kapcsolattartó e-mail cím', 
                    GROUP_CONCAT(kepessegek.kepesseg_neve SEPARATOR ', ') AS 'elvárt képességek', 
                    telephelyek.telepules AS 'település', 
                    cegek.ceg_neve AS 'cég neve'
                    FROM allasajanlatok
                    JOIN elvart_kepessegek ON allasajanlatok.allasajanlat_id = elvart_kepessegek.allasajanlat_id
                    JOIN kepessegek ON elvart_kepessegek.kepesseg_id = kepessegek.kepesseg_id
                    JOIN telephelyek ON allasajanlatok.telephely_id = telephelyek.telephely_id
                    JOIN cegek ON telephelyek.ceg_id = cegek.ceg_id
                    GROUP BY allasajanlatok.allasajanlat_id, allasajanlatok.munkakori_pozicio;";
        $res = mysqli_query($conn, $sql) or die ('Hibás utasítás!'); // végrehajtjuk az SQL utasítást
          
        // táblázat fejéce
        echo '<table border=1>';
        echo '<tr>';            
        echo '<th>Munkaköri pozíció</th>';        
        echo '<th>Elvárt életkor</th>';
        echo '<th>Kapcsolattartó e-mail cím</th>';
        echo '<th>Elvárt képességek</th>';
        echo '<th>Település</th>';
        echo '<th>Cég neve</th>';
        echo '</tr>';
        
        // a táblázat egyéb sorai
        while ( ($current_row = mysqli_fetch_assoc($res))!= null) {    // asszociatív tömbként kezeljük
            echo '<tr>'; 
            echo '<td>' . $current_row["munkaköri pozíció"] . '</td>'; 
            echo '<td>' . $current_row["elvárt életkor"] . '</td>'; 
            echo '<td>' . $current_row["kapcsolattartó e-mail cím"] . '</td>'; 
            echo '<td>' . $current_row["elvárt képességek"] . '</td>'; 
            echo '<td>' . $current_row["település"] . '</td>'; 
            echo '<td>' . $current_row["cég neve"] . '</td>'; 
            echo '</tr>';
        }
        echo '</table>';
        
        mysqli_free_result($res);    // memória felaszabadítása
    } else {                                    
        die('Nem sikerült csatlakozni az adatbázishoz.');
    }
 
    mysqli_close($conn); // adatbázis kapcsolat lezárása
?>
