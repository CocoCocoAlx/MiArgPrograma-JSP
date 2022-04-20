<%-- 
    Document   : modificar
    Created on : 19 abr. 2022, 21:53:36
    Author     : i3-nativan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la persona a editar</h1>
        <form action="SvModDatos "method="POST">
            <p><label>DNI: </label><input type="text" name="dni"></p>
            <p><label>Nombre: </label><input type="text" name="nombre"></p>
            <p><label>Apellido: </label><input type="text" name="apellido"></p>
            <p><label>Teléfono: </label><input type="text" name="tel"></p>
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>
