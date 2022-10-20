<%-- 
    Document   : registrarvista
    Created on : 8/09/2022, 03:57:19 PM
    Author     : juanc
--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title></title> 
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="shortCut icon" type="image/png" href="images/favicon.png">
    

</head>  
<body>
    <form class="formulario" method="post" action="Valid/regval.jsp" >
    
    <h1>Registrate</h1>
     <div class="contenedor">
     
     <div class="input-contenedor">
         <i class="fas fa-user icon"></i>
         <input type="text" placeholder="Nombre Completo" id="nombre" name="nombre">
         
         </div>
         
         <div class="input-contenedor">
         <i class="fas fa-envelope icon"></i>
         <input type="text" placeholder="Correo Electronico" id="correo" name="correo">
         
         </div>
         
         <div class="input-contenedor">
        <i class="fas fa-key icon"></i>
         <input type="password" placeholder="Contraseña" id="pss" name="pss">
         
         </div>
         <input type="submit" value="Registrate" class="button">
         <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>
         <p>¿Ya tienes una cuenta?<a class="link" href="loginvista.jsp">Iniciar Sesion</a></p>
         <p><a class="link" href="index.jsp">Regresar </a></p>
     </div>
    </form>
</body>
</html>