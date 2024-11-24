<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Bambu</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

    <style>
        body {
            background: url('img/logo.jpg') no-repeat center center fixed;
            background-size: cover;
        }
    </style>
</head>
<body class="sb-nav-fixed">

    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="index.html">Electrodomesticos</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
          <div class="input-group">
          </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#!">Settings</a></li>
              <li><a class="dropdown-item" href="./usuario.php">Usuarios</a></li>
              <li><hr class="dropdown-divider" /></li>
              <li><a class="dropdown-item" href="#!">Cerrar Sesion</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <div id="sidebarMenu" class="bg-light border-right">
        <nav class="sb-sidenav accordion sb-sidenav-dark flex-column" id="sidenavAccordion">
            <ul class="nav">
                <li class="nav-item">
                    <a href="./consultar_producto.php" class="nav-link ">
                        <i class="fas fa-eye mr-2"></i>
                        <p>Productos</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="./Venta_producto.php" class="nav-link ">
                        <i class="fas fa-cash-register mr-2"></i>
                        <p>Venta</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="./Compra_producto.php" class="nav-link">
                        <i class="fas fa-shopping-cart mr-2"></i>
                        <p>Compra</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="./reporte_venta.php" class="nav-link ">
                        <i class="fas fa-file-invoice mr-2"></i>
                        <p>Reporte</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="./proveedores.php" class="nav-link ">
                        <i class="fas fa-user-tie"></i>
                        <p>Povedores</p>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

<main>
<section class="content">

<div class="container mt-4">
  <form id="compraForm" action="procesar_formulario_compra.php" method="post">
    <table class="table table-bordered mi-tabla" id="tabla-articulos">
      <thead>
        <tr>
          <th>Cantidad</th>
          <th>Artículo</th>
          <th>Descripción</th>
          <th>Proveedor</th>
          <th>Acción</th>
        </tr>
      </thead>
      <tbody>
        <tr class="fila-articulo">
          <td>
            <div class="form-group">
              <label for="Cantidad" class="d-none">Cantidad:</label>
              <input type="text" class="form-control" name="Cantidad[]" required>
            </div>
          </td>
          <td>
            <div class="form-group">
              <label for="Clv_Producto" class="d-none">Artículo:</label>
              <select class="form-control" name="Clv_Producto[]" required>
              <option value="" selected disabled>Seleccione artículo</option> <!-- Opción predefinida -->
                <?php
                  include("conexion/conexion_mysql.php");
                  $query_clave = "SELECT Clv_Producto, Nombre_Producto, Des_Producto FROM producto";
                  $result_clave = mysqli_query($conexion, $query_clave);
                  $productos = [];
                  while ($row_clave = mysqli_fetch_assoc($result_clave)) {
                    $productos[$row_clave['Clv_Producto']] = $row_clave['Des_Producto'];
                    echo '<option value="' . $row_clave['Clv_Producto'] . '">' . $row_clave['Nombre_Producto'] . '</option>';
                  }
                ?>
              </select>
            </div>
          </td>
          <td>
            <div class="form-group">
              <label for="Descripcion" class="d-none">Descripción:</label>
              <input type="text" class="form-control descripcion" name="Descripcion[]" readonly>
            </div>
          </td>
          <td>
            <div class="form-group">
              <label for="Proveedor" class="d-none">Proveedor:</label>
              <select class="form-control" name="Proveedor[]" required>
              <option value="" selected disabled>Seleccione proveedor</option> <!-- Opción predefinida -->

                <?php
                  $query_proveedor = "SELECT Id_Proveedor, Nombre_Pro FROM proveedor";
                  $result_proveedor = mysqli_query($conexion, $query_proveedor);
                  while ($row_proveedor = mysqli_fetch_assoc($result_proveedor)) {
                    echo '<option value="' . $row_proveedor['Id_Proveedor'] . '">' . $row_proveedor['Nombre_Pro'] . '</option>';
                  }
                ?>
              </select>
            </div>
          </td>
          <td>
            <button type="button" class="btn btn-danger eliminar-fila">Eliminar</button>
          </td>
        </tr>
      </tbody>
    </table>
    <button type="button" class="btn btn-secondary" id="agregar-articulo">Agregar Artículo</button>
    <button type="submit" class="btn btn-primary">Generar Compra</button>
    <button type="button" class="btn btn-warning" id="nueva-compra">Nueva Compra</button> <!-- Botón de nueva compra -->
  </form>
</div>
</section>

<!-- Modal de confirmación -->
<div class="modal fade" id="confirmarEliminacionModal" tabindex="-1" aria-labelledby="confirmarEliminacionLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmarEliminacionLabel">Confirmar Eliminación</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ¿Estás seguro de que deseas eliminar este artículo?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-danger" id="confirmarEliminar">Eliminar</button>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    const productos = <?php echo json_encode($productos); ?>;
    let filaAEliminar;

    function actualizarDescripcion(fila) {
      const clvProductoSelect = fila.querySelector('select[name="Clv_Producto[]"]');
      const descripcionInput = fila.querySelector('.descripcion');
      clvProductoSelect.addEventListener('change', function() {
        const selectedValue = clvProductoSelect.value;
        descripcionInput.value = productos[selectedValue] || '';
      });
      clvProductoSelect.dispatchEvent(new Event('change'));
    }

    document.querySelectorAll('.fila-articulo').forEach(function(fila) {
      actualizarDescripcion(fila);
      agregarEventListenerEliminar(fila);
    });

    document.getElementById('agregar-articulo').addEventListener('click', function() {
      const nuevaFila = document.querySelector('.fila-articulo').cloneNode(true);
      nuevaFila.querySelector('input[name="Cantidad[]"]').value = '';
      nuevaFila.querySelector('.descripcion').value = '';
      document.querySelector('#tabla-articulos tbody').appendChild(nuevaFila);
      actualizarDescripcion(nuevaFila);
      agregarEventListenerEliminar(nuevaFila);
    });

    function agregarEventListenerEliminar(fila) {
      fila.querySelector('.eliminar-fila').addEventListener('click', function() {
        filaAEliminar = fila;
        $('#confirmarEliminacionModal').modal('show');
      });
    }

    document.getElementById('confirmarEliminar').addEventListener('click', function() {
      filaAEliminar.remove();
      $('#confirmarEliminacionModal').modal('hide');
    });

    agregarEventListenerEliminar(document.querySelector('.fila-articulo'));

    document.getElementById('nueva-compra').addEventListener('click', function() {
      document.querySelectorAll('#tabla-articulos tbody .fila-articulo').forEach(function(fila, index) {
        if (index > 0) fila.remove(); // Eliminar todas las filas menos la primera
      });
      document.querySelector('.fila-articulo input[name="Cantidad[]"]').value = '';
      document.querySelector('.fila-articulo .descripcion').value = '';
      document.querySelector('.fila-articulo select[name="Clv_Producto[]"]').selectedIndex = 0;
      document.querySelector('.fila-articulo select[name="Proveedor[]"]').selectedIndex = 0;
    });

    document.getElementById('compraForm').addEventListener('submit', function(event) {
      const cantidadInputs = document.querySelectorAll('input[name="Cantidad[]"]');
      let datosIncompletos = false;

      cantidadInputs.forEach(function(input) {
        if (input.value === '') {
          datosIncompletos = true;
        }
      });

      if (datosIncompletos) {
        event.preventDefault(); // Evitar el envío del formulario
        alert('Por favor, complete todos los campos antes de generar la compra.');
      }
    });
  });
</script>
</main>

<style>
  .mi-tabla {
    background-color: #D9D9D9; /* Color gris claro */
    border-collapse: collapse; /* Colapsar los bordes para que se vean como uno solo */
    margin-top: 50px; 
    margin:50px 
  }
  .mi-tabla th,
  .mi-tabla td {
    border: 1px solid #000; /* Bordes de color negro */
  }
      .nav-link {
  padding: 10px 20px; /* Relleno interno para los ítems del menú */
  color: white; /* Color del texto del menú */
  display: row;
  align-items: center;
}
</style>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
  <script>
    document.getElementById('sidebarToggle').addEventListener('click', function() {
      var sidebarMenu = document.getElementById('sidebarMenu');
      if (sidebarMenu.style.display === 'none' || sidebarMenu.style.display === '') {
        sidebarMenu.style.display = 'block';
      } else {
        sidebarMenu.style.display = 'none';
      }
    });
  </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
