<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/kepzes_kiirasa_styles.css">
    <title>My little project</title>
</head>
<body>
    <div class="navbar">
        <a href="dolgozo_index.php">Dolgozói kezdőlap</a>
        <a href="dolgozo_kepzes_kiirasa.php">Képzések kiírása</a>
        <a href="dolgozo_kepzesre_jelentkeztetes.php">Képzésre jelentkeztetés</a>
        <a href="login.php">Kijelentkezés</a>
    </div>
    <div>
        <h2>Új képzés kiírása</h2>
    </div>

    <div class="form-container">
        <form action="processes/kepzes_kiirasa_process.php" method="POST">
            <label for="kepzes_neve">Képzés neve:</label>
            <input type="text" id="kepzes_neve" name="kepzes_neve" required>

            <label for="szint">Szint:</label>
            <select id="szint" name="szint">
                <option value="Kezdő">Kezdő</option>
                <option value="Középhaladó">Középhaladó</option>
                <option value="Haladó">Haladó</option>
            </select>

            <label for="kepzettseg_megnevezese">Képzettség megnevezése:</label>
            <input type="text" id="kepzettseg_megnevezese" name="kepzettseg_megnevezese" required>

            <label for="kepzes_ara">Képzés ára:</label>
            <input type="number" id="kepzes_ara" name="kepzes_ara" min="0" required>

            <label for="kezdes_datuma">Kezdés dátuma:</label>
            <input type="date" id="kezdes_datuma" name="kezdes_datuma" required>

            <label for="befejezes_datuma">Befejezés dátuma:</label>
            <input type="date" id="befejezes_datuma" name="befejezes_datuma" required>

            <label for="max_letszam">Max létszám:</label>
            <input type="number" id="max_letszam" name="max_letszam" min="1" required>

            <input type="submit" value="Képzés hozzáadása">
        </form>
    </div>
</body>
</html>
