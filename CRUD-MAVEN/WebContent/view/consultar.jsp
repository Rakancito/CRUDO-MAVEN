
		<h1>Consultar suscriptor </h1>
		<form action="/CRUD-JAVA/suscriptor?opcion=consultar" method="post">
			<div class="form-group">
			<label for="id">ID Suscriptor</label>
			<input class="form-control" type="number" name="id" min="1" size="50">
			</div>
			<input type="submit" class="btn btn-primary mb-2" value="Consultar Suscriptor">
		</form>
		<div>
<%
	if (request.getAttribute("dataSuscriptor") != null) {
%>

		<table border="1" class="table">
			<tr>
				<th>Nombre: </th>
				<td>${dataSuscriptor.getsName()}</td>
			</tr>
			<tr>
				<th>Apellido Paterno: </th>
				<td>${dataSuscriptor.getsLastName()}</td>
			</tr>
			<tr>
				<th>Apellido Materno: </th>
				<td>${dataSuscriptor.getsSecondLastName()}</td>
			</tr>	
			<tr>
				<th>Servicio: </th>
				<td>${dataSuscriptor.getsService()}</td>
			</tr>
			<tr>
				<th>Fecha de Nacimiento: </th>
				<td>${dataSuscriptor.getDate()}</td>
			</tr>				
			<tr>
				<th>Plan: </th>
				<td>${dataSuscriptor.getiPlan()}</td>
			</tr>
			<tr>
				<th>Status: </th>
				<td>${dataSuscriptor.getiStatus()}</td>
			</tr>	
		</table>
		
<%
	}
%>

</div>
