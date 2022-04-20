<%-- 
    Document   : verpersonas
    Created on : 19 abr. 2022, 11:34:11
    Author     : i3-nativan
--%>

<%@page import="logic.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista de lista</title>
    </head>
    <body>
        <h1>Lista de personas</h1>
        <%
            List <Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
            for (Persona per : listaPersonas) {
        %>
        <p><b>ID:</b><%=per.getId()%></p>
        <p><b>Dni:</b><%=per.getDni()%></p>
        <p><b>Nombre:</b><%=per.getNombre()%></p>
        <p><b>Apellido:</b><%=per.getApellido()%></p>
        <p><b>Teléfono:</b><%=per.getTel()%></p>
        <p>---</p>
        <%
            }
        %>
    </body>
</html>
