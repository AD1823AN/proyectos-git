<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar Producto</title>
  <style>
    /* Estilos para centrar el formulario */
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 150px;
      font-family: Arial, sans-serif;
            background: url('img/logo.jpg') no-repeat center center fixed;
            background-size: cover;

    }

    #formRegistro {
      width: 80%;
      max-width: 600px;
      padding: 20px;
      background-color: #f9f9f9;
      border-radius: 8px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      overflow: auto; /* Para asegurar que se vean todos los elementos */
    }

    #formRegistro label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
    }

    #formRegistro input[type="text"],
    #formRegistro select {
      width: 100%;
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
  </style>
</head>
<body>
<?php
include("conexion/conexion_mysql.php");

$producto = $_GET['Clvproducto'];
$sql = "CALL proc_obtenerDatosProducto('$producto')";
$ejecutarConsulta = mysqli_query($conexion, $sql);

if ($ejecutarConsulta && $conProducto = mysqli_fetch_array($ejecutarConsulta, MYSQLI_NUM)) {
    mysqli_free_result($ejecutarConsulta); // Liberamos el primer conjunto de resultados
?>
<form id="formRegistro" class="formulario" action="actualizarbd_producto.php" method="POST">
   <label>Clave Producto:</label>
   <input type="text" placeholder="No. Identificación" name="txtClave" value="<?php echo htmlspecialchars($conProducto[0]); ?>" required>

   <label>Nombre Producto:</label>
   <input type="text" placeholder="Nombre Producto" name="cmbNombre" value="<?php echo htmlspecialchars($conProducto[1]); ?>" required>

   <label>Descripción producto:</label>
   <input type="text" placeholder="Descripción Producto" name="cmbDescripcion" value="<?php echo htmlspecialchars($conProducto[2]); ?>" required>

   <label>Marca:</label>
   <select class="form-control" id="marca" name="cmbMarca" required>
      <?php
      $sqlMarca = "CALL proc_mos_marca()";
      $marcas = mysqli_query($conexion, $sqlMarca);
      $mosMarcas = $conProducto[3];

      if ($marcas) {
        while($regMarcas = mysqli_fetch_assoc($marcas)){
          $valorMarca = $regMarcas['Id_Marca'];
          $nombreMarca = $regMarcas['Nom_Marca'];

          echo "<option value='$valorMarca'" . ($mosMarcas == $valorMarca ? ' selected' : '') . ">$nombreMarca</option>";
        }
        mysqli_free_result($marcas);
      }
      mysqli_next_result($conexion); // Permite la siguiente consulta
      ?>
   </select>

   <label>Familia:</label>
   <select class="form-control" id="familia" name="cmbFamilia" required>
      <?php
      $sqlFamilia = "CALL proc_mos_familia1()";
      $familias = mysqli_query($conexion, $sqlFamilia);
      $mosFamilias = $conProducto[4];

      if ($familias) {
        while($regFamilias = mysqli_fetch_assoc($familias)){
          $valorFamilia = $regFamilias['Id_Familia'];
          $nombreFamilia = $regFamilias['Nom_Familia'];

          echo "<option value='$valorFamilia'" . ($mosFamilias == $valorFamilia ? ' selected' : '') . ">$nombreFamilia</option>";
        }
        mysqli_free_result($familias);
      }
      mysqli_next_result($conexion); // Permite la siguiente consulta
      ?>
   </select>

    <label>Stock Máximo:</label>
    <input type="text" placeholder="Stock Máximo" name="cmbMaximo" value="<?php echo htmlspecialchars($conProducto[5]); ?>" required>

    <label>Stock Mínimo:</label>
    <input type="text" placeholder="Stock Mínimo" name="cmbMinimo" value="<?php echo htmlspecialchars($conProducto[6]); ?>" required>

    <label>Precio Mayoreo:</label>
    <input type="text" placeholder="Precio Mayoreo" name="cmbMayoreo" value="<?php echo htmlspecialchars($conProducto[7]); ?>" required>
    
    <label>Precio Menudeo:</label>
    <input type="text" placeholder="Precio Menudeo" name="cmbMenudeo" value="<?php echo htmlspecialchars($conProducto[8]); ?>" required>

    <label>Precio Medio-Mayoreo:</label>
    <input type="text" placeholder="Precio Medio-Mayoreo" name="cmbMedio" value="<?php echo htmlspecialchars($conProducto[9]); ?>" required>

    <label>Existencias:</label>
    <input type="text" placeholder="Existencias" name="cmbExistencias" value="<?php echo htmlspecialchars($conProducto[10]); ?>" required>

    <div class="registro">
        <button type="submit" class="btn_calcular">Actualizar</button>
    </div>
</form>
<?php
} else {
  echo "<p>Error al obtener los datos del producto.</p>";
}

mysqli_close($conexion);
?>
</body>
</html>
