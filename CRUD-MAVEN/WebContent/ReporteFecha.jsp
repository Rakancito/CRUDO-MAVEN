<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	
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
				<th><a class="link-light" href="Index.jsp"> Regresar a Página de Inicio.</a></th>
				<th><a class="link-light" href="Index.jsp"> Con Ctrl + P puede guardar Reporte en PDF.</a></th>
			</tr>
		</table>
	</div>

	<div class="container">
		<div class="row">
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
							<tr>
								<th scope="row">Fecha de Registro: </th>
								<td>${ListaSuscriptores.getDateRegistro()}</td>
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