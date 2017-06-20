<%-- 
    Document   : uBorrar
    Created on : 19-jun-2017, 15:27:41
    Author     : dergenburn
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%List<Usuario> lista = (List) request.getAttribute("list");%>
        <h1>Borrar Usu</h1>
        <%=lista%>
    </body>
</html>
