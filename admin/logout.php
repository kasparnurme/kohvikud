<?php   
session_start();
if (isset($_SESSION['kasutaja'])) {
session_destroy();
header('location: login.php'); 
exit;
}
?>