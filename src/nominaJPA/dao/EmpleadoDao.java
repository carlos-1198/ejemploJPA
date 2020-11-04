package nominaJPA.dao;

import nominaJPA.model.Empleado;
import nominaJPA.dao.GenericDao;
import nominaJPA.util.Conexion;

public class EmpleadoDao 
	extends Conexion<Empleado> 
	implements GenericDao<Empleado> {
	
	public EmpleadoDao() {
		super(Empleado.class);
	}
}
