<?php
    /* Rellenar los campos para la conexion */
    $conex = mysqli_connect("localHost","root","","trabajo");

    $editar_id = $_GET['update'];

                                                            /* Fijarse si el campo de ID es correcto */
    $consulta = "SELECT * FROM inscriptos WHERE id_user='$editar_id'";
    $ejecutar = mysqli_query($conex,$consulta);
    $fila = mysqli_fetch_array($ejecutar);


    /* $variableParaIdentificarEnElCodigo  =  $row['variableEnBaseDeDatos'];*/
    $id = $fila['id_user'];
    $nombreApellido = $fila['nombreapellido'];
    $dni = $fila['dni'];
    $telefono = $fila['telefono'];
    $email = $fila['email'];
    $horario = $fila['horario'];
?>

</br>
<form method="POST" action="" enctype="multipart/form-data"> 

    <input type="hidden" name="id" value="<?php echo $id?>">

    <input type="text" name="nombreapellido" value="<?php echo $nombreApellido?>" required></br>
    <input type="text" name="dni" value="<?php echo $dni?>" required></br>
    <input type="text" name="telefono" value="<?php echo $telefono?>" required></br>
    <input type="mail" name="email" value="<?php echo $email?>" required></br>
    <input type="text" name="horario" value="<?php echo $horario?>" required></br>

    <div class="asd">
    <input type="submit" name="actualizar" value="Actualizar datos">
    <a href="mostrar.php?id=<?php echo $actividad?>"><img src="img/salir.png" width=25 height=25></a>
    </div>
</form>

<?php
    if(isset($_POST['actualizar'])){

        /* $actualizar_ejemplo = $_POST['ejemplo'] */
        $actualizar_nombreApellido = $_POST['nombreapellido'];
        $actualizar_dni = $_POST['dni'];
        $actualizar_telefono = $_POST['telefono'];
        $actualizar_email = $_POST['email'];
        $actualizar_horario = $_POST['horario'];

                                                    /* Fijarse si los campos de la tabla estan bien */
        $sql = "UPDATE inscriptos SET nombreapellido='$actualizar_nombreApellido', dni='$actualizar_dni', telefono='$actualizar_telefono', email='$actualizar_email', horario='$actualizar_horario' WHERE id_user='$id';";

        $result = mysqli_query($conex,$sql)? print('Actualizado') : print("error update");
    }
?>
<div class='line'></div>