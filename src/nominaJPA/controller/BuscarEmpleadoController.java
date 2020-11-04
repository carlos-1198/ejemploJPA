package nominaJPA.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import nominaJPA.dao.EmpleadoDao;
import nominaJPA.model.Empleado;

@WebServlet("/BuscarEmpleadoController")
public class BuscarEmpleadoController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public BuscarEmpleadoController() {
		// TODO Auto-generated constructor stub
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo = request.getParameter("codigo");
		EmpleadoDao dao = new EmpleadoDao();
		Empleado empleado = dao.find(codigo);

		if(empleado!=null) {
			request.setAttribute("codigo", empleado.getCodigo());
			request.setAttribute("nombre", empleado.getNombre());
			request.setAttribute("credito", empleado.getCedula());
			request.setAttribute("fechaIngreso", empleado.getFechaingreso());
			request.setAttribute("fechaNacimiento", empleado.getFechanacimiento());
			request.setAttribute("fechaRetiro", empleado.getFecharetiro());
		}else {
			JOptionPane.showInputDialog("No existe el empleado solicitado");
		}

		request.getRequestDispatcher("/consultar-empleado.jsp").forward(request, response);
	}

}

