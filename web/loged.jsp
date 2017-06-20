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
    <%
        String name = (String) request.getAttribute("name");
    %>
    <body class="container">
        <h1 class="header">Hello <b><%= name%></b></h1>
        <br/>
        <div>
            <form class="row" action="/Extra1/TPendientes" method="get">
                <input type="hidden" name="name" value="<%=name%>"/>
                <input class="btn btn-block" type='submit' name='submit' value='listado de tareas pendientes'/>
            </form>
                <br/>
            <form class="row" action="/Extra1/TFin" method="get">
                <input type="hidden" name="name" value="<%=name%>"/>
                <input class="btn btn-block" type='submit' name='submit' value='listado de tareas finalizadas'/>
            </form>
                <br/>
            <form class="row" action="/Extra1/TBorrar" method="get">
                <input type="hidden" name="name" value="<%=name%>"/>
                <input class="btn btn-block" type='submit' name='submit' value='borrar tarea'/>
            </form>
        </div>
    </body>
</html>
