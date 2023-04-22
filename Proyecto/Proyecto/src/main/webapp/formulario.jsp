<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Formulario aspirantes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<link href="styleFormulario.css" rel="stylesheet" type="text/css" />
<script src="javaScript.js"></script>
</head>

<body>
	<header>
		<div class="text-center">

			<h2>
				<img
					src="https://artemisa.unbosque.edu.co/serviciosacademicos/consulta/educacioncontinuada/certificadodiploma/assets/imgs/logoUniversidadElBosque.png"
					alt="Logo" width="160" height="80"
					class="d-inline-block align-text-mid" /> Universidad El Bosque -
				Formulario Aspirantes
			</h2>
		</div>
	</header>
	

  <div>

    <br><br>

    <h1>Formulario Aspirantes Universidad El Bosque</h1> <br><br>

    <p id="p1">¡Felicitaciones por tomar el primer paso para alcanzar tus metas académicas y profesionales! Nuestro
      formulario
      de
      solicitud en línea es fácil de completar y te llevará un paso más cerca de tu futuro brillante en la Universidad
      El Bosque Completa el formulario con cuidado y asegúrate de incluir toda la información relevante para que
    <p id="p2">podamos
      considerar tu solicitud de manera efectiva. ¡Te deseamos la mejor de las suertes en tu viaje hacia el éxito
      académico!<br><br><br><br></p>
  </div>

			<section class="contact" id="contact">

				<div class="row">
<form name="formulario" method="POST" action="/Proyecto/servlet">

						<h3 class="heading" id="heading">Formulario</h3>

						<div class="row">


							<h3 class="font-monospace fs-4">
								Ingrese su nombre: <input class="box" type="text"
									pattern="[A-Za-z]+" name="nombre" />
							</h3>
							<br />

							<h3 class="font-monospace fs-4">
								Ingrese su apellido: <input class="box" type="text"
									pattern="[A-Za-z]+" name="apellidos" />
							</h3>
							<br />

							<h3 class="font-monospace fs-4">
								Ingrese su numero de documento: <input class="box"
									pattern="[0-9]+" type="text" name="cedula" />
							</h3>
							<br /> <label class="font-monospace fs-4" id="labe" for="start">Fecha
								de nacimiento: <input class="box" type="date"
								id="fecha_nacimiento" name="fecha_nacimiento" min="1935-01-01"
								max="2009-12-31" /><br />
							<br />
							</label>

							<h3 class="font-monospace fs-4">
								Ingrese nombre del colegio donde se graduo: <input class="box"
									type="text" name="colegio" />
							</h3>
							<br />
							<br />

							<div id="divSelect">

								<h3 id="h3Select" class="font-monospace fs-4">Carrera a la
							que aspira ingresar:</h3>
						<select class="form-select" id="carrera" name="carrera"
							aria-label="Escoja carrera" required>


							<option disabled="disabled" selected="selected">Carrera:
							</option>

							<option value="Arquitectura">Arquitectura</option>
							<option value="Arte Dramatico">Arte Dramatico</option>
							<option value="Artes Plasticas">Artes Plasticas</option>
							<option value="Diseno Industrial">Diseno Industrial</option>
							<option value="Diseno de Comunicacion">Diseno de
								Comunicacion</option>
							<option value="Formacion Musical">Formacion Musical</option>
							<option value="Ciencia Politica y Gobierno">Ciencia
								Politica y Gobierno</option>
							<option value="Derecho">Derecho</option>
							<option value="Filosofia">Filosofia</option>
							<option value="Licenciatura en Educacion Infantil">Licenciatura
								en Educacion Infantil</option>
							<option value="Psicologia">Psicologia</option>
							<option
								value="Licenciatura en Bilinguismo con enfasis en la Ensenanza del Ingles">Licenciatura
								en Bilinguismo con enfasis en la Ensenanza del Ingles</option>
							<option
								value="Interprete Profesional de la Lengua de Senas Colombiana - Modalidad Virtual">Interprete
								Profesional de la Lengua de Senas Colombiana - Modalidad Virtual</option>
							<option value="Administracion de Empresas">Administracion
								de Empresas</option>
							<option value="Bioingenieria">Bioingenieria</option>
							<option value="Ingenieria Ambiental">Ingenieria
								Ambiental</option>
							<option value="Ingenieria Electronica">Ingenieria
								Electronica</option>
							<option value="Ingenieria Industrial">Ingenieria
								Industrial</option>
							<option value="Ingenieria de Sistemas">Ingenieria de
								Sistemas</option>
							<option value="Negocios Internacionales">Negocios
								Internacionales</option>
							<option value="Matematicas">Matematicas</option>
							<option value="Estadistica">Estadistica</option>
							<option value="Contaduria Publica - Modalidad Virtual">Contaduria
								Publica - Modalidad Virtual</option>
							<option value="Finanzas - Modalidad Virtual">Finanzas -
								Modalidad Virtual</option>
							<option
								value="Marketing y Transformacion Digital - Modalidad Virtual">Marketing
								y Transformacion Digital - Modalidad Virtual</option>
							<option value="Economia - Modalidad Virtual">Economia -
								Modalidad Virtual</option>
							<option
								value="Administracion de Negocios Sostenibles - Modalidad Virtual">Administracion
								de Negocios Sostenibles - Modalidad Virtual</option>
							<option
								value="Administracion de Produccion y Logistica Internacional - Modalidad Virtual">Administracion
								de Produccion y Logistica Internacional - Modalidad Virtual</option>
							<option value="Biologia">Biologia</option>
							<option value="Enfermeria">Enfermeria</option>
							<option value="Instrumentacion Quirurgica">Instrumentacion
								Quirurgica</option>
							<option value="Medicina">Medicina</option>
							<option value="Odontologia">Odontologia</option>
							<option value="Optometria">Optometria</option>
							<option value="Quimica Farmaceutica">Quimica
								Farmaceutica</option>
						</select>
						<br>
						<h3 class="font-monospace fs-4">
							El costo de su carrera es: <span id="costo"></span>
						</h3>

							</div>

							<div id="divSelect">

								<h3 id="h3Select" class="font-monospace fs-4">Estrato al
									que pertenece:</h3>
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
							<br />

							<h3 class="font-monospace fs-4">
								¿Es homologado?: <input type="text" pattern="^(si|no|Si|No)$"
									maxlength="2" id="homologado" class="box" name="homologado" />
							</h3>
							<br />

							<h3 class="font-monospace fs-4">
								Link de tu imágen: <input class="box" type="text" name="link"
									id="link" />
							</h3>
							<br />
							<button type="submit" class="btn btn-success">Enviar
								formulario</button>
							<br /> <br />


							<script
								src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
								integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
								crossorigin="anonymous"></script>
						</div>
					</form>


				</div>
				
			</section>
			
			<a class="btn btn-primary" href="index.jsp" role="button">Inicio</a>
			<a class="btn btn-primary" href="login.jsp" role="button">Administrador</a>
			<br>
			<br> <br>
			<br> <br>
			<br>
			
	
</body>
</html>