package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Compte;
import services.GestionCompte;

/**
 * Servlet implementation class Basic
 */

public class PageAccueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Compte> listeCompte = new ArrayList<Compte>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageAccueil() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("").append(request.getContextPath());
				
		HttpSession session = request.getSession();
		Configuration config = new Configuration(); 
    	SessionFactory sessionFactory = config.configure().buildSessionFactory();
		String username = request.getParameter("id");
		String password = request.getParameter("mp");
		System.out.println("coucou");
		
		if (GestionCompte.recuperationCompte(username, password) != null)

		{
			session.setAttribute("pseudoCompteActuel",
					GestionCompte.recuperationCompte(username, password).getUsername());
			session.setAttribute("mailCompteActuel", GestionCompte.recuperationCompte(username, password).getMail());
			session.setAttribute("villeCompteActuel", GestionCompte.recuperationCompte(username, password).getVille());
			System.out.println("Test Good");
		}

		this.getServletContext().getRequestDispatcher("/pageAccueil.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
