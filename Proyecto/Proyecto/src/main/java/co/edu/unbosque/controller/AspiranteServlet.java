package co.edu.unbosque.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import co.edu.unbosque.model.AspiranteDAO;
import co.edu.unbosque.model.AspiranteDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AspiranteServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AspiranteDAO dao;

	public AspiranteServlet() {
		dao = new AspiranteDAO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			resp.setContentType("text/html");

			String nombre = req.getParameter("nombre");

			String apellidos = req.getParameter("apellidos");

			String cedula = req.getParameter("cedula");

			String fecha_nacimiento = req.getParameter("fecha_nacimiento");

			String colegio = req.getParameter("colegio");

			String carrera = req.getParameter("carrera");

			String costo = req.getParameter("costo");

			String estrato = req.getParameter("estrato");

			String homologado = req.getParameter("homologado");

			String link_imagen = req.getParameter("link");

			dao.agregarAspirante(nombre, apellidos, cedula, fecha_nacimiento, colegio, carrera, costo,
					Integer.parseInt(estrato), homologado, link_imagen);

			PrintWriter salida = resp.getWriter();
			salida.println("<html>\r\n" + "<head>\r\n" + "<meta charset=\"UTF-8\">\r\n"
					+ "<title>Insert title here</title>\r\n" + "</head>\r\n" + "<body>\r\n" + "	<h1>Guardado</h1>\r\n"
					+ "</body>\r\n" + "</html>");
			salida.close();

		} catch (Exception e) {
			resp.setContentType("text/html");

			PrintWriter salida = resp.getWriter();
			salida.println("<html>\r\n" + "<head>\r\n" + "<meta charset=\"UTF-8\">\r\n"
					+ "<title>Insert title here</title>\r\n" + "</head>\r\n" + "<body>\r\n"
					+ "	<h1>Error Digitaste algo mal</h1>\r\n" + "</body>\r\n" + "</html>");
			salida.close();
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter salida = resp.getWriter();
		salida.println("<html>\r\n" + "<head>\r\n" + "<meta charset=\"UTF-8\">\r\n"
				+ "<title>Insert title here</title>\r\n" + "</head>\r\n" + "<body>\r\n" + "	<h1>Aspirantes</h1>\r\n"

		);

		salida.println("<table class=\"table table-striped\">\r\n" + "  <tr>\r\n" + "    <th>Nombre</th>\r\n"
				+ "    <th>Apellidos</th>\r\n" + " <th>Cedula</th>\r\n" + "<th>Fecha de nacimiento</th>\r\n"

				+ "<th>Colegio</th>\r\n"

				+ "<th>Carrera</th>\r\n"

				+ "<th>Costo</th>\r\n"

				+ "<th>Estrato</th>\r\n"

				+ "<th>Homologado</th>\r\n"

				+ "<th>Link imagen</th>\r\n"

				+ "</tr>\r\n"

		);

		for (int i = 0; i < dao.getList().size(); i++) {
			salida.println(

					"<tr>\r\n" + "<td>" + dao.getList().get(i).getNombre() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getApellidos() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getCedula() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getFecha_nacimiento() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getColegio() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getCarrera() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getCosto() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getEstrato() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getHomologado() + "</td>\r\n"

							+ "<td>" + dao.getList().get(i).getLink_imagen() + "</td>\r\n"

							+ "</tr>\r\n");

		}

		salida.println("</table>" + "</body>\r\n" + "</html>");

		salida.close();

	}

}
