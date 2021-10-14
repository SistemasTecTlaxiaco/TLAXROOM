<?php encabezado() ?>

<!-- Sidebar Navigation end-->
<div class="page-content bg-light">
    <div class="page-header bg-light">
        <div class="container-fluid">
            <h2 class="h5 no-margin-bottom">Panel de Administración</h2>
        </div>
    </div>
    <section class="no-padding-bottom">
        <div class="container-fluid">
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <a class="col-xl-3 col-md-6 mb-4"  href="Views\Admin\usuarios\Listar.php">
                

                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 bg-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">Usuarios</div>
                                    <div class="h5 mb-0 font-weight-bold text-white"><?php echo $alert; ?></div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-user fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Earnings (Monthly) Card Example -->
                <a class="col-xl-3 col-md-6 mb-4"  href="Views\Admin\inquilinos\Listar.php">
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 bg-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">Inquilinos</div>
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-auto">
                                            <div class="h5 mb-0 mr-3 font-weight-bold text-white"><?php echo $cliente; ?></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-users fa-2x text-white"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <a class="col-xl-3 col-md-6 mb-4"  href="Views\Admin\alquileres\Listar.php">
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-0 bg-secondary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">Alquileres</div>
                                    <div class="h5 mb-0 font-weight-bold text-white"><?php echo $config; ?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

    <script>
        window.addEventListener("load", function() {
            reportes();
            reportesTorta();
        })
    </script>
</div>
<?php pie() ?>