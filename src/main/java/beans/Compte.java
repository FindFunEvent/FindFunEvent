package beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Comptes")
public class Compte {
	// Attributs
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String password;
	private String mail;
	@ElementCollection
	private List<String> club;
	@ElementCollection
	private List<String> selection;

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

	

	// Constructeurs
	public Compte(String username, String password, String mail, List<String> club, ArrayList<String> selection) {
		super();
		this.username = username;
		this.password = password;
		this.mail = mail;
		this.club = club;
		this.selection = selection;
	}
	
	public Compte() {
		super();
	}

	public List<String> getClub() {
		return club;
	}

	public void setClub(List<String> club) {
		this.club = club;
	}

	public List<String> getSelection() {
		return selection;
	}

	public void setSelection(List<String> selection) {
		this.selection = selection;
	}

	@Override
	public String toString() {
		return "Compte [id=" + id + ", username=" + username + ", password=" + password + ", mail=" + mail + ", club="
				+ club + ", selection=" + selection + "]";
	}

	

}
