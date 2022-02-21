<?php
include("redimensionarImg.php");
include('db.php');

if (isset($_POST['save_task'])) {
  $nombre = $_POST['Nombre'];
  $cantidad = $_POST['Cantidad'];
  if(is_uploaded_file($_FILES['imagen']['tmp_name'])){
    $iniruta=$_FILES['imagen']['name'];
    move_uploaded_file($_FILES['imagen']['tmp_name'],$_FILES['imagen']['name']);
    $archivo = redimensionarImg($_FILES['imagen']['name'],250,175);
    unlink("$iniruta");
  }
  else {
    $archivo = 'la.imagen.no.se.subio';
  }
  $query = "INSERT INTO crudfotos(Nombre,Cantidad,imagen) VALUES ('$nombre', '$cantidad', '$archivo')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
        echo '<a href="index.php">Volver</a><br><br>';
    die("Query Failed, error en la subida de archivos o no se relleno ningun campo.");
  }

  $_SESSION['message'] = 'Guardado correctamente - F5';
  $_SESSION['message_type'] = 'success';
}
?>
<script> window.location = 'index.php'; </script>
