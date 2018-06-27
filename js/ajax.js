function insertar(){
  var nombre = document.getElementById('nombre').value;
  var matricula = document.getElementById('matricula').value;
  var grupo = document.getElementById('sel2').value;
  var comite = document.getElementById('comite').value;
  var pais = document.getElementById('pais').value;
  var mail = document.getElementById('mail').value;
  var numero = document.getElementById('numero').value;
  var dataen = "nombre="+nombre+"&matricula="+matricula+"&grupo="+grupo+"&comite="+comite+"&pais="+pais+"&mail="+mail+"&numero="+numero;
  var validacion = true;
  var respuesta = "";
  if (nombre == "" || nombre == null) {
    validacion = false;
    respuesta += "Ingrese su nombre<br>";
  }
  if (matricula == "" || matricula == null || matricula == " ") {
    validacion = false;
    respuesta += "Ingrese su matricula<br>";
  }
  if (grupo == "" || grupo == null || grupo == " ") {
    validacion = false;
    respuesta += "Ingrese su grupo<br>";
  }
  if (comite == "" || comite == null || comite == " ") {
    validacion = false;
    respuesta += "Ingrese un comité<br>";
  }
  if (pais == "" || pais == null || pais == " ") {
    validacion = false;
    respuesta += "Seleccione un país<br>";
  }
  if (mail == "" || mail == null || mail == " ") {
    validacion = false;
    respuesta += "Ingrese su correo electrónico<br>";
  }
  if (numero == "" || numero == null || numero == " ") {
    validacion = false;
    respuesta += "Ingrese su número telefónico<br>";
  }
  if(nombre.length < 10){
    validacion = false;
    respuesta += "Su nombre debe de contener por lo menos 10 caracteres<br>";
  }
  if (matricula.length > 8 || matricula.length < 8) {
    validacion = false;
    respuesta += "La matricula debe contener solo 8 caracteres numericos<br>";
  }
  var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  if (!expr.test(mail)){
      validacion = false;
      respuesta += "Ingrese un correo con el formato válido<br>";
  }
  if(numero < 5500000000){
    validacion = false;
    respuesta += "El número debe comenzar por 55<br>";
  }
  if (numero.length < 10 || numero.length > 10) {
    validacion = false;
    respuesta += "El número telefónico debe tener 8 digitos más la clave<br>";
  }


  if (validacion) {
    $.ajax({
    type: 'post',
    url: 'data.php',
    data: dataen,
    beforeSend: function() {
        $("#formulario").slideUp();
        $("#respuesta").html("<div class='progress'><div class = 'indeterminate'></div></div><br>Espere un momento mientras sus datos son enviados...");
    },
    success: function(respond) {
      $("#formulario").slideUp();
      $("#respuesta").html(respond);
    },
    error : function(xhr, status) {
        $("#respuesta").html("Lo sentimos, hemos tenido un problema): <br> Intentelo más tarde");
    }
  });
  }else{
    $("#validacion").html(respuesta);
  }
  return false;
}
