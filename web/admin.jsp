<%-- 
    Document   : admin
    Created on : 13-jun-2017, 16:03:11
    Author     : dergenburn
--%>

<%@page import="entities.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </head>
    <%List<Usuario> lista = (List) request.getAttribute("list");%>
    <body class="container">
        <h1 class="row header">Hello ADMIN!</h1>
        <br/>
        <div class="row">
            <h3>Lista Usuarios</h3>
            <table class="table">
                <th>username</th><th>name</th><th>age</th>
                    <%= lista%>
            </table>
        </div>
        <div class="row">
            <h3>Otras funcionalidades</h3>
            <form class="row" action="/Extra1/Ranking" method="get">
                <input class="btn btn-block" type='submit' name='submit' value='ranking de usuarios'/>
            </form>
            <br/>
            <form class="row" action="/Extra1/UBorrar" method="get">
                <input class="btn btn-block" type='submit' name='submit' value='borrar usuario'/>
            </form>
            <br/>
        </div>
    </body>
</html>
