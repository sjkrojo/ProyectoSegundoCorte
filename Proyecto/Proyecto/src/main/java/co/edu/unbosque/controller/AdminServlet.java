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

public class AdminServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AspiranteDAO dao;
	
	public AdminServlet() {
		dao = new AspiranteDAO();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
        PrintWriter salida = resp.getWriter();
        ArrayList<AspiranteDTO> lista = (ArrayList<AspiranteDTO>) req.getSession().getAttribute("lista");

        String cedula = req.getParameter("cedula");

        dao.eliminar(dao.buscar(cedula, lista), lista);

		salida.println("<html><body onload=\"showLoginError()\">  <h1>Eliminado</h1> </body></html>");
		resp.setHeader("Refresh", "1; URL=admin.jsp");
		salida.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			resp.setContentType("text/html");
			
			String user = "adminuser";
			String password = "admin123";

			if (req.getParameter("usuario").equals(user)&& req.getParameter("contra").equals(password)){
				RequestDispatcher rd = req.getRequestDispatcher("admin.jsp");
				rd.forward(req, resp);
			} else {
				PrintWriter salida = resp.getWriter();
				salida.println("<html>");
				salida.println("<head>");
				salida.println("<tittle>");
				salida.println("<h1>");
				salida.println(" Error");
				salida.println("</h1>");
				salida.println("</tittle>");
				salida.println("</head>");
				salida.println("<body>");
				salida.println("<h3>");
				salida.println("Algun dato es incorrecto");
				salida.println("</h3>");
				salida.println("</body>");
				salida.println("</html>");
				salida.close();
			}
			
		} catch (Exception e) {
			PrintWriter salida = resp.getWriter();
			salida.println("<html>");
			salida.println("<head>");
			salida.println("<tittle>");
			salida.println("<h1>");
			salida.println(" Error");
			salida.println("</h1>");
			salida.println("</tittle>");
			salida.println("</head>");
			salida.println("<body>");
			salida.println("<h3>");
			salida.println("Algun dato es incorrectotry");
			salida.println("</h3>");
			salida.println("</body>");
			salida.println("</html>");
			salida.close();
		}
	}
	
	

}
