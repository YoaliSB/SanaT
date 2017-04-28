package bean;

public class Flor {
	private int IDFlor;
	private String NombreFlor;
	private String DescripcionFlor;
	private int Dosis;
	private int cont;
	
	public int getDosis() {
		return Dosis;
	}
	public void setDosis(int dosis) {
		Dosis = dosis;
	}
	
	public int getCont() {
		return cont;
	}
	public void setCont(int cont) {
		this.cont = cont;
	}
	public int getIDFlor() {
		return IDFlor;
	}
	public void setIDFlor(int iDFlor) {
		IDFlor = iDFlor;
	}
	public String getNombreFlor() {
		return NombreFlor;
	}
	public void setNombreFlor(String nombreFlor) {
		NombreFlor = nombreFlor;
	}
	public String getDescripcionFlor() {
		return DescripcionFlor;
	}
	public void setDescripcionFlor(String descripcionFlor) {
		DescripcionFlor = descripcionFlor;
	}

}
