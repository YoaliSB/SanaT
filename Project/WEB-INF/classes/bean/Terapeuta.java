package bean;

public class Terapeuta {
	private int IDTerapeuta;
	private String NombreTerapeuta;
	private String Login;
	private String pass;
	
	public int getIDTerapeuta() {
		return IDTerapeuta;
	}
	public void setIDTerapeuta(int iDTerapeuta) {
		IDTerapeuta = iDTerapeuta;
	}
	public String getNombreTerapeuta() {
		return NombreTerapeuta;
	}
	public void setNombreTerapeuta(String nombreTerapeuta) {
		NombreTerapeuta = nombreTerapeuta;
	}
	public String getLogin() {
		return Login;
	}
	public void setLogin(String login) {
		Login = login;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}
