package co.edu.unbosque.controller;

import java.io.IOException;
import java.io.PrintWriter;

import co.edu.unbosque.model.AspiranteDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ActualizarServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private AspiranteDAO dao;
	
	public ActualizarServlet() {
		dao = new AspiranteDAO();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String estrato_nuevo = req.getParameter("estrato");
		String cedula = req.getParameter("cedula");
		String nombre_nuevo = req.getParameter("nombre");
		String apellidos_nuevo = req.getParameter("apellido");
		String fecha_nacimiento_nuevo = req.getParameter("fecha");
		String colegio_nuevo = req.getParameter("colegio");
		String carrera_nuevo = req.getParameter("carrera");
		String costo_nuevo = req.getParameter("costo");
		String homologado_nuevo = req.getParameter("homologado");
		String link_imagen_nuevo = req.getParameter("link");
		if (dao.actualizar(cedula, nombre_nuevo, apellidos_nuevo, fecha_nacimiento_nuevo, colegio_nuevo, carrera_nuevo,
				costo_nuevo, Integer.parseInt(estrato_nuevo), homologado_nuevo, link_imagen_nuevo) == true) {
			PrintWriter salida = resp.getWriter();
			salida.println("<html>");
			salida.println("<head>");
			salida.println("<tittle>");
			salida.println("<h1>");
			salida.println(" Actualizacion");
			salida.println("</h1>");
			salida.println("</tittle>");
			salida.println("</head>");
			salida.println("<body>");
			salida.println("<h3>");
			salida.println("Persona actualizada con exito");
			salida.println("</h3>");
			salida.println("</body>");
			salida.println("</html>");
			salida.close();
		} else {
			PrintWriter salida = resp.getWriter();
			salida.println("<html>");
			salida.println("<head>");
			salida.println("<tittle>");
			salida.println("<h1>");
			salida.println(" Actualizacion");
			salida.println("</h1>");
			salida.println("</tittle>");
			salida.println("</head>");
			salida.println("<body>");
			salida.println("<h3>");
			salida.println("Persona NO actualizada o existente");
			salida.println("</h3>");
			salida.println("</body>");
			salida.println("</html>");
			salida.close();
		}

	}

}
