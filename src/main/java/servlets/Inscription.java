package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Compte;
import services.GestionCompte;

/**
 * Servlet implementation class Inscription
 */
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Inscription() {
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

		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();

		if(verifInscription(request,response)==true) {
			
			this.getServletContext().getRequestDispatcher("/pageAccueil.jsp").forward(request, response);
				}
		if(verifInscription(request,response)==false) { 
			session.setAttribute("verif", 1);
			this.getServletContext().getRequestDispatcher("/inscription.jsp").forward(request, response);
			
			
		}
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

	public boolean verifInscription(HttpServletRequest request, HttpServletResponse response) throws IOException {
		boolean inscriptionValide = false;
		if (inscriptionValide == false) {
			String username = request.getParameter("identifiant");
			String mail = request.getParameter("mail");
			String password = request.getParameter("motdepasse");
			String ville = request.getParameter("ville");

			if (!username.equals("") && !mail.equals("") && !password.equals("") && !ville.equals("")) {
				inscriptionValide = true;
				beans.Compte compte = (beans.Compte) new Compte(username, password, mail, ville);
				GestionCompte.creationCompte(compte);
				System.out.println("infos bien enregistrées " + compte.toString());
			}
			if (username.equals("") || mail.equals("") || password.equals("") || ville.equals("")) {
				System.out.println("Test");
			}
		}
		return inscriptionValide;
	}

}
