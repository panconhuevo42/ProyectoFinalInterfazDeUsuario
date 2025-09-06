package com.tuapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("usuario");
        String pass = req.getParameter("password");

        HttpSession session = req.getSession();

        // 🔹 Usuario y contraseña simulados
        String userSimulado = "admin";
        String passSimulada = "1234";

        if (user != null && pass != null && user.equals(userSimulado) && pass.equals(passSimulada)) {
            // Guardar usuario en sesión
            session.setAttribute("username", user);
            // ✅ Redirección correcta dentro del contexto de la app
            resp.sendRedirect(req.getContextPath() + "/dashboard.jsp");
        } else {
            // Error de login simulado
            req.setAttribute("error", "Usuario o contraseña inválidos (simulado).");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}


