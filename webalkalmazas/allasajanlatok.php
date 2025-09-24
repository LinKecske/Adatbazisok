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
    <div>
        <h2>Aktuális állásajánlatok</h2>
        <p>Állásajánlatok száma településenként:</p>
    </div>
    <?php include 'processes/lekerdezes1_process.php'; ?>
    <div style="padding:16px">
        <p>Részletekért keresse a kapcsolattartót!</p>
    </div>
    <?php include 'processes/allasajanlatok_process.php'; ?>
</body>
</html>
