<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Gestor de Alimentación</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Iniciar Sesión</h2>

    <!-- Mostrar error si existe -->
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color:red;"><%= error %></p>
    <%
        }
    %>

    <!-- Formulario de login -->
    <form action="login" method="post">
        <label for="usuario">Usuario:</label><br>
        <input type="text" id="usuario" name="usuario" required><br><br>

        <label for="password">Contraseña:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <button type="submit">Acceder</button>
    </form>

    <br>
    <a href="index.jsp">Volver al inicio</a>
</body>
</html>
