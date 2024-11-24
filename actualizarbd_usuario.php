<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include("conexion/conexion_mysql.php");

$id_usuario = $_POST['txtidusuario'];
$Nombre = $_POST['txtNombre'];
$Apellido1 = $_POST['cmbApellido1'];
$Apellido2 = $_POST['cmbApellido2'];
$Email = $_POST['cmbEmail'];
$Contraseña = $_POST['cmbContraseña'];
$Cargo = $_POST['cmbCargo'];

echo "$id_usuario | $Nombre | $Apellido1 | $Apellido2 | $Email | $Contraseña | $Cargo ";

// Llamada al procedimiento almacenado
$sql = "CALL proc_actualizarDatosUsuario('$id_usuario','$Nombre', '$Apellido1', '$Apellido2', '$Email', '$Contraseña', '$Cargo')";

if(mysqli_query($conexion, $sql)) {
    // Redirige a una página después de la actualización exitosa
    header("location:usuario.php");
    exit();
} else {
    // Si hay un error, muestra el mensaje de error
    echo "Problemas al actualizar el usuario, verifique de nuevo: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>
