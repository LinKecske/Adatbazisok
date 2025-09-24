<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regisztráció</title>
    <link rel="stylesheet" href="css/signup_styles.css">
</head>
<body>
    <div class="signup-container">
        <h2>Regisztráció</h2>
        <form action="processes/signup_process.php" method="post">
            <label for="prefix">Előtag:</label>
            <input type="text" id="prefix" name="prefix" required>

            <label for="name">Név:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Jelszó:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Regisztráció</button>
        </form>
    </div>
</body>
</html>
