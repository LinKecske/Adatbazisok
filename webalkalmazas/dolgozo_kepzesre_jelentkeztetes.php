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
    <div style="padding:16px">
        <h2>Képzésre jelentkeztetés</h2>
        <p>Itt tud felhasználókat képzésekhet hozzárendelni.</p>
    </div>
    <div class="form-container">
        <form action="processes/kepzesre_jelentkeztetes_process.php" method="POST">
            <label for="jelentkeztetett_id">Jelentkeztetett azonosítója:</label>
            <input type="text" id="jelentkeztetett_id" name="jelentkeztetett_id" required>

            <label for="kepzes_id">Képzés azonosítója:</label>
            <input type="text" id="kepzes_id" name="kepzes_id" required>

            <input type="submit" value="Jelentkeztetés">
        </form>
    </div>
</body>
</html>