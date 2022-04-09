
	<h1>Crear Suscriptor</h1><br>

	<form action="/CRUD-JAVA/suscriptor?opcion=crear" method="post">
		<div class="form-group">
		<label for="Nombre">Nombre</label>
		<input class="form-control" type="text" name="nombre" size="50">
		</div>
		<div class="form-group">
		<label for="ap_paterno">Apellido Paterno:</label>
		<input class="form-control" type="text" name="ap_paterno" size="50">
		</div>
		<div class="form-group">
		<label for="ap_materno">Apellido Materno</label>
		<input class="form-control" type="text" name="ap_materno" size="50">
		</div>
		<div class="form-group">
		<label for="servicio">Servicio</label>
		<input class="form-control" type="text" name="servicio" size="50">
		</div>
		<div class="form-group">
		<label for="fecha_nacimiento">Fecha de Nacimiento</label>
				<input class="form-control" type="date" id="start" name="fecha_nacimiento"
       					value="2022-04-08"
       					min="1910-01-01" max="2040-01-01">
       	</div>
       	<div class="form-group">				
		<label for="plan">Plan</label>
				<select class="form-control form-control-lg" name="plan">
				  <option value="0">Individual</option>
				  <option value="1" selected>Duo</option>
				  <option value="2">Familiar</option>
				  <option value="3">Estudiantes</option>
				</select>
		</div>
		<div class="form-group">
		<label for="status">
					Status	
		</label>
				<select class="form-control form-control-lg" name="status">
				  <option value="0">OK</option>
				  <option value="1" selected>BAN</option>
				</select>

		</div>
		<br>
		<input class="btn btn-primary mb-2" type="submit" value="Guardar">
		</form>

