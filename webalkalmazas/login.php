<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bejelentkezés</title>
    <link rel="stylesheet" href="css/login_styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Bejelentkezés</h2>
        <form action="processes/login_process.php" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Jelszó:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Bejelentkezés</button>
        </form>
        <div class="signup-link">
            <p>Nincs még fiókja? <a href="signup.php">Regisztráció</a></p>
        </div>
    </div>
</body>
</html>
