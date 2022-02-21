<?php

include("db.php");

if(isset($_GET['ID'])) {
  $id = $_GET['ID'];
  $imagename  = mysqli_fetch_array(mysqli_query($conn, "SELECT imagen FROM crudfotos WHERE ID = $id"));
  $query = "DELETE FROM crudfotos WHERE ID = $id";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }
  $finalname = $imagename['imagen'];
  unlink("imagenes/$finalname");
  $_SESSION['message'] = 'Eliminado correctamente - F5';
  $_SESSION['message_type'] = 'danger';
}

?>
<script> window.location = 'index.php'; </script>
