<?php include("db.php"); ?>

<?php include('includes/header.php'); ?>
<main class="container p-4">
  <div class="row">
    <div class="col-md-4">
      <!-- MESSAGES -->

      <?php if (isset($_SESSION['message'])) { ?>
      <div class="alert alert-<?= $_SESSION['message_type']?> alert-dismissible fade show" role="alert">
        <?= $_SESSION['message']?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php session_unset(); } ?>

      <!-- ADD TASK FORM -->
        <div class="card card-body">
          <form action="save_task.php" method="POST" enctype="multipart/form-data">
            <div class="titulo">
              <h4>Ingreso de datos</h4>
            </div>
            <div class="form-group">
              <input type="text" name="Nombre" class="form-control" placeholder="Nombre" autofocus>
            </div>
            <div class="form-group mt-1">
              <input type="file" name="imagen" accept="image/*" class="form-control"/>
            </div>
            <div class="form-group mt-1">
              <input type="number" name="Cantidad" max="255" class="form-control" placeholder="Cantidad" autofocus>
            </div>
            <input type="submit" class="btn btn-success btn-block mt-1" name="save_task" value="Enviar">
          </form>
        </div>
    </div>
        <div class="col-md-8">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Foto</th>
            <th>Cantidad</th>
            <th>Creado el</th>
            <th>ID</th>
            <th>Editar</th>
            <th>Eliminar</th>
          </tr>
        </thead>
        <tbody>

          <?php
          $query = "SELECT * FROM crudfotos";
          $result_tasks = mysqli_query($conn, $query);    

          while($row = mysqli_fetch_assoc($result_tasks)) { ?>
            <script type="text/javascript">
              function Editarcontinuar(){
                  let idlink = "edit.php?ID="+"<?php echo $row['ID'];?>";
                  window.location = idlink;
              }
              function Eliminarcontinuar(){
              let continuar = confirm("Desea borrar esta fila?");
              let idlink = "delete_task.php?ID="+"<?php echo $row['ID'];?>";
              if (continuar) {window.location = idlink}}
              </script>
            <tr>
              <td><?php echo $row['Nombre']; ?></td>
              <td><img src="imagenes/<?php echo $row['imagen']?>"></td>
              <td><?php echo $row['Cantidad']; ?></td>
              <td><?php echo $row['Creado_El']; ?></td>
              <td><?php echo $row['ID']; ?></td>
              <td><button onclick="Editarcontinuar()"> Editar </button> </td>
              
              <td><button onclick="Eliminarcontinuar()"> Eliminar </button> </td>
            </tr>
            <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</main>
<?php include('includes/footer.php'); ?>
