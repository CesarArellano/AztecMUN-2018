<?php
include 'conexion.php';
$nombre = $_POST['nombre'];
$matricula = $_POST['matricula'];
$grupo = $_POST['grupo'];
$comite = $_POST['comite'];
$mail = $_POST['mail'];
$pais = $_POST['pais'];
$numero = $_POST['numero'];

$consulta = $con->query("SELECT * FROM Registro WHERE Matricula = $matricula");

$number = mysqli_num_rows($consulta);
if ($number >= 1 ) {
  echo "Lo sentimos, ya estás registrado):";
}else{
  $query = $con->query("INSERT INTO Registro VALUES('$nombre', '$matricula', '$grupo', '$comite', '$mail', '$pais', '$numero')");
  $nquery = $con->query("DELETE FROM Paises WHERE Paises = '$pais'");
  if ($query && $nquery) {
    echo "¡Te has registrado con éxito! <br> Revisa tu correo para confirmar tus datos. <br> Pd. Si no te aparece en tu bandeja principal, verifica en correo no deseado.";
    // Datos del Formulario//
//Destinatario AztecMun//
$destinoa = "aztecmun2018@aztecmun.com.mx";
$asuntoa = "Registro AztecMun";
$mensajea = "Nombre: $nombre \n";
$mensajea .= "Correo: $mail \n";
$mensajea .= "Matrícula: $matricula \n";
$mensajea .= "Grupo: $grupo \n";
$mensajea .= "Comité: $comite \n";
$mensajea .= "País: $pais \n";
$mensajea .= "Número Telefónico: $numero \n";

//Destinatario Usuario//
$destino = "$mail";
$asunto = "Registro AztecMun";
$mensaje = "--- Registro Completo ---\n \n";
$mensaje .= "Estimado(a) $nombre, le notificamos que se ha registrado de manera éxitosa, también te recordamos hacer tu pago lo antes posible.\n \n";
$mensaje .= "Datos Registrados: \n \n";
$mensaje .= "Nombre: $nombre \n";
$mensaje .= "Correo: $mail \n";
$mensaje .= "Matrícula: $matricula \n";
$mensaje .= "Grupo: $grupo \n";
$mensaje .= "Comité: $comite \n";
$mensaje .= "País: $pais \n";
$mensaje .= "Número Telefónico: $numero \n\n";
$mensaje .= "Te esperamos en las próximas sesiones sabáticas.\n \n";
$mensaje .= "De antemano, gracias por tu participación. \n \n";
$mensaje .= "Saludos cordiales. \n";
$mensaje .= "Atte. Admin AztecMun. \n";


//Enviando Correos//
mail($destinoa,$asuntoa,$mensajea);
mail($destino,$asunto,$mensaje);
  }else{
    echo "Ha ocurrido un error):";
  }
}
?>
