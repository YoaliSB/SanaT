package bean;

public class Respuesta {
	private int IDRespuesta;
	private String DescripcionRespuesta;
	private int IDPregunta;
	private int IDTerapeuta;
	
	public int getIDRespuesta() {
		return IDRespuesta;
	}
	public void setIDRespuesta(int iDRespuesta) {
		IDRespuesta = iDRespuesta;
	}
	public String getDescripcionRespuesta() {
		return DescripcionRespuesta;
	}
	public void setDescripcionRespuesta(String descripcionRespuesta) {
		DescripcionRespuesta = descripcionRespuesta;
	}
	public int getIDPregunta() {
		return IDPregunta;
	}
	public void setIDPregunta(int iDPregunta) {
		IDPregunta = iDPregunta;
	}
	public int getIDTerapeuta() {
		return IDTerapeuta;
	}
	public void setIDTerapeuta(int iDTerapeuta) {
		IDTerapeuta = iDTerapeuta;
	}
}
