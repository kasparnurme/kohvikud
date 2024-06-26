<?php include('../config.php'); ?>
<?php
session_start();
if (!isset($_SESSION['kasutaja'])) {
    header('Location: login.php');
    exit;
    }
?>
<!doctype html>
<html lang="et">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <?php
        //otsing
        if (!empty($_GET["s"])) {
            $s = $_GET["s"];
            $paring = 'SELECT * FROM toidukohad WHERE nimi LIKE "%'.$s.'%" ';
        } else {
            
            if (isset($_GET['next'])) {
                $algus = $_GET['next'];
            } 
            else if (isset($_GET['prev'])) {
                $algus = $_GET['prev']-10;
            } else {
                $algus = -10;
            }
                $algus += 10;
                $lopp = $algus - 10;
            if ($lopp < 0) {
                $lopp = 0; 
            }
    

                

            //päring mille saadan andmebaasi
            $paring = "SELECT * FROM toidukohad LIMIT $algus,10";
        }
        //saadan soovitud ühendusele minu päringu
            $valjund = mysqli_query($yhendus, $paring);

    ?>
    <div class="container">
        <h1>Valige asutus mida hinnata</h1>
        <div class="row text-end">
            <form action="" method="get">
                <input type="text" name="s">
                <input type="submit" value="Otsi" class="btn btn-success">
                <a class="btn btn-warning" name="logout" href="lisa.php">Lisa</a>
                <a class="btn btn-danger" name="logout" href="logout.php">Logi välja</a>
            </form>
            
        </div>
        <table class="table table-sm">
            <tr>
                <th>Nimi</th>
                <th>Asukoht</th>
                <th>Keskmine hinne</th>
                <th>Hinnatud (korda)</th>
                <th>Muuda/Kustuta</th>
            </tr>
        <?php
        //sikutame andmebaasist kõik vastuse
        while($rida = mysqli_fetch_assoc($valjund)){
            //print_r($rida);
        
        ?>
            <tr>
                <td><a href="kohvik.php?id=<?php echo $rida['id']; ?>"><?php echo $rida['nimi']; ?></a></td>
                <td><?php echo $rida['asukoht']; ?></td>
                <td><?php echo $rida['keskmine_hinne']; ?></td>
                <td><?php echo $rida['hinnatud']; ?></td>
                <td><a href="muuda.php?id=<?php echo $rida['id']; ?>" class="btn btn-primary">Muuda</a></td>
                <td><a href="kustuta.php?id=<?php echo $rida['id']; ?>" class="btn btn-primary">Kustuta</a></td>
            </tr>
            <?php
                }
            ?>
        </table>
        <div class="d-flex justify-content-end ">
        <a  class="btn btn-primary" href="?prev=<?php echo $lopp;  ?>">&lt;&lt;Eelmised</a> &nbsp; 
        <a class="btn btn-primary" href="?next=<?php echo $algus;  ?>">Järgmised&gt;&gt;</a>
        </div> 
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>