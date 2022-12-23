<?php
    session_start();
    if(!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = array();
    }

    if(isset($_POST["addToCart"])) {
        $cart = $_SESSION["cart"];
        $itemId = $_POST["addToCart"];
        array_push($cart, $itemId);
        $_SESSION["cart"] = $cart;
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odkurzaj.pl</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>
        <h1><a href="sklep.php">ODKURZAJ.PL</a></h1>
    </header>
    <aside>
        <h2>Filtry</h2>
        <form method="GET">
            <ul class="filtry">
                <li>
                    <h3>Cena</h3>
                    <label for="cena-min">Od: </label> <input class="cena-input" name="cena-min" type="number" min="0" max="9999" required>
                    <br>
                    <label for="cena-max">Do: </label> <input class="cena-input" name="cena-max" type="number" min="0" max="9999" required>
                </li>
            </ul>
            <button type="submit">Zastosuj</button>
        </form>
    </aside>
    <main>
        <div class="kontener">
            <?php
                $db = new mysqli("localhost", "root", "", "sklep");
                $cena_min = 0;
                $cena_max = 9999;
                if(isset($_GET["cena-min"])) $cena_min = $_GET["cena-min"];
                if(isset($_GET["cena-max"])) $cena_max = $_GET["cena-max"];
                $query = "SELECT * FROM odkurzacze WHERE cena BETWEEN $cena_min AND $cena_max";
                $result = $db->query($query);

                while($row = $result->fetch_row()) {
                    echo "<div class='item'>";
                    echo "<div class='item-main'>";
                    echo "<img src='{$row[8]}' alt='odkurzacz'>";
                    echo "<div class='iteminfo'>";
                    echo "<h3>{$row[1]}</h3>";
                    echo "<span>Poziom hałasu: {$row[6]} dB</span><br>";
                    echo "<span>Moc wejściowa: {$row[4]} W</span><br>";
                    echo "<span>Pojemność worka: {$row[3]} l</span><br>";
                    echo "<span>Zasięg pracy: {$row[2]} m</span>";
                    echo "</div></div>";
                    echo "<div class='shopping-utils'>";
                    echo "<div class='cena'>";
                    echo "<h2 class='cena'>{$row[5]} zł</h2>";
                    echo "</div>";
                    echo "<form class='itemicon' method='POST'><input type='hidden' name='addToCart' value='{$row[0]}'></><button type='submit'><i class='fa fa-cart-plus'></i></button></form>";
                    echo "</div></div>";
                }
                
                $db->close();
            ?>
        </div>
    </main>
    <div class="koszyk">
        <a href="koszyk.php"><i class="fa fa-shopping-cart"></i></a>
    </div>
</body>
</html>