package co.edu.unbosque.model;

public class AspiranteDTO {

	private String nombre;
	private String apellidos;
	private String cedula;
	private String fecha_nacimiento;
	private String colegio;
	private String carrera;
	private String costo;
	private int estrato;
	private String homologado;
	private String link_imagen;

	public AspiranteDTO() {
		// TODO Auto-generated constructor stub
	}

	public AspiranteDTO(String nombre, String apellidos, String cedula, String fecha_nacimiento, String colegio,
			String carrera, String costo, int estrato, String homologado, String link_imagen) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.cedula = cedula;
		this.fecha_nacimiento = fecha_nacimiento;
		this.colegio = colegio;
		this.carrera = carrera;
		this.costo = costo;
		this.estrato = estrato;
		this.homologado = homologado;
		this.link_imagen = link_imagen;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getFecha_nacimiento() {
		return fecha_nacimiento;
	}

	public void setFecha_nacimiento(String fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}

	public String getColegio() {
		return colegio;
	}

	public void setColegio(String colegio) {
		this.colegio = colegio;
	}

	public String getCarrera() {
		return carrera;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public String getCosto() {
		return costo;
	}

	public void setCosto(String costo) {
		this.costo = costo;
	}

	public int getEstrato() {
		return estrato;
	}

	public void setEstrato(int estrato) {
		this.estrato = estrato;
	}

	public String getHomologado() {
		return homologado;
	}

	public void setHomologado(String homologado) {
		this.homologado = homologado;
	}

	public String getLink_imagen() {
		return link_imagen;
	}

	public void setLink_imagen(String link_imagen) {
		this.link_imagen = link_imagen;

	}

	@Override
	public String toString() {
		String res = ("Nombre: " + this.nombre + " Apellido: " + this.apellidos + " Cedula: " + this.cedula
				+ " Fecha de nacimiento: " + this.fecha_nacimiento + " Colegio: " + this.colegio + " Carrera: "
				+ this.carrera + " Costo: " + this.costo + " Estrato: " + this.estrato + " Homologado: "
				+ this.homologado + " Link de imagen: " + this.link_imagen + "\n");
		return res;
	}

}