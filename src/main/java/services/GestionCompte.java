package services;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Compte;

public class GestionCompte {
	// Preparation de la construction de sessions
	static Configuration config = new Configuration(); 
	static SessionFactory sessionFactory = config.configure().buildSessionFactory();
		
		public static void creationCompte(Compte compteCree) {

		
			// Ouverture session
			Session session = sessionFactory.openSession();

			// Début transaction
			session.beginTransaction();

			///Manipulations
//			compteCree.setMail();
//			compteCree.setPassword();
//			compteCree.setUsername();
//			compteCree.setVille();
			
			session.save(compteCree);
			
			
			// Validation et fin de transaction
			session.getTransaction().commit();

			// Fermeture session
			session.close();
			
		}
		
		
		public static Compte recuperationCompte(String usernameTest, String passwordTest) {
	
			// Ouverture session
			Session session = sessionFactory.openSession();

			// Début transaction
			session.beginTransaction();

			///Manipulations
//			compteCree.setMail();
//			compteCree.setPassword();
//			compteCree.setUsername();
//			compteCree.setVille();
			List<Compte> compteSelectionne = session.createQuery("from Compte a where a.username LIKE '"+usernameTest+"' and a.password LIKE '"+ passwordTest+"'").list();
			
			
			
			
			// Validation et fin de transaction
			session.getTransaction().commit();

			// Fermeture session
			session.close();
			return compteSelectionne.get(0);
		}
}
