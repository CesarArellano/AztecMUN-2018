<?php
include 'conexion.php';
$comite = $_POST['comite'];
$cq = 0;
if ($comite == "CDE") {
  $cq = 1;
}
if ($comite == "NATO") {
  $cq = 2;
}
if ($comite == "CIJ") {
  $cq = 3;
}
if ($comite == "UNEP") {
  $cq = 4;
}
$query = $con->query("SELECT * FROM Paises WHERE Id_comite = $cq");
$array = array();
while ($q = $query->fetch_assoc()) {
  $pais = $q['Paises'];
  array_push($array, $pais);
  $pais = '';
}
echo json_encode($array);
?>
