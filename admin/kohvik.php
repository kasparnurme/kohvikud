<?php include('../config.php'); ?>

!<!doctype html>
<html lang="en">
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

        <style>


.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #43d037;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #43d037;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #43d000;
}
    
        </style>
    </head>

    <body>
       <div class="container">
        
        <?php       
        if(!empty($_GET['id'])) {
            $id = $_GET['id'];
            $paring = "SELECT * FROM toidukohad WHERE id='$id'";
            $valjund = mysqli_query ($yhendus, $paring);
            $rida = mysqli_fetch_assoc($valjund);
            //print_r($rida['nimi']);
            echo "<h1>Hinda kohvikut> ". $rida['nimi']."</h1>";
        } else {
            echo "Kohvikut ei leitud";
        }

        if (!empty($_GET['rate'])) {
            $id = $_GET['id'];
            $rate = $_GET['rate'];
            $nimi = $_GET['nimi'];
            $kommentaar = $_GET['kommentaar'];
            $paring = "INSERT INTO hinnangud (nimi, kommentaar, hinnang, toidukohad_id) VALUES ('$nimi', '$kommentaar', '$rate', '$id')";
        }
            //print_r($paring);
            $valjund = mysqli_query ($yhendus, $paring);
            if (!empty($_GET["nimi"]) && !empty($_GET["kommentaar"]) && !empty($_GET["rate"])) {
                $nimi = $_GET["nimi"];
                $kommentaar = $_GET["kommentaar"];
                $rate = $_GET["rate"];
                $id = $_GET["id"];
                $paring = 'INSERT INTO hinnangud (nimi, kommentaar, hinnang, toidukohad_id) VALUES ("' . $nimi . '", "' . $kommentaar . '", ' . $rate . ', ' . $id . ')';
                $valjund = mysqli_query($yhendus, $paring);
    
                // Hindajate arvu ja keskmise hinde uuendamine
                $hindajate_arv_paring = "SELECT hinnatud, keskmine_hinne FROM toidukohad WHERE id=" . $id;
                $hindajate_arv_valjund = mysqli_query($yhendus, $hindajate_arv_paring);
                $toidukoht = mysqli_fetch_assoc($hindajate_arv_valjund);
    
                $hindajate_arv = $toidukoht['hinnatud'];
                $olemasolev_keskmine = $toidukoht['keskmine_hinne'];
    
                $uus_hindajate_arv = $hindajate_arv + 1;
                $uus_keskmine = round((($olemasolev_keskmine * $hindajate_arv) + $rate) / $uus_hindajate_arv,2);
    
                $paring = 'UPDATE toidukohad SET hinnatud = ' . $uus_hindajate_arv . ', keskmine_hinne = ' . $uus_keskmine . ' WHERE id=' . $id;
                $valjund = mysqli_query($yhendus, $paring);
            if ($valjund) {
                echo "Hinnang edukalt lisatud!";
                header('Location: kohvik.php?id=' .$id);
            } else {
                echo "Hinnangu lisamine ebaõnnestus!";
            }
        }

        
        ?>
        <form action="">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <label for="nimi">nimi</label>
                    <input required type="text" id="nimi" name="nimi"><br>
                    <label for="kommentaar">kommentaar</label>
                    <textarea required name="kommentaar" id="kommentaar" cols="50" rows="4"></textarea>
                    <div class="rate">
                        <input type="radio" id="star10" name="rate" value="10" />
                        <label for="star10" title="text">10 stars</label>
                        <input type="radio" id="star9" name="rate" value="9" />
                        <label for="star9" title="text">9 stars</label>
                        <input type="radio" id="star8" name="rate" value="8" />
                        <label for="star8" title="text">8 stars</label>
                        <input type="radio" id="star7" name="rate" value="7" />
                        <label for="star7" title="text">7 stars</label>
                        <input type="radio" id="star6" name="rate" value="6" />
                        <label for="star6" title="text">6 star</label>
                        <input type="radio" id="star5" name="rate" value="5" />
                        <label for="star5" title="text">5 stars</label>
                        <input type="radio" id="star4" name="rate" value="4" />
                        <label for="star4" title="text">4 stars</label>
                        <input type="radio" id="star3" name="rate" value="3" />
                        <label for="star3" title="text">3 stars</label>
                        <input type="radio" id="star2" name="rate" value="2" />
                        <label for="star2" title="text">2 stars</label>
                        <input type="radio" id="star1" name="rate" value="1" />
                        <label for="star1" title="text">1 star</label>
                    </div>
                    <input type="hidden" name="id" value="<?php echo $id; ?>">
                    <input type="submit" value="Hinda" class="btn btn-primary">

                    

                </div>
                <div class="col-sm-3"></div>
            </div>
        </form>

        <a href="index.php" class="btn btn-primary">Tagasi</a>

        <h2>Teiste hinnangud</h2>
        <?php 
        $paring = "SELECT * FROM hinnangud WHERE toidukohad_id='$id' ORDER BY id DESC";
        $valjund = mysqli_query ($yhendus, $paring);
        while ($rida = mysqli_fetch_assoc($valjund)){
            echo "<p><strong>" .$rida['nimi']."(".$rida['hinnang']."/10) </strong></p>";
            echo "<p>".$rida['kommentaar']."</p>";
        }
        ?>
       </div>

        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
