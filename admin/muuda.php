<?php include('../config.php'); ?>
<?php
session_start();
if (!isset($_SESSION['kasutaja'])) {
    header('Location: login.php');
    exit;
}

$paring = "SELECT * FROM toidukohad WHERE id=".$_GET['id'] ;
$valjund = mysqli_query($yhendus, $paring);
$rida = mysqli_fetch_assoc($valjund);
// print_r($rida);


if (isset($_GET['id']) && !empty($_GET['address'])) {

$paring = "UPDATE toidukohad SET nimi='".$_GET['nimi']."', asukoht='".$_GET['address']."' WHERE id =".$_GET['id'] ;
print_r($paring);
$valjund = mysqli_query($yhendus, $paring);
if ($valjund) {
    header("Location: index.php");
//     echo "Kustutamine õnnestus";
//     header('Location: index.php');
}
}
?>

!<!doctype html>
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
        <h1>Kohviku muutmine</h1>
        <form action="" method="get">
            <input type="text" hidden name="id" id="" value="<?php echo $rida['id']; ?>"><br>
            Kohviku nimi: <input type="text" name="nimi" id="" value="<?php echo $rida['nimi']; ?>"><br>
            Kohviku address: <input type="text" name="address" id="" value="<?php echo $rida['asukoht']; ?>"><br>
            <input type="submit" value="Muuda">
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
