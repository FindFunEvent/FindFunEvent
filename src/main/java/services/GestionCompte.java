package services;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Compte;

public class GestionCompte {
	
		
		public static void creationCompte(Compte compteCree) {
			
			// Preparation de la construction de sessions
			Configuration config = new Configuration(); 
	    	SessionFactory sessionFactory = config.configure().buildSessionFactory();
		
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
			
			// Preparation de la construction de sessions
			Configuration config = new Configuration(); 
	    	SessionFactory sessionFactory = config.configure().buildSessionFactory();
		
			// Ouverture session
			Session session = sessionFactory.openSession();

			// Début transaction
			session.beginTransaction();

			///Manipulations
//			compteCree.setMail();
//			compteCree.setPassword();
//			compteCree.setUsername();
//			compteCree.setVille();
			Compte compteSelectionne = (Compte) session.createQuery("from comptes a where a.username LIKE '"+usernameTest+"' and a.password LIKE '"+ passwordTest+"'");
			
			
			
			
			// Validation et fin de transaction
			session.getTransaction().commit();

			// Fermeture session
//			session.close();
			return compteSelectionne;
		}
}
