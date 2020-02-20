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
//		System.out.println("coucou");
		response.getWriter().append("").append(request.getContextPath());

		HttpSession session = request.getSession();

		String username = request.getParameter("id");
		String password = request.getParameter("mp");
//		System.out.println(username);
//		System.out.println(password);
		Compte compteChoisi = GestionCompte.recuperationCompte(username, password);
		if (compteChoisi != null){
			session.setAttribute("pseudoCompteActuel", compteChoisi.getUsername());
			session.setAttribute("mailCompteActuel", compteChoisi.getMail());
			session.setAttribute("villeCompteActuel", compteChoisi.getVille());
//			System.out.println("Test Good");
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
