<%@ page import="java.util.List" %>
<%@ page import="nominaJPA.model.Empleado" %>
<%@page import="nominaJPA.dao.EmpleadoDao"%> 
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Consultar</title>
</head>
<body>
	<header>
       <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #6495ED">
	       <div>
	           <a class="navbar-brand" style="color: Navy"> JPA Empleados App </a>
	       </div>
       </nav>
    </header>
   	<div class="row">
   		<div class="container">
   			<nav class="navbar navbar-light bg-light">
			  <form class="form-inline" action="BuscarEmpleadoController" method="post">
			    <input name="codigo" class="form-control mr-sm-2" type="text">
			    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
			  </form>
			</nav>
			
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
	             	<tr>
		                 <td>
		                     <c:out value="${codigo}" />
		                 </td>
		                 <td>
		                     <c:out value="${cedula}" />
		                 </td>
		                 <td>
		                     <c:out value="${nombre}" />
		                 </td>
		                 <td>
		                     <c:out value="${fechanacimiento}" />
		                 </td>
		                 <td>
		                     <c:out value="${fechaingreso}" />
		                 </td>
		                 <td>
		                     <c:out value="${fecharetiro}" />
		                 </td>
	            	</tr>
	         	</tbody>
	     	</table>
        </div>
   	 </div>		
</body>
</html>