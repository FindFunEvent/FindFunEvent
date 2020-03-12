package services;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ModifierClub {
	// Preparation de la construction de sessions
		static Configuration config = new Configuration();
		static SessionFactory sessionFactory = config.configure().buildSessionFactory();
	public static void ajoutClub() {
		// Ouverture session
				Session session = sessionFactory.openSession();

				// Début transaction
				session.beginTransaction();
				
				// Manipulations
	}
}
