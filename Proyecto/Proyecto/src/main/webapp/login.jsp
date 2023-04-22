<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<link href="styleLogin.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<header>
		<div class="text-center">
			<h2>
				<img
					src="https://artemisa.unbosque.edu.co/serviciosacademicos/consulta/educacioncontinuada/certificadodiploma/assets/imgs/logoUniversidadElBosque.png"
					alt="Logo" width="160" height="80"
					class="d-inline-block align-text-mid"> Universidad El Bosque
				- Login Admin
			</h2>
		</div>
	</header>

	<div class="container">

			<div>
				<form class="login-form" name="login" method="POST" action="/Proyecto/aservlet">
					<h3>Iniciar sesion</h3>
					<input type="text" name="usuario" placeholder="Usuario"> <input
						type="password" name="contra" placeholder="Contrasena"> <input
						type="submit" value="Ingresar">
				</form>
			</div>
	</div>
</body>

</html>