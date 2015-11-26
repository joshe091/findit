<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Find-It | <?php echo $titulo; ?></title>
		<meta name="description" content="Sitio web, que busta el estado de funcionamiento de un local">
		<meta name="author" content="Grupo 2">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1"><!--Meta para dispositivos moviles-->
		<link rel="stylesheet" href="<?php echo base_url(); ?>complementos/frameworks/bootstrap3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url(); ?>complementos/css/estilosportal.css">
		<!--GOOGLE MAPS-->
	    <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js?ver=3.1.2'></script>
		<script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDjSP5qZdefYhf1lI6iuBh0gT5BUgYQUWw&amp;sensor=true">
        </script>
		<script type="text/javascript" src='https://www.google.com/jsapi'></script>
        <style type="text/css">
			#mapa_content {
				height: 20em;
		}
		</style>
	</head>
	<body onLoad="inicializar()">
		<header>
			<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
				<div class="container headerFindIt">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
							<span class="sr-only">Desplegar / Ocultar menu</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="<?= base_url('portal')?>" class="navbar-brand"><img src="<?php echo base_url(); ?>/complementos/img/icon-logo.png" alt="Loguito"></a>
					</div>
					<!--Inicia menu-->
					<div class="collapse navbar-collapse" id="navegacion-fm">
						<!--<a href ="login.php" type="button" class="btn btn-primary navbar-btn navbar-right">Ingresa</a>-->
						<a href ="<?= base_url('portal/vistaloguearUsuario')?>" type="button" class="btn btn-primary navbar-btn navbar-right">Ingresa</a>

						<a href ="<?= base_url('portal/vistaRegistrarUsuario')?>" type="button" class="btn btn-primary navbar-btn navbar-right">Registrate</a>

						<form action="#" class="navbar-form navbar-right" role="search">
							<div class="form-group"><input type="text" class="form-control" placeholder="Buscar..."></div>
							<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>
						</form>
					</div>
				</div>
			</nav>
		</header>	