package servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tp.util.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/public/login")
public class LoginServlet extends GenericTpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean usr;
		if(request.getParameter("password").equals("pwd")) {
			usr = new UserBean();
			usr.setLogin(request.getParameter("login"));
			usr.setLoginDate(new Date());
			request.getSession().setAttribute("USER", usr);
			//response.getWriter().append("L'utilisateur " + usr.getLogin() + " est connecte depuis le " + usr.getLoginDate()).append(request.getContextPath());
			response.sendRedirect("../private/home.jsp");
		}
		else {
			request.getSession().setAttribute("ERROR", "Authentification incorrecte");
			response.sendRedirect("./login.jsp");
		}
	}

}
