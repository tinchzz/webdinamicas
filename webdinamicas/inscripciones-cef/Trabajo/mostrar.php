<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
    <body>
        <?php   /* Rellenar los campos para la conexion */
                $conex = mysqli_connect("localhost","root","","trabajo"); 
        ?>

        <div class='line'></div>

        <?php

            if(isset($_GET['id'])){
                $actividad = $_GET['id'];
            }
            if (isset($_GET['update'])) {
                include("update.php");
            } 

            if (isset($_GET['delete'])) {
                $borrar_id = $_GET ['delete'];
                                                                /* Fijarse si el campo de ID es correcto */
                $borrar = "DELETE FROM registros WHERE id_inscripto='$borrar_id' AND id_actividad='$actividad'";
                $ejecutar = mysqli_query ($conex, $borrar);
            } 

        ?>  
            <div class="salir">
                <a href="mostrarActividades.php"><img src="img/salir.png" width=25 height=25></a>
            </div>
            <div class="caja">
                <h3>Inscriptos</h3>
            <div class="col-md-8">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Nombre y Apellido</th>
                        <th>DNI</th>
                        <th>Telefono</th>
                        <th>Email</th>
                        <th>Horario</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>    

                <?php      
                        $sql = "SELECT * FROM registros WHERE id_actividad='$actividad'";
                        $result = mysqli_query($conex, $sql);
                        if ($result) {
                            while ($row = $result->fetch_array()) {    
                            $id_usuario = $row['id_inscripto'];



                            $consulta = "SELECT * FROM inscriptos WHERE id_user='$id_usuario'";
                            $ejecutar = mysqli_query($conex, $consulta);
                            /* if ($consulta) { */
                                while($row = mysqli_fetch_assoc($ejecutar)) {

                                    /* $variableParaIdentificarEnElCodigo  =  $row['variableEnBaseDeDatos'];*/
                                    $userID = $row['id_user'];
                                    $userNombreApellido = $row['nombreapellido'];
                                    $userDni = $row['dni'];
                                    $userTelefono = $row['telefono'];
                                    $userEmail = $row['email'];
                                    $userHorario = $row['horario'];
                        
                                    echo "<div class='lineCrud'>";
                ?>                  <tr>
                                        <td><p class="lineNombre"><?php echo $userNombreApellido; ?></p></td>
                                        <td><p class="lineDni"><?php echo $userDni; ?></p></td>
                                        <td><p class="lineTelefono"><?php echo $userTelefono; ?></p></td>
                                        <td><p class="lineEmail"><?php echo $userEmail; ?></p></td>
                                        <td><p class="lineHorario"><?php echo $userHorario; ?></p></td>

                                        <td><a href="mostrar.php?update=<?php echo $userID; ?>&id=<?php echo $actividad;?>" class="lineUpdate"><img src="img/editar.png" width=25 height=25></a>
                                        <td><a href="mostrar.php?delete=<?php echo $userID; ?>&id=<?php echo $actividad;?>" class="lineDelete"><img src="img/eliminar.png" width=25 height=25></a>
                                    </tr>
                                </div>
                            <?php } } /* } */}?>
                </tbody>
                </table>
            </div>
            </div>
    </body>
</html>