<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Acceder - Guía Consumo Responsable</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="login-box">
    <h2>Iniciar sesión (Simulado)</h2>
    <form action="login" method="post">
        <label for="usuario">Usuario</label>
        <input type="text" id="usuario" name="usuario" required>

        <label for="password">Contraseña</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Acceder</button>
    </form>

    <div class="error">
        <% if (request.getAttribute("error") != null) { %>
            <p style="color:red;"><%= request.getAttribute("error") %></p>
        <% } %>
    </div>

    <p><a href="index.jsp">Volver al inicio</a></p>
</div>
</body>
</html>
