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

        if (user != null && !user.trim().isEmpty() && pass != null && !pass.trim().isEmpty()) {
            session.setAttribute("username", user);
            resp.sendRedirect("dashboard.jsp");
        } else {
            req.setAttribute("error", "Usuario o contraseña inválidos (simulado).");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
