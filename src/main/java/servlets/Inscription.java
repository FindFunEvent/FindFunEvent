package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

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

		

		boolean verifInscription = verifInscription(request, response);

		if (verifInscription == true) {
			this.getServletContext().getRequestDispatcher("/pageAccueil.jsp").forward(request, response);
		}
		if (verifInscription == false) {
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
			HttpSession session = request.getSession();
			String username = request.getParameter("identifiant");
			String mail = request.getParameter("mail");
			String password = request.getParameter("motdepasse");
			ArrayList<String> club = new ArrayList<String>();
			club.add(request.getParameter("club"));
			ArrayList<String> selection = new ArrayList<String>();
			selection.add(request.getParameter("selection"));

			if (!username.equals("") && !mail.equals("") && !password.equals("") && !club.equals("")
					&& !selection.equals("")) {
				Configuration config = new Configuration();
				SessionFactory sessionFactory = config.configure().buildSessionFactory();
				Session verifExiste = sessionFactory.openSession();
				verifExiste.beginTransaction();
				Query query = verifExiste.createQuery("from Compte c where c.username=:user");
				query.setParameter("user", username);
				List<Compte> result = query.list();
				if (result.size() == 0) {
					inscriptionValide = true;
					beans.Compte compte = (beans.Compte) new Compte(username, password, mail, club, selection);
					GestionCompte.creationCompte(compte);
					System.out.println("infos bien enregistrées " + compte.toString());
				}else {
					session.setAttribute("verif", 2);
				}

			}
			if (username.equals("") || mail.equals("") || password.equals("") || club.equals("")
					|| selection.equals("")) {
				session.setAttribute("verif", 1);
				System.out.println("Test");
			}
		}
		return inscriptionValide;
	}

}
