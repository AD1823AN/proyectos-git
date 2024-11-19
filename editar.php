<!-- Main content -->
<div class="container mt-4">
        <h2>Editar Especies</h2>
        <?php
        // Incluir el archivo de conexión a la base de datos
        include ("conexion/conectar-mysql.php");

        // Verificar si se ha enviado un parámetro de folio
        if(isset($_GET['Folio'])) {
            $folioEspecie = $_GET['Folio'];

            // Consultar la información de la especie
            $sql="select *From especie_adri where Folio='$folioEspecie'";
            $resultado = mysqli_query($conexion, $sql);

            if(mysqli_num_rows($resultado) > 0) {
                $datosEspecie = mysqli_fetch_assoc($resultado);
        ?>
                <!-- Formulario -->
                <form action="procesar_edicion.php" method="POST">
                    <div class="form-group">
                        <label for="nombre_vulgar">Nombre Vulgar</label>
                        <input type="text" class="form-control" id="nombre_vulgar" name="nombre_vulgar" value="<?php echo $datosEspecie['Nombre_Vulgar']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="nombre_cientifico">Nombre Científico</label>
                        <input type="text" class="form-control" id="nombre_cientifico" name="nombre_cientifico" value="<?php echo $datosEspecie['Nombre_Cient']; ?>">
                    </div>
                    <div class="form-group">
                        <label for="peligro_extincion">Peligro de Extinción</label>
                        <select class="form-control" id="peligro_extincion" name="peligro_extincion">
                            <option value="1" <?php if($datosEspecie['Peligro'] == '1') echo 'selected'; ?>>Sí</option>
                            <option value="0" <?php if($datosEspecie['Peligro'] == '0') echo 'selected'; ?>>No</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="id_familia">Familia</label>
                        <select class="form-control" id="Id_Familia" name="Id_Familia">
                            <?php
                            // Consultar las familias disponibles
                            $sql_familias = "SELECT Id_Familia, Nombre FROM familia_adri";
                            $resultado_familias = mysqli_query($conexion, $sql_familias);

                            // Iterar sobre las familias y mostrarlas en opciones del select
                            while ($fila_familia = mysqli_fetch_assoc($resultado_familias)) {
                                $selected = ($fila_familia['Id_Familia'] == $datosEspecie['Id_Familia']) ? 'selected' : '';
                                echo '<option value="' . $fila_familia['Id_Familia'] . '" ' . $selected . '>' . $fila_familia['Nombre'] . '</option>';
                            }
                            ?>
                        </select>
                    </div>
                    <input type="hidden" name="folio_especie" value="<?php echo $datosEspecie['Folio']; ?>">
                    <button type="submit" class="btn btn-primary">Actualizar</button>
                </form>
        <?php
            } else {
                echo "No se encontró la especie con el folio proporcionado.";
            }
        } else {
            echo "No se proporcionó el folio de la especie a editar.";
        }
        ?>

</section>
<!-- /.content -->
