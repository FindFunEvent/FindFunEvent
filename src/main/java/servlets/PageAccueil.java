package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Compte;

/**
 * Servlet implementation class Basic
 */



public class PageAccueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Compte> listeCompte=new ArrayList<Compte>();  

	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageAccueil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("").append(request.getContextPath()).append("<br><h1>Bienvenue sur FindFunEvent</h1>");
		HttpSession session=request.getSession();
		String username=request.getParameter("id");
		String password=request.getParameter("mp");
		
		
		this.getServletContext().getRequestDispatcher("/pageAccueil.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
