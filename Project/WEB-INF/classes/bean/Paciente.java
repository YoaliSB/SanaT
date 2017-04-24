package bean;

public class Paciente {
	private int IDPaciente;
	private String NombrePaciente;
	private int Edad;
	private String DescripcionPaciente;
	private String sexo;
	private String Direccion;
	private String Telefono;
	private String Mail;
	private int IDTerapeuta;
	
	public int getIDPaciente() {
		return IDPaciente;
	}
	public void setIDPaciente(int iDPaciente) {
		IDPaciente = iDPaciente;
	}
	public String getNombrePaciente() {
		return NombrePaciente;
	}
	public void setNombrePaciente(String nombrePaciente) {
		NombrePaciente = nombrePaciente;
	}
	public int getEdad() {
		return Edad;
	}
	public void setEdad(int edad) {
		Edad = edad;
	}
	public String getDescripcionPaciente() {
		return DescripcionPaciente;
	}
	public void setDescripcionPaciente(String descripcionPaciente) {
		DescripcionPaciente = descripcionPaciente;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public String getTelefono() {
		return Telefono;
	}
	public void setTelefono(String telefono) {
		Telefono = telefono;
	}
	public String getMail() {
		return Mail;
	}
	public void setMail(String mail) {
		Mail = mail;
	}
	public int getIDTerapeuta() {
		return IDTerapeuta;
	}
	public void setIDTerapeuta(int iDTerapeuta) {
		IDTerapeuta = iDTerapeuta;
	}
}
