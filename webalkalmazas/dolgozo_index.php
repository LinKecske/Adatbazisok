<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
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
        <h2>Üdvözöljük weboldalunk dolgozói felületén!</h2>
        <p>Miben segíthetek ma?</p>
        <p>Akik 5000ft-nál drágább képzésen vesznek részt:</p>
    </div>
    <?php include 'processes/lekerdezes2_process.php'; ?>
</body>
</html>