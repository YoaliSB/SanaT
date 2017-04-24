import java.sql.Date;

public class Receta {
	private int IDReceta;
	private Date Fecha_De_Vencimiento;
	private int IDTerapeuta;
	private int IDPaciente;
	
	public int getIDReceta() {
		return IDReceta;
	}
	public void setIDReceta(int iDReceta) {
		IDReceta = iDReceta;
	}
	public Date getFecha_De_Vencimiento() {
		return Fecha_De_Vencimiento;
	}
	public void setFecha_De_Vencimiento(Date fecha_De_Vencimiento) {
		Fecha_De_Vencimiento = fecha_De_Vencimiento;
	}
	public int getIDTerapeuta() {
		return IDTerapeuta;
	}
	public void setIDTerapeuta(int iDTerapeuta) {
		IDTerapeuta = iDTerapeuta;
	}
	public int getIDPaciente() {
		return IDPaciente;
	}
	public void setIDPaciente(int iDPaciente) {
		IDPaciente = iDPaciente;
	}
}
