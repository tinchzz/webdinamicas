<?php 
		$nombre=$_FILES['foto']['name'];
		$guardado=$_FILES['foto']['tmp_name'];
		$nombre2=$_FILES['foto2']['name'];
		$guardado2=$_FILES['foto2']['tmp_name'];
		$nombre3=$_FILES['foto3']['name'];
		$guardado3=$_FILES['foto3']['tmp_name'];

		if(!file_exists('archivos')) {
			mkdir('archivos',0777,true);
			if (file_exists('archivos')) {
				if(move_uploaded_file($guardado, 'archivos/'.$nombre) && move_uploaded_file($guardado2, 'archivos/'.$nombre2) && move_uploaded_file($guardado3, 'archivos/'.$nombre3)){
					echo "Archivo guardado con exito";
				}
				else {
					echo "Archivo no se pudo guardar";
				}
			}
		}

		else {
			if(move_uploaded_file($guardado, 'archivos/'.$nombre) && move_uploaded_file($guardado2, 'archivos/'.$nombre2) && move_uploaded_file($guardado3, 'archivos/'.$nombre3)){

					echo "Archivo guardado con exito";
				}
				else {
					echo "Archivo no se pudo guardar";
				}
		}
?>

<!DOCTYPE html>
<html lang="es">
<script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilos.css">
	<title>Creación Slider Estático</title>
</head>
<body>
		<div class="contenedor-slider">
		<input type="radio" id="1" name="img-slide" hidden/>
		<input type="radio" id="2" name="img-slide" hidden/>
		<input type="radio" id="3" name="img-slide" hidden/>
		<div class="slide">
			<div class="item-slide">
				<img src="<?php echo 'archivos/'.$_FILES['foto']['name']; ?>">
			</div>
			<div class="item-slide">
				<img src="<?php echo 'archivos/'.$_FILES['foto2']['name']; ?>">
			</div>
			<div class="item-slide">
				<img src="<?php echo 'archivos/'.$_FILES['foto3']['name']; ?>">
			</div>
		</div>
		<div class="paginacion">
			<label class="paginacion-item" for="1">
				<img src="imagenes/1.jpg" alt="">
			</label>
			<label class="paginacion-item" for="2">
				<img src="imagenes/2.jpg" alt="">
			</label>
			<label class="paginacion-item" for="3">
				<img src="imagenes/3.jpg" alt="">
			</label>
			</label>
		</div>
	</div>
</body>
</html>