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
        <a href="allaskereso_index.php">Kezdőlap</a>
        <a href="allasajanlatok.php">Aktuális állásajánlatok</a>
        <a href="kepzesek.php">Aktuális képzések</a>
        <a href="login.php">Kijelentkezés</a>
    </div>
    <div style="padding:16px">
        <h2>Aktuális képzések</h2>
        <p>Részletekért keresse a kapcsolattartót!</p>
    </div>
    <?php include 'processes/kepzesek_process.php'; ?>
</body>
</html>