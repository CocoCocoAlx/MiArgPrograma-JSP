<%-- 
    Document   : index
    Created on : 12 abr. 2022, 23:09:09
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
        <h1>Datos de la persona</h1>
        <form action="SvPersona" method="POST">
            <p><label>DNI: </label><input type="text" name="dni"></p>
            <p><label>Nombre: </label><input type="text" name="nombre"></p>
            <p><label>Apellido: </label><input type="text" name="apellido"></p>
            <p><label>Teléfono: </label><input type="text" name="tel"></p>
            <button type="submit" >Enviar</button>
        </form>
        
        <h1>Ver lista de personas</h1>
        <p>Si desea ver la lista de personas, haga clic en el botón "Mostrar personas"</p>
        <form action="SvPersona" method="GET">
            <button type="submit"> Mostrar personas </button>
        </form>
        
        <h1>Editar personas</h1>
        <p>Ingrese la ID de la persona que quiere editar</p>
        <form action="SvModificar" method="POST">
            <p><label>ID: </label> <input type="text" name="id_modificar"></p>
            <button <input type="submit">Modificar</button>
        </form>
        
        <h1>Eliminar personas</h1>
        <p>Ingrese la ID de la persona que quiere quitar de la lista</p>
        <form action="SvBorrar" method="POST">
            <p><label>ID: </label> <input type="text" name="id_borrar"></p>
            <button <input type="submit">Eliminar</button>
        </form>
    </body>
</html>
