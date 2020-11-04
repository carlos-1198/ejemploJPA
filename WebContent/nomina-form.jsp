<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
   <header>
       <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #6495ED">
	       <div>
	           <a href="index.jsp" class="navbar-brand" style="color: Navy"> JPA Empleados App </a>
	       </div>
       </nav>
    </header>
   <br>
   <div class="container col-md-10">
      <form action="EmpleadoController" method="post">
          <h1>Registrar Carrera</h1>
          
          <div class="form-group row">
			<label class="col-2" for="codigo">Codigo</label>
		  	<div class="col-8">
			   <input type="text" class="form-control" id="codigo" name="codigo" aria-describedby="nombre" required>
		  	</div>
		  </div>
	
		  <div class="form-group row">
		    <label class="col-2" for="cedula">Cedula</label>
		    <div class="col-8">
		    	<input type="text" class="form-control" id="cedula" name="cedula" aria-describedby="descripcion" required>
		    </div>	    
		  </div>
		  
		  <div class="form-group row">
		    <label class="col-2" for="nombre">Nombre</label>
		    <div class="col-8">
		    	<input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="descripcion" required>
		    </div>
		  </div>

		  <div class="form-group row">
  			<label class="col-2" for="fechanacimiento">Fecha de nacimiento</label>
  			<div class="col-8">
    			<input class="form-control" type="date" value="2020-11-04" id="fechanacimiento" name="fechanacimiento">
  			</div>
		  </div>
		  
		  <div class="form-group row">
  			<label class="col-2" for="fechaingreso">Fecha de ingreso</label>
  			<div class="col-8">
    			<input class="form-control" type="date" value="2020-11-04" id="fechaingreso" name="fechaingreso">
  			</div>
		  </div>
		  
		  <div class="form-group row">
  			<label class="col-2" for="fecharetiro">Fecha de retiro</label>
  			<div class="col-8">
    			<input class="form-control" type="date" value="2020-11-04" id="fecharetiro" name="fecharetiro">
  			</div>
		  </div>
		  
		  <div class="row">
    		<button type="submit" class="btn btn-success">Agregar</button>
    		<a class="btn btn-primary" href="index.jsp">Regresar</a>
		  </div>
      </form>
    </div>
</body>
</html>