<?php 
include 'conexion.php';
/* comprobar la conexión */
if (mysqli_connect_errno()) {
    printf("Falló la conexión: %s\n", mysqli_connect_error());
    exit();
}
// Datos del Formulario//
        $Nombre=$_POST['nombre'];
        $Correo=$_POST['mail'];
        $Asunto=$_POST['asunto'];
        $Comentario=$_POST['comentario'];

//Destinatario AztecMun//
$destinoa = "aztecmun2018@aztecmun.com.mx";
$desdea = "Desde: $Nombre";
$asuntoa = "Contacto AztecMun";
$mensajea = "Nombre: $Nombre \n"; 
$mensajea .= "Correo: $Correo \n"; 
$mensajea .= "Asunto: $Asunto \n"; 
$mensajea .= "Mensaje: $Comentario \n"; 

//Destinatario Usuario//
$destino = "$Correo";
$asunto = "Contacto AztecMun";
$mensaje = "Estimado(a) $Nombre, le notificamos que su comentario ha sido recibido.\n"; 
$mensaje .= "Pronto estaremos en contacto con usted.\n"; 
$mensaje .= "De antemano, gracias. \n"; 
$mensaje .= "Saludos cordiales. \n"; 
$mensaje .= "Atte. Admin AztecMun. \n"; 


//Enviando Correos//
mail($destinoa,$asuntoa,$mensajea);
mail($destino,$asunto,$mensaje);


        $insertar = "INSERT INTO Contacto VALUES ('$ID','$Nombre','$Correo','$Asunto','$Comentario')";
        if(!mysqli_query($con, $insertar)){
        printf("Errormessage: %s\n", mysqli_error($con));
        header('location: alerta.php?mensaje=Algo salio mal, intenta de nuevo&t=error');
        }
        else{
        header('location: alerta.php?mensaje=Tu comentario ha sido enviado con exito; corrobora por correo que tu solicitud haya sido entregada. Pd. Si no aparece en tu bandeja principal, checa tu correo no deseado. &t=success');
        }

mysqli_close($con);
 ?>
