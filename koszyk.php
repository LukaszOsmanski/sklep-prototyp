<?php
    session_start();
    if(!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = array();
    }

    if(isset($_POST["removeFromCart"])) {
        $cart = $_SESSION["cart"];
        $itemId = $_POST["removeFromCart"];
        if (($key = array_search($itemId, $cart)) !== false) {
            unset($cart[$key]);
        }
        $_SESSION["cart"] = $cart;
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odkurzaj.pl - Koszyk</title>
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <header>
        <h1><a href="sklep.php">ODKURZAJ.PL</a></h1>
    </header>
    <main>
        <h2>Koszyk</h2>
        <div class="koszyk">
            <?php
                if($_SESSION["cart"]) {
                    $db = new mysqli("localhost", "root", "", "sklep");
                    $ids = join(", ", $_SESSION["cart"]);
                    $result = $db->query("SELECT * FROM odkurzacze WHERE id IN ($ids)");

                    while($row = $result->fetch_row()) {
                        echo "<div class='item'>";
                        echo "<div class='itemimage'>";
                        echo "<img src='{$row[8]}' alt='odkurzacz'>";
                        echo "</div>";
                        echo "<div class='iteminfo'>";
                        echo "<h3>{$row[1]}</h3>";
                        echo "<span>Poziom hałasu: {$row[6]} dB</span><br>";
                        echo "<span>Moc wejściowa: {$row[4]} W</span><br>";
                        echo "<span>Pojemność worka: {$row[3]} l</span><br>";
                        echo "<span>Zasięg pracy: {$row[2]} m</span>";
                        echo "<h2 class='cena'>{$row[5]} zł</h2>";
                        echo "</div>";
                        echo "<form class='itemicon' method='POST'><input type='hidden' name='removeFromCart' value='{$row[0]}'></><button type='submit'><i class='fa fa-trash'></i></button></form>";
                        echo "</div>";
                    }

                    $db->close();
                } else {
                    echo "<h3 class='alert'>Twój koszyk jest pusty.</h3>";
                }
            ?>
        </div>
    </main>
</body>
</html>