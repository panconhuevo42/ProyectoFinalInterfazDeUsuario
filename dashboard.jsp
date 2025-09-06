<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title><head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Dashboard - Alimentación Balanceada</title>
  <link rel="stylesheet" href="styles/styles.css">
</head></title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <img src="imagenes/logo.png" alt="Logo App" class="logo">
    <% 
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<h2>Bienvenido <%= username %></h2>
</header>

<main class="dashboard">
    <section class="bienvenida">
        <h2>¡Bienvenido, <%= session.getAttribute("usuario") != null ? session.getAttribute("usuario") : "Invitado" %>!</h2>
        <p>
            Este es el <b>Dashboard</b> de la aplicación <i>Alimentación Balanceada</i>.
            Aquí puedes gestionar las secciones principales, explorar los niveles de la pirámide alimenticia
            y acceder a información para llevar un estilo de vida más saludable.
        </p>
    </section>

    <section class="opciones">
        <h3>Opciones de navegación</h3>
        <ul>
            <li><a href="index.jsp">Ver pirámide alimenticia</a></li>
            <li><a href="#">Recomendaciones de nutrición</a></li>
            <li><a href="#">Gestión de usuarios (simulado)</a></li>
            <li><a href="#">Estadísticas de consumo</a></li>
        </ul>
    </section>

    <section class="logout">
        <form action="login.jsp" method="post">
            <button type="submit">Cerrar sesión</button>
        </form>
    </section>
</main>

<footer>
    <p>&copy; 2025 Alimentación Balanceada - Proyecto Académico</p>
</footer>
</body>
</html>

