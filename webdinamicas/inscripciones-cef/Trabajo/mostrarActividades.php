<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style2.css">
    <title>CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
    <body>
        <?php   /* Rellenar los campos para la conexion */
                $conex = mysqli_connect("localHost","root","","trabajo"); 
        ?>

        <div class='line'></div>

        <?php
            if (isset($_GET['update'])) {
                include("update.php");
            } 

            if (isset($_GET['delete'])) {
                $borrar_id = $_GET ['delete'];
                                                                /* Fijarse si el campo de ID es correcto */
                $borrar = "DELETE FROM actividades WHERE ID='$borrar_id'";
                $ejecutar = mysqli_query ($conex, $borrar);
            } 

        ?>

            <div class="caja">
            <h3>Actividades</h3>
            <div class="col-md-8">
            <table class="table table-bordered">
            <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Profesor</th>
                        <th>Dia</th>
                        <th>Horario</th>
                        <th>Direccion</th>
                        <th>Mostrar Inscriptos</th>
                    </tr>
            </thead>
                <tbody>
            

                <?php      
                        

                        $sql = "SELECT * FROM actividades";
                        $result = mysqli_query($conex, $sql);
                        if ($result) {
                            while ($row = $result->fetch_array()) {

                                /* $variableParaIdentificarEnElCodigo  =  $row['variableEnBaseDeDatos'];*/
                                $ID = $row['ID'];
                                $nombre = $row['Nombre'];
                                $profesor = $row['Profesor'];
                                $dia = $row['Dia'];
                                $hora = $row['Hora'];
                                $direccion = $row['Direccion'];
                    
                                echo "<div class='lineCrud'>";
                ?>                <tr>
                                    <td><p class="lineNombre"><?php echo $nombre; ?></p></td>
                                    <td><p class="lineDni"><?php echo $profesor; ?></p></td>
                                    <td><p class="lineTelefono"><?php echo $dia; ?></p></td>
                                    <td><p class="lineEmail"><?php echo $hora; ?></p></td>
                                    <td><p class="lineDireccion"><?php echo $direccion; ?></p></td>

                                    <td><a href="mostrar.php?id=<?php echo $ID; ?>" class="lineMostrar"><img src="img/mostrar.png" width=25 height=25></a></td>
                                </tr>
                                </div>
                            <?php } }?>
                            </tbody>
                            </table>
            </div>
    </body>
</html>