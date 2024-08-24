/*
package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet{
	public LoginDAO ld=null;
	@Override
	public void init() throws ServletException{
		ld=new LoginDAO();
	}
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String uN=req.getParameter("uname");
		String pW=req.getParameter("pword");
		UserBean ub=ld.login(uN, pW);
		if(ub==null) {
			req.setAttribute("msg", "Invalid login process..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else {
			ServletContext sct=req.getServletContext();
			sct.setAttribute("ubean",ub);
			Cookie ck=new Cookie("fname",ub.getfName());
			res.addCookie(ck);
			req.getRequestDispatcher("LoginSuccess.jsp").forward(req, res);
		}
	}

}
*/
/*
package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet {
    public LoginDAO ld = null;

    @Override
    public void init() throws ServletException {
        ld = new LoginDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String uN = req.getParameter("uname");
        String pW = req.getParameter("pword");
        UserBean ub = ld.login(uN, pW);

        if (ub == null) {
            req.setAttribute("msg", "Invalid login process..<br>");
            req.getRequestDispatcher("Msg.jsp").forward(req, res);
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("ubean", ub);
            Cookie isLoggedIn = new Cookie("isLoggedIn", "true");
            res.addCookie(isLoggedIn);
            res.sendRedirect("LoginSuccess.jsp");
        }
    }
}
*/
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

