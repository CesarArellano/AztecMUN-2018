<?php
$seleccion = $_POST['valores'];
if ($seleccion == "Bachillerato") {
  header('location: registro.html');
}else{
  header('location: secundaria.html');
}
 ?>
