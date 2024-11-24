<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include("conexion/conexion_mysql.php");

$clave = $_POST['txtClave'];
$nombre = $_POST['cmbNombre'];
$descripcion = $_POST['cmbdescripcion'];
$marca = $_POST['cmbMarca'];
$familia = $_POST['cmbFamilia'];
$maximo = $_POST['cmbMaximo'];
$minimo = $_POST['cmbMinimo'];
$mayore = $_POST['cmbMayoreo'];
$menudeo = $_POST['cmbMenudeo'];
$medio = $_POST['cmbMedio'];
$existencias = $_POST['cmbExistencias'];

echo "$folio | $nombre | $descripcion | $marca | $familia | $maximo | $minimo | $mayore | $menudeo | $medio | $existencias" ;
$sql = "CALL proc_actualizar_datos('$clave', '$nombre', '$descripcion', '$marca', '$familia', '$maximo', '$minimo', '$mayore', '$menudeo', '$medio', '$existencias')";

if(mysqli_query($conexion, $sql)) {
 
    header("location:consultar_producto.php");
    exit();
} else {
    echo "Problemas al actualizar la especie, verifique de nuevo: " . mysqli_error($conexion);
}

mysqli_close($conexion);
?>
