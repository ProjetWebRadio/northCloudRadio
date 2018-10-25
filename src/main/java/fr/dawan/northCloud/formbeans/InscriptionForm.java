package fr.dawan.northCloud.formbeans;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class InscriptionForm {
	
	@NotEmpty
	@Size(min = 2, max = 50)
	private String name;
	
	@NotEmpty
	@Size(min = 2, max = 50)
	private String lastname;
	
	@NotEmpty
	@Size(min = 4, max = 50)
	private String username;
	
	@NotEmpty
	@Pattern(regexp = "\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b", message = "Invalid Email")
	private String email;
	
	@NotEmpty
	@Size(min = 4, max = 50)
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
