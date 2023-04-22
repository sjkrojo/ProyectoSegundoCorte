<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Panel Administración</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<link href="styleAdmin.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<header>

		<div class="text-center">

			<h2>
				<img
					src="https://artemisa.unbosque.edu.co/serviciosacademicos/consulta/educacioncontinuada/certificadodiploma/assets/imgs/logoUniversidadElBosque.png"
					alt="Logo" width="160" height="80"
					class="d-inline-block align-text-mid" /> Universidad el Bosque -
				Panel de administración
			</h2>
		</div>
	</header>
	<section>

		<h3 id="inicio">
			- ¿Deseas ingresar un aspirante? <a class="btn btn-primary"
				href="formulario.jsp" role="button">Click aquí</a>
		</h3>
		
		<div class="row">
		<form name="actualizar" action="/Proyecto/acservlet"
		method=POST>

		<h3 id="inicio">- ¿Actualizar un aspirante?</h3>

		<h3 id="inicio">
			Ingrese numero de documento a actualizar: <input class="box"
				type="text" pattern="[0-9]+" name="documento" />
		</h3>
		<br />
		<section class="contact" id="contact">

			<div class="row">
				<form>

					<h3 class="heading" id="heading">Formulario para actualizar</h3>

					<div class="row">


						<h3 class="font-monospace fs-8">
							Ingrese su nombre: <input class="box" type="text"
								pattern="[A-Za-z]+" name="nombre" />
						</h3>

						<h3 class="font-monospace fs-8">
							Ingrese su apellido: <input class="box" type="text"
								pattern="[A-Za-z]+" name="apellido" />
						</h3>

						<label class="font-monospace fs-8" id="labe" for="start">Fecha
							de nacimiento: <input class="box" type="date" id="fecha"
							name="fecha" min="1935-01-01" max="2009-12-31" />
						</label>

						<h3 class="font-monospace fs-8">
							Ingrese nombre del colegio donde se graduo: <input class="box"
								type="text" name="colegio" pattern="[A-Za-z]+" />
						</h3>

						<div id="divSelect">

							<h3 id="h3Select" class="font-monospace fs-8">Carrera a la
								que aspira ingresar:</h3>
							<select class="form-select" id="select1" name="carrera"
								aria-label="Escoja carrera">


								<option disabled="disabled" selected="selected">Carrera:
								</option>

								<option value="Arquitectura">Arquitectura</option>

								<option value="Arte Dramático">Arte Dramático</option>

								<option value="Artes Plásticas">Artes Plásticas</option>

								<option value="Diseño Industrial">Diseño Industrial</option>

								<option value="Diseño de Comunicación">Diseño de
									Comunicación</option>

								<option value="Formación Musical">Formación Musical</option>

								<option value="Ciencia Política y Gobierno">Ciencia
									Política y Gobierno</option>

								<option value="Filosofía">Filosofía</option>

								<option value="Licenciatura en Educación Infantil">Licenciatura
									en Educación Infantil</option>

								<option value="Psicología">Psicología</option>

								<option
									value="Licenciatura en Bilingüismo con Énfasis en la Enseñanza del Inglés">Licenciatura
									en Bilingüismo con Énfasis en la Enseñanza del Inglés</option>

								<option
									value="Intérprete Profesional de la Lengua de Señas Colombiana - Modalidad Virtual">Intérprete
									Profesional de la Lengua de Señas Colombiana - Modalidad
									Virtual</option>

								<option value="Administración de Empresas">Administración
									de Empresas</option>

								<option value="Bioingeniería">Bioingeniería</option>

								<option value="Ingeniería Ambiental">Ingeniería
									Ambiental</option>

								<option value="Ingeniería Electrónica">Ingeniería
									Electrónica</option>

								<option value="Ingeniería Industrial">Ingeniería
									Industrial</option>

								<option value="Ingeniería de Sistemas">Ingeniería de
									Sistemas</option>

								<option value="Negocios Internacionales">Negocios
									Internacionales</option>

								<option value="Matemáticas">Matemáticas</option>

								<option value="Estadística">Estadística</option>

								<option value="Contaduría Pública - Modalidad Virtual">Contaduría
									Pública - Modalidad Virtual</option>

								<option value="Finanzas - Modalidad Virtual">Finanzas -
									Modalidad Virtual</option>

								<option
									value="Marketing y Transformación Digital - Modalidad Virtual">Marketing
									y Transformación Digital - Modalidad Virtual</option>

								<option value="Economía - Modalidad Virtual">Economía -
									Modalidad Virtual</option>

								<option
									value="Administración de Negocios Sostenibles - Modalidad Virtual">Administración
									de Negocios Sostenibles - Modalidad Virtual</option>

								<option
									value="Administración de Producción y Logística Internacional - Modalidad Virtual">Administración
									de Producción y Logística Internacional - Modalidad Virtual</option>

								<option value="Biología">Biología</option>

								<option value="Enfermería">Enfermería</option>

								<option value="Instrumentación Quirúrgica">Instrumentación
									Quirúrgica</option>

								<option value="Medicina">Medicina</option>

								<option value="Odontología">Odontología</option>

								<option value="Optometría">Optometría</option>

								<option value="Química Farmacéutica">Química
									Farmacéutica</option>
							</select>
						</div>

						<h3 class="font-monospace fs-8">
							Costo de la carrera por semestre: <input type="text" id="costo"
								value="0" class="box" name="costo" readonly />
						</h3>


						<div id="divSelect">

							<h3 id="h3Select" class="font-monospace fs-8">Estrato al que
								pertenece:</h3>
							<select class="form-select" name="estrato" id="select2"
								aria-label="Floating label select example">

								<option disabled="disabled" selected="selected">Estrato:
								</option>

								<option value="1">1</option>

								<option value="2">2</option>

								<option value="3">3</option>

								<option value="4">4</option>

								<option value="5">5</option>

								<option value="6">6</option>
							</select>

						</div>


						<h3 class="font-monospace fs-8">
							¿Es homologado?: <input type="text" pattern="^(si|no|Si|No)$"
								maxlength="2" id="homologado" class="box" name="homologado">
						</h3>
						<br>

						<h3 class="font-monospace fs-8">
							Link de tu imagen: <input class="box" type="text" name="link"
								id="botonLink" />
						</h3>
						<br />

						<button type="submit" class="btn btn-success">Actualizar
							formulario</button>

					</div>
				</form>
				

			</div>
		</section>
		</form>	
		</div>
		
		<div class="row">
		<form name="lista" method="GET" action="/Proyecto/servlet">

		<h3 id="inicio">
			- ¿Deseas listar los aspirantes?
		</h3>
		
		<button type="submit" class="btn btn-secondary">Listar aspirantes</button>
		
		</form>	
		</div>

		<h3 id="inicio">
			- ¿Deseas listar por carrera? <label for="selCarreraListar">Seleccione
				una carrera:</label> <select class="form-select" name="listarcarrera"
				id="select1" aria-label="Floating label select example">

				<option value="Arquitectura">Arquitectura</option>

				<option value="Arte Dramático">Arte Dramático</option>

				<option value="Artes Plásticas">Artes Plásticas</option>

				<option value="Diseño Industrial">Diseño Industrial</option>

				<option value="Diseño de Comunicación">Diseño de
					Comunicación</option>

				<option value="Formación Musical">Formación Musical</option>

				<option value="Ciencia Política y Gobierno">Ciencia
					Política y Gobierno</option>

				<option value="Filosofía">Filosofía</option>

				<option value="Licenciatura en Educación Infantil">Licenciatura
					en Educación Infantil</option>

				<option value="Psicología">Psicología</option>

				<option
					value="Licenciatura en Bilingüismo con Énfasis en la Enseñanza del Inglés">Licenciatura
					en Bilingüismo con Énfasis en la Enseñanza del Inglés</option>

				<option
					value="Intérprete Profesional de la Lengua de Señas Colombiana - Modalidad Virtual">Intérprete
					Profesional de la Lengua de Señas Colombiana - Modalidad Virtual</option>

				<option value="Administración de Empresas">Administración
					de Empresas</option>

				<option value="Bioingeniería">Bioingeniería</option>

				<option value="Ingeniería Ambiental">Ingeniería Ambiental</option>

				<option value="Ingeniería Electrónica">Ingeniería
					Electrónica</option>

				<option value="Ingeniería Industrial">Ingeniería Industrial</option>

				<option value="Ingeniería de Sistemas">Ingeniería de
					Sistemas</option>

				<option value="Negocios Internacionales">Negocios
					Internacionales</option>

				<option value="Matemáticas">Matemáticas</option>

				<option value="Estadística">Estadística</option>

				<option value="Contaduría Pública - Modalidad Virtual">Contaduría
					Pública - Modalidad Virtual</option>

				<option value="Finanzas - Modalidad Virtual">Finanzas -
					Modalidad Virtual</option>

				<option
					value="Marketing y Transformación Digital - Modalidad Virtual">Marketing
					y Transformación Digital - Modalidad Virtual</option>

				<option value="Economía - Modalidad Virtual">Economía -
					Modalidad Virtual</option>

				<option
					value="Administración de Negocios Sostenibles - Modalidad Virtual">Administración
					de Negocios Sostenibles - Modalidad Virtual</option>

				<option
					value="Administración de Producción y Logística Internacional - Modalidad Virtual">Administración
					de Producción y Logística Internacional - Modalidad Virtual</option>

				<option value="Biología">Biología</option>

				<option value="Enfermería">Enfermería</option>

				<option value="Instrumentación Quirúrgica">Instrumentación
					Quirúrgica</option>

				<option value="Medicina">Medicina</option>

				<option value="Odontología">Odontología</option>

				<option value="Optometría">Optometría</option>

				<option value="Química Farmacéutica">Química Farmacéutica</option>
			</select> <a class="btn btn-info" href="table.jsp" name="listar" ole="button">Listar
				por carrera</a>
		</h3>
		
		<div class="row">
		<form name="borrar" action="/Proyecto/aservlet"
		method=GET>

		<h3 id="inicio">- ¿Eliminar un aspirante?</h3>

		<h3 id="inicio">
			Ingrese numero de documento a eliminar: <input class="box"
				type="text" name="cedula" />
			<button type="submit" name="botoneliminar" class="btn btn-danger">Eliminar
				aspirante</button>
		</h3>
		<br />
		</form>
		</div>

		<h3 id="inicio">
			¿Crear Excel(csv)?:
			<button type="button" name="excel" class="btn btn-success">EXCEL</button>
		</h3>
		<br />

	</section>
</body>
</html>