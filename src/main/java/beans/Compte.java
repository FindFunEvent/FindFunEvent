package beans;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Compte {
	// Attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String password;
	private String mail;
	private String ville;

	// Setters & getters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	// Constructeurs
	public Compte() {
		super();
	}

	public Compte(String username, String password, String mail, String ville) {
		super();
		this.username = username;
		this.password = password;
		this.mail = mail;
		this.ville = ville;
	}
	
	//Méthodes
	public String toString() {
		return "Compte [username=" + username + ", password=" + password + ", mail=" + mail + ", ville=" + ville + "]";
	}
	
}
