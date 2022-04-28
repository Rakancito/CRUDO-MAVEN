<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String main = ""; int accion = 3, listaVacia = 0;
	main = "/view/project.jsp";
	if (request.getAttribute("opcion") != null)
		if ((Integer)request.getAttribute("opcion") == 1)
				main = "/view/crear.jsp";
		else if ((Integer)request.getAttribute("opcion") == 2)
			main = "/view/eliminar.jsp";
		else if ((Integer)request.getAttribute("opcion") == 3)
			main = "/view/modificar.jsp";
		else if ((Integer)request.getAttribute("opcion") == 4)
			main = "/view/consultar.jsp";
	
	if (request.getAttribute("accion") != null)
		if ((Integer)request.getAttribute("accion") == 1)
			accion = 1;	
		else
			accion = 2;	
	
%>
	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
<meta charset="ISO-8859-1">
<title>Menú de Opciones</title>
</head>
<body>
<div>
	<div>
		<table border="1" class="table table-bordered table-dark">
			<tr>
				<th><a class="link-light" href="suscriptor?opcion=crear"> Crear un Suscriptor</a></th>
				<th><a class="link-light" href="suscriptor?opcion=modificar">Modificar un Suscriptor</a></th>
				<th><a class="link-light" href="suscriptor?opcion=consultar">Consultar un Suscriptor</a></th>
				<th><a class="link-light" href="suscriptor?opcion=eliminar">Eliminar un Suscriptor</a></th>
			</tr>
		</table>
		<table border="1" class="table table-bordered table-dark">
			<tr>
				<th><a class="link-light" href="suscriptor?opcion=reportefecha"> Reporte por Fecha de Suscripción</a></th>
				<th><a class="link-light" href="suscriptor?opcion=reportetipo">Reporte por Tipo de Suscripción</a></th>
				<th><a class="link-light" href="suscriptor?opcion=reportestatus">Reporte por Status de Suscripción</a></th>
			</tr>
		</table>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="border justify-content-center">
			    	<%
			      		if (accion == 1){ 
			    	%>
			    		<div class="alert alert-success" role="alert">
						<p>Tarea ejecutada con éxito</p>
						</div>
			    	<%
			      		} else if (accion == 2) {
			    	%>
			    		<div class="alert alert-danger" role="alert">
			    		<p>No se ha podido completar la tarea.</p>
			    		</div>
			      	<%
			      		}
			    	%>
					<jsp:include page="<%=main%>"></jsp:include>
				</div>
			</div>	
			<div class="col">
					<c:forEach var="ListaSuscriptores" items="${ListaSuscriptores}">
						<table border="1" class="table table-striped table-dark">
							<tr>
								<th scope="row">ID: </th>
								<td>${ListaSuscriptores.getId()}</td>
							</tr>
							<tr>
								<th scope="row">Nombre: </th>
								<td>${ListaSuscriptores.getsName()}</td>
							</tr>
							<tr>
								<th scope="row">Apellido Paterno: </th>
								<td>${ListaSuscriptores.getsLastName()}</td>
							</tr>
							<tr>
								<th scope="row">Apellido Materno: </th>
								<td>${ListaSuscriptores.getsSecondLastName()}</td>
							</tr>	
							<tr>
								<th scope="row">Servicio: </th>
								<td>${ListaSuscriptores.getsService()}</td>
							</tr>
							<tr>
								<th scope="row">Fecha de Nacimiento: </th>
								<td>${ListaSuscriptores.getDate()}</td>
							</tr>				
							<tr>
								<th scope="row">Plan: </th>
								<td>${ListaSuscriptores.getiPlan()}</td>
							</tr>
							<tr>
								<th scope="row">Status: </th>
								<td>${ListaSuscriptores.getiStatus()}</td>
							</tr>	
						</table>	
						<br>		
					</c:forEach>
					
			</div>
		
		
		</div>
	</div>
	
</div>	
</body>
</html>