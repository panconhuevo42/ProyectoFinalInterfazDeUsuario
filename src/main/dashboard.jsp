<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String usuario = (String) session.getAttribute("usuario");
    if (usuario == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
    <h1>Bienvenido, <%= usuario %>!</h1>
    <nav>
        <ul>
            <li><a href="#">Opción 1</a></li>
            <li><a href="#">Opción 2</a></li>
            <li><a href="#">Opción 3</a></li>
        </ul>
    </nav>
    <form action="LoginServlet" method="post">
        <input type="hidden" name="action" value="logout">
        <button type="submit">Cerrar Sesión</button>
    </form>
</body>
</html>
