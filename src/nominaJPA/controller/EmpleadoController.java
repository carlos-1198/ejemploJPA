package nominaJPA.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nominaJPA.model.Empleado;
import nominaJPA.dao.EmpleadoDao;

@WebServlet("/EmpleadoController")
public class EmpleadoController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public EmpleadoController() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (esValido(request.getParameter("codigo")) && esValido(request.getParameter("nombre"))
				&& esValido(request.getParameter("cedula")) && esValido(request.getParameter("fechaingreso"))
				&& esValido(request.getParameter("fechanacimiento")) && esValido(request.getParameter("fecharetiro"))) {

			Empleado empleado = new Empleado();
			EmpleadoDao dao = new EmpleadoDao();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			String codigo = request.getParameter("codigo");
			String nombre = request.getParameter("nombre");
			String cedula = request.getParameter("cedula");
			Date fechaingreso = new Date();
			Date fechanacimiento = new Date();
			Date fecharetiro = new Date();
			try {
				fechaingreso = sdf.parse(request.getParameter("fechaingreso"));
				fechanacimiento = sdf.parse(request.getParameter("fechanacimiento"));
				fecharetiro = sdf.parse(request.getParameter("fecharetiro"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			empleado.setCedula(cedula);
			empleado.setFechaingreso(fechaingreso);
			empleado.setFechanacimiento(fechanacimiento);
			empleado.setFecharetiro(fecharetiro);
			empleado.setCodigo(codigo);
			empleado.setNombre(nombre);

			dao.insert(empleado);
			
			doGet(request, response);
			
			response.sendRedirect("index.jsp?estado=Success");
		} else {
			response.sendRedirect("index.jsp?estado=Fail");
		}
	}

	public <T> boolean esValido(T valor) {
		if (valor == null) {
			return false;
		}
		return valor != "";
	}

}