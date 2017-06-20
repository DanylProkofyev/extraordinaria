<%@page import="java.util.List"%>
<%@page import="entities.Task"%>
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
    <body class="container">
        <h1 class="jumbotron">borrar tareas</h1>
        <table class="table">
            <th>id</th><th>nombre tarea</th><th>descripcion</th><th>estado</th>
                <%
                    List<Task> lista = (List) request.getAttribute("lista");
                    for (Task t : lista) {
                        out.println("<tr>");
                        out.println("<td>" + t.getIdtask() + "</td>");
                        out.println("<td>" + t.getTitle() + "</td>");
                        out.println("<td>" + t.getContent() + "</td>");
                        if (t.getDone()) {
                            out.println("<td>finalizado</td>");
                        } else {
                            out.println("<td>pendiente</td>");
                        }
                %>
            <td>
                <form class='row' action='/Extra1/Borrar' method='get'>
                    <input type ='hidden' name ='id' value ='<%= t.getIdtask()%>'/>
                    <input class="btn btn-danger" type='submit' name='submit' value='borrar'/>
                </form>
            </td>
            <%
                    out.println("</tr>");
                }

            %>
        </table>
    </body>
</html>
