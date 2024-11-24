<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    /* Estilos para centrar el formulario */
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    #formRegistro {
      width: 80%;
      max-width: 600px;
      padding: 20px;
      background-color: #f9f9f9;
      border-radius: 8px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    #formRegistro label {
      display: block;
      margin-bottom: 8px;
    }

    #formRegistro input[type="text"],
    #formRegistro select {
      width: calc(100% - 32px); /* Restamos el ancho del padding y el borde */
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    #formRegistro .registro {
      text-align: center;
    }

    #formRegistro .btn_calcular {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 4px;
      cursor: pointer;
    }

    #formRegistro .btn_calcular:hover {
      background-color: #0056b3;
    }

    body {
            background: url('img/logo.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .sb-topnav {
            background-color: green;
        }
  </style>
  
</head>
<body>
<?php
include("conexion/conexion_mysql.php");
$usuario_id = intval($_GET['Idusuario']);
$sql = "CALL proc_obtenerDatosUsuario($usuario_id)";
//$ejecutarConsulta = mysqli_query($conexion, $sql);
$ejecutarConsulta = mysqli_query($conexion, $sql);

if (!$ejecutarConsulta) {
    die('Error en la consulta: ' . mysqli_error($conexion));
} else {
    $conUsuario = mysqli_fetch_array($ejecutarConsulta);
}

//$conUsuario = mysqli_fetch_array($ejecutarConsulta);
?>
<form id="formRegistro" class="formulario" action="actualizarbd_usuario.php" method="POST">
   <label>#</label>
   <input type="text" placeholder="No. Identificacion" name="txtidusuario" value="<?php echo $conUsuario[0]; ?>" required>

   <label>Nombre:</label>
   <input type="text" placeholder="No. Identificacion" name="txtNombre" value="<?php echo $conUsuario[1]; ?>" required>

   <label>Primer Apellido:</label>
   <input type="text" placeholder="Primer apellido" name="cmbApellido1" value="<?php echo $conUsuario[2]; ?>" required>

   <label>Segundo Apellido:</label>
   <input type="text" placeholder="Segundo apellido" name="cmbApellido2" value="<?php echo $conUsuario[3]; ?>" required>

   <label>Email</label>
   <input type="text" placeholder="Email" name="cmbEmail" value="<?php echo $conUsuario[4]; ?>" required>

   <label>Contraseña</label>
   <input type="text" placeholder="Contraseña" name="cmbContraseña" value="<?php echo $conUsuario[5]; ?>" required>


   <label>Cargo:</label>
   <select class="form-control" id="categoria" name="cmbCargo" required>
      <?php
      include("conexion/conexion_mysql.php");
      $sql = "CALL proc_mostrar_rol()";
      $rol = mysqli_query($conexion, $sql);
      $mosRol = $conUsuario[6];

      while($regRol = mysqli_fetch_assoc($rol)){
         $valorRol = $regRol['Id_Rol'];
         $nombreRol = $regRol['Tipo'];

         if($mosMarcas == $valorRol){
            echo "<option value='$valorRol' selected>$nombreRol</option>";
         } else {
            echo "<option value='$valorRol'>$nombreRol</option>";
         }
      }
      mysqli_close($conexion);
      ?>
    </select>

    <div class="registro">
        <button type="submit" class="btn_calcular">Actualizar</button>
    </div>
</form>
</body>
</html>
