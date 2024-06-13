<?php include('../config.php'); ?>
<?php
session_start();
if (!isset($_SESSION['kasutaja'])) {
    header('Location: login.php');
    exit;
}




if (isset($_GET['nimi']) && isset($_GET['address'])) {
$paring = "INSERT INTO toidukohad (nimi, asukoht) VALUES ('".$_GET['nimi']."', '".$_GET['address']."')" ;
print_r($paring);
$valjund = mysqli_query($yhendus, $paring);
if ($valjund) {
    header("Location: index.php");

}
}
?>

<!doctype html>
<html lang="et">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>
      <div class="container">
        <h1>Kohviku lisamine</h1>
        <form action="" method="get">
            Kohviku nimi: <input type="text" name="nimi" id="" value=""><br>
            Kohviku address: <input type="text" name="address" id="" value=""><br>
            <input type="submit" value="Lisa">
        </form>
      </div>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
