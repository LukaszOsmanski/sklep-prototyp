<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odkurzaj.pl - Logowanie</title>
    <link rel="stylesheet" href="style1.css">
</head>
<body>
    <header>
        <h1>ODKURZAJ.PL</h1>
    </header>
    <main>
        <div class="rejestracja">
            <form method="POST">
                <h2>Rejestracja</h2>
                Login: <input type="text" name="username"><br><br>
                Hasło: <input type="password" name="password"><br><br>
                <button>Zarejestruj</button>
            </form>
            <?php
                if (isset($_POST["username"])) {
                    $login = $_POST["username"];
                    $password = $_POST["password"];
                    $db = new mysqli("localhost", "root", "", "sklep");
                    $result = $db->query("INSERT INTO uzytkownicy (login, haslo) VALUES ('$login', '$password')");
                    $db->close();
                    echo "Pomyślnie zarejestrowano!";
                }
            ?>
        </div>
        <div class="login">
            <form method="POST">
                <h2>Logowanie</h2>
                Login: <input type="text" name="username1"><br><br>
                Hasło: <input type="password" name="password1"><br><br>
                <button>Zaloguj</button>
            </form>
            <?php
                if (isset($_POST["username1"])) {
                    $login = $_POST["username1"];
                    $password = $_POST["password1"];
                    $db = new mysqli("localhost", "root", "", "sklep");
                    $result = $db->query("SELECT login, haslo FROM uzytkownicy WHERE login='$login' AND haslo='$password'");
                    if($result->fetch_row()) {
                        header('Location: sklep.php', TRUE, 302);
                    }
                    $db->close();
                }
            ?>
        </div>
    </main>
</body>
</html>