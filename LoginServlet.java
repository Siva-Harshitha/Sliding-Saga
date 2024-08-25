package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet {
    private LoginDAO ld = null;

    @Override
    public void init() throws ServletException {
        ld = new LoginDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uN = req.getParameter("uname");
        String pW = req.getParameter("pword");
        UserBean ub = ld.login(uN, pW);
        if (ub != null) {
            HttpSession session = req.getSession();
            session.setAttribute("ubean", ub);
            RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
            rd.forward(req, res);
        } else {
            res.sendRedirect("main.html");
        }
    }
}

