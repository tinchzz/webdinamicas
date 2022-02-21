<?php
    include("db.php");
    include("redimensionarImg.php");
    if(isset($_GET['ID'])){
      $id = $_GET['ID'];
      $query = "SELECT * FROM crudfotos WHERE ID = $id";
      $result = mysqli_query($conn, $query);

      if(mysqli_num_rows($result) == 1) {
          $row = mysqli_fetch_array($result);
          $nombre = $row['Nombre'];
          $archivo = $row['imagen'];
          $cantidad = $row['Cantidad'];
      }
    }

    if(isset($_POST['update'])){
      $id = $_GET['ID'];
      $nombre = $_POST['Nombre'];
      $cantidad = $_POST['Cantidad'];
    //**
      if(is_uploaded_file($_FILES['imagen']['tmp_name'])){
        $iniruta=$_FILES['imagen']['name'];
        move_uploaded_file($_FILES['imagen']['tmp_name'],$_FILES['imagen']['name']);
        $archivo = redimensionarImg($_FILES['imagen']['name'],250,175);
        $imagename  = mysqli_fetch_array(mysqli_query($conn, "SELECT imagen FROM crudfotos WHERE ID = $id"));
        $finalname = $imagename['imagen'];
        unlink("$iniruta");
      }
      else {
        $archivo = 'la.imagen.no.se.subio';
      }
      
    //*
      $query = "UPDATE crudfotos set Nombre = '$nombre', imagen = '$archivo', Cantidad = '$cantidad' WHERE ID = $id;";
      mysqli_query($conn, $query);

      $_SESSION['message'] = 'Actualizado correctamente - F5';
      $_SESSION['message_type'] = 'success';
      echo  "<script>window.location = 'index.php'</script>";
    }
?>
<?php 
    include("includes/header.php")
?>


<div class="container p-4">
    <div class="row">
        <div class="col-md-4 mx-auto">
            <div class="card card-body">
              <form action="edit.php?ID=<?php echo $_GET['ID']; ?>" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                  <input type="text" name="Nombre" value="<?php echo $nombre; ?>" class="form-control" placeholder="Actualizá el nombre">
                </div>
                <div class="form-group mt-1">
                  <input type="file" name="imagen" value="<?php echo $archivo; ?>" class="form-control" placeholder="Actualizá la foto" accept="image/*">
                </div>
                <div class="form-group mt-1">
                  <input type="number" name="Cantidad" value="<?php echo $cantidad; ?>" class="form-control" placeholder="Actualizá la cantidad" max="255">
                </div>
                <button class="btn btn-success btn-block mt-1" name="update">
                  Update
                </button>
              </form>
            </div>
        </div>
    </div>
</div>


<?php 
    include("includes/footer.php")
?>

