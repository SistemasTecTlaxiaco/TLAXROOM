<?php encabezado() ?>
<!-- Begin Page Content -->
<div class="page-content bg-light">
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 mt-2">
                    <div class="row">
                        <div class="col-lg-6 mb-2">
                            <a class="btn btn-primary" href="<?php echo URL_BASE(); ?>Inquilinos/Listar"><i class="fas fa-arrow-alt-circle-left"></i> Regresar</a>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="Table">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido Paterno</th>
                                    <th>Apellido Materno</th>
                                    <th>Sexo</th>
                                    <th>Teléfono</th>
                                    <th>Profesión</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($data as $cl) { ?>
                                    <tr>
                                        <td><?php echo $cl['Id_Inquilino']; ?></td>
                                        <td><?php echo $cl['Nombre']; ?></td>
                                        <td><?php echo $cl['Ap_Paterno']; ?></td>
                                        <td><?php echo $cl['Ap_materno']; ?></td>
                                        <td><?php echo $cl['Sexo']; ?></td>
                                        <td><?php echo $cl['Telefono']; ?></td>
                                        <td><?php echo $cl['Profesion']; ?></td>
                                        <td>
                                            <form action="<?php echo URL_BASE() ?>Inquilinos/reingresar?id=<?php echo $cl['Id_Inquilino']; ?>" method="post" class="d-inline confirmar">
                                                <button type="submit" class="btn btn-success"><i class="fas fa-ad"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php pie() ?>