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

public class PageCalendrier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageCalendrier() {
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
			session.setAttribute("clubCompteActuel", compteChoisi.getClub());
			session.setAttribute("selectionCompteActuel", compteChoisi.getSelection());
			session.setAttribute("connecte",1);
//			System.out.println("Test Good");
		}
		else {
			this.getServletContext().getRequestDispatcher("/calendrier.jsp").forward(request, response);

		}
		
		
		this.getServletContext().getRequestDispatcher("/calendrier.jsp").forward(request, response);

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
	
	
	public boolean verifConnexion(HttpServletRequest request, HttpServletResponse response) throws IOException {
		boolean connexionValide = false;
		if (connexionValide == false) {
			String username = request.getParameter("identifiant");
			String password = request.getParameter("motdepasse");
			

			if (!username.equals("") && !password.equals("")) {
				connexionValide = true;
			
			}
			if (username.equals("") || password.equals("")) {
				System.out.println("Test");
			}
		}
		return connexionValide;
	}

}