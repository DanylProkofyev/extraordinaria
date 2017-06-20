<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h2>Registrado correctamente</h2>
            <h3>Login</h3>
            <form action="/Extra1/Login">
                <p>Username: </p><input type='text' name="un" required placeholder="Username"/>
                <p>Pass: </p><input type='password' name="pw" required placeholder="Pass"/>
                <input type='submit' name='submit' value='hecho'/>
            </form>
        </div>
    </body>
</html>
