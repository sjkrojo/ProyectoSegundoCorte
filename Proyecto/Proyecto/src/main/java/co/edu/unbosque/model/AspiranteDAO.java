package co.edu.unbosque.model;

import java.util.ArrayList;

public class AspiranteDAO {

	private ArrayList<AspiranteDTO> list;

	public AspiranteDAO() {
		list = new ArrayList<AspiranteDTO>();

	}

	public void agregarAspirante(String nombre, String apellidos, String cedula, String fecha_nacimiento,
			String colegio, String carrera, String costo, int estrato, String homologado, String link_imagen) {

		list.add(new AspiranteDTO(nombre, apellidos, cedula, fecha_nacimiento, colegio, carrera, costo, estrato,
				homologado, link_imagen));
		
	}

	public boolean eliminar(int index, ArrayList<AspiranteDTO> list) {
        boolean found = false;
        try {
            list.remove(index);
            found = true;
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
        } catch (Exception e) {
            found = false;
        }
        return found;
    }
	
	public int buscar(String aux, ArrayList<AspiranteDTO> list) {

        for (int i = 0; i < list.size(); i++) {

            if (aux.equals(list.get(i).getCedula())) {
                return i;
            }
        }
        return -1;
    }

	public String mostrar() {
		StringBuilder sb = new StringBuilder("");
		for (AspiranteDTO aspirante : list) {
			sb.append(aspirante.toString());
		}

		return sb.toString();
	}

	public boolean actualizar(String cedula, String nombre_nuevo, String apellidos_nuevo, String fecha_nacimiento_nuevo,
			String colegio_nuevo, String carrera_nuevo, String costo_nuevo, int estrato_nuevo, String homologado_nuevo,
			String link_imagen_nuevo) {
		try {
			for (int i = 0; i < list.size(); i++) {
				if (list.get(i).getCedula().equals(cedula)) {
					list.get(i).setNombre(nombre_nuevo);
					list.get(i).setApellidos(apellidos_nuevo);
					list.get(i).setFecha_nacimiento(fecha_nacimiento_nuevo);
					list.get(i).setColegio(colegio_nuevo);;
					list.get(i).setCarrera(carrera_nuevo);
					list.get(i).setCosto(costo_nuevo);
					list.get(i).setEstrato(estrato_nuevo);
					list.get(i).setHomologado(homologado_nuevo);
					list.get(i).setLink_imagen(link_imagen_nuevo);
				}
			}
			return true;
		} catch (IndexOutOfBoundsException e) {
			return false;
		} catch (Exception e) {
			return false;
		}
	}

	public ArrayList<AspiranteDTO> getList() {
		return list;
	}

	public void setList(ArrayList<AspiranteDTO> list) {
		this.list = list;
	}

}
