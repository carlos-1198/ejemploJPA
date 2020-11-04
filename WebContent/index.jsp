<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nomina</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<header>
       <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #6495ED">
	       <div>
	           <a href="index.jsp" navbar-brand" style="color: Navy"> JPA Empleados App </a>
	       </div>
       </nav>
    </header>
   <div class="container">
       <div class="row">
           <h3 class="text-center pt-2">Desplegar Vista:</h3>
           <hr>
           <div class="container text-center">
               <a href="consultar-empleado.jsp" class="btn btn-success">Buscar Empleado</a>
               <a href="nomina-form.jsp" class="btn btn-primary">Registrar Empleado</a>
           </div>
       </div>
       <div class="container pt-3">
    	<div class="row">
    	<jsp:useBean id="eDao" class="nominaJPA.dao.EmpleadoDao" scope="request"></jsp:useBean>
        	<h3 class="text-center">Lista de Empleados</h3>
	        <table class="table table-bordered">
	            <thead>
	                <tr>
	                    <th>CODIGO</th>
	                    <th>CEDULA</th>
	                    <th>NOMBRE</th>
	                    <th>FECHA NACIMIENTO</th>
	                    <th>FECHA INGRESO</th>
	                    <th>FECHA RETIRO</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!--   for (Todo todo: todos) {  -->
	         		<c:forEach var="empleado" items="${eDao.list()}">
	             	<tr>
		                 <td><c:out value="${empleado.codigo}" /></td>
		                 <td><c:out value="${empleado.cedula}" /></td>
		                 <td><c:out value="${empleado.nombre}" /></td>
		                 <td><c:out value="${empleado.fechanacimiento}" /></td>
		                 <td><c:out value="${empleado.fechaingreso}" /></td>
		                 <td><c:out value="${empleado.fecharetiro}" /></td>
	            	</tr>
	         		</c:forEach>
	         	</tbody>
	     	</table>
        </div>
    </div>
  </div>     
</body>
</html>