package com.crudomaven.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.crudomaven.model.suscriptor;

import crom.crudomaven.dao.SuscriptorDAO;
/**
 * Servlet implementation class SuscriptorController
 */
@WebServlet(description = "Servlet para administrar tabla Suscriptores", urlPatterns = { "/suscriptor" })
public class SuscriptorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SuscriptorDAO SuscriptorDAO; 
	
	public void init() {
		try {
			SuscriptorDAO = new SuscriptorDAO();
		} catch (Exception e) {
			// TODO: handle exception
		}
	} 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuscriptorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");
		List<suscriptor> listaSuscriptores = null;
		if (opcion.equals("reportetipo"))
		{
			try	{
				listaSuscriptores = SuscriptorDAO.obtenerSuscriptoresByTipo();
				request.setAttribute("ListaSuscriptores", listaSuscriptores);

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			RequestDispatcher requestDispatcher= request.getRequestDispatcher("ReporteTipo.jsp");
			requestDispatcher.forward(request, response);
			return;			
		}
		else if (opcion.equals("reportestatus"))
		{
			try	{
				listaSuscriptores = SuscriptorDAO.obtenerSuscriptoresByStatus();
				request.setAttribute("ListaSuscriptores", listaSuscriptores);

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			RequestDispatcher requestDispatcher= request.getRequestDispatcher("ReporteStatus.jsp");
			requestDispatcher.forward(request, response);
			return;					
		}
		else if (opcion.equals("reportefecha"))
		{
			try	{
				listaSuscriptores = SuscriptorDAO.obtenerSuscriptoresByFecha();
				request.setAttribute("ListaSuscriptores", listaSuscriptores);

			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			RequestDispatcher requestDispatcher= request.getRequestDispatcher("ReporteFecha.jsp");
			requestDispatcher.forward(request, response);
			return;					
		}	
		if (opcion.equals("crear")) {
			request.setAttribute("opcion", 1);
		} else if (opcion.equals("eliminar")) {
			request.setAttribute("opcion", 2);
		} else if (opcion.equals("modificar")) {
			request.setAttribute("opcion", 3);
		} else if (opcion.equals("consultar")) {
			request.setAttribute("opcion", 4);
		} 
		else {
			RequestDispatcher requestDispatcher= request.getRequestDispatcher("404.jsp");
			requestDispatcher.forward(request, response);
			return;
		}
		try	{
			listaSuscriptores = SuscriptorDAO.obtenerSuscriptores();
			request.setAttribute("ListaSuscriptores", listaSuscriptores);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		RequestDispatcher requestDispatcher= request.getRequestDispatcher("Index.jsp");
		requestDispatcher.forward(request, response);			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");
		suscriptor suscriptor = new suscriptor();
		if (opcion.equals("crear")) {
	
			suscriptor.setsName(request.getParameter("nombre"));
			suscriptor.setsLastName(request.getParameter("ap_paterno"));
			suscriptor.setsSecondLastName(request.getParameter("ap_materno"));
			suscriptor.setsService(request.getParameter("servicio"));
			suscriptor.setDate(request.getParameter("fecha_nacimiento"));
			suscriptor.setiPlan(Integer.parseInt((request.getParameter("plan"))));
			suscriptor.setiStatus(Integer.parseInt((request.getParameter("status"))));
			
			try {
				SuscriptorDAO.guardar(suscriptor);
				
				request.setAttribute("accion", 1);
			} catch (SQLException e) {
				request.setAttribute("accion", 2);
				e.printStackTrace();
			}
		}
		else if (opcion.equals("eliminar")) {
			int idSuscriptor = Integer.parseInt(request.getParameter("id"));
			try {
				SuscriptorDAO.eliminar(idSuscriptor);
				request.setAttribute("accion", 1);
			} catch (SQLException e) {
				request.setAttribute("accion", 2);
				e.printStackTrace();
			}			
		}
		else if (opcion.equals("modificar")) {
			
			suscriptor.setId(Integer.parseInt(request.getParameter("id")));
			suscriptor.setsName(request.getParameter("nombre"));
			suscriptor.setsLastName(request.getParameter("ap_paterno"));
			suscriptor.setsSecondLastName(request.getParameter("ap_materno"));
			suscriptor.setsService(request.getParameter("servicio"));
			suscriptor.setDate(request.getParameter("fecha_nacimiento"));
			suscriptor.setiPlan(Integer.parseInt((request.getParameter("plan"))));
			suscriptor.setiStatus(Integer.parseInt((request.getParameter("status"))));
			
			try {
				SuscriptorDAO.editar(suscriptor);
				
				request.setAttribute("accion", 1);
			} catch (SQLException e) {
				request.setAttribute("accion", 2);
				e.printStackTrace();
			}	
		}		 
		else if (opcion.equals("consultar")) {
			int idSuscriptor = Integer.parseInt(request.getParameter("id"));
			try {
				suscriptor dataSuscriptor = new suscriptor();
				dataSuscriptor = SuscriptorDAO.obtenerSuscriptor(idSuscriptor);
				request.setAttribute("dataSuscriptor", dataSuscriptor);
			} catch (SQLException e) {
				request.setAttribute("accion", 2);
				e.printStackTrace();
			}	
		}		
		doGet(request, response);
	}

}
