<?php include('../config.php'); ?>
<?php
session_start();
if (!isset($_SESSION['kasutaja'])) {
    header('Location: login.php');
    exit;
}

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $id = intval($_GET['id']);
$paring = "DELETE FROM toidukohad WHERE id =".$_GET['id'] ;
$valjund = mysqli_query($yhendus, $paring);
if ($valjund) {
    echo "Kustutamine õnnestus";
    header('Location: index.php');
}
}
?>