<?php encabezado() ?>
<!-- Begin Page Content -->
<div class="page-content bg-light">
    <section>
        <div class="container-fluid">
            <div class="row mt-2">
                <div class="col-lg-6 m-auto">
                    <form method="post" action="<?php echo URL_BASE(); ?>Inquilinos/actualizar" autocomplete="off">
                        <div class="card-header bg-dark">
                            <h6 class="title text-white text-center"><i class="fas fa-user-edit"></i> Modificar Inquilino</46>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="hidden" name="id" value="<?php echo $data['Id_Inquilino']; ?>">
                                <input id="nombre" class="form-control" type="text" name="nombre" value="<?php echo $data['Nombre']; ?>">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="ap_paterno">Apellido Paterno</label>
                                        <input id="ap_paterno" class="form-control" type="text" name="ap_paterno" value="<?php echo $data['Ap_Paterno']; ?>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="ap_materno">Apellido Materno</label>
                                        <input id="ap_materno" class="form-control" type="text" name="ap_materno" value="<?php echo $data['Ap_materno']; ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ap_materno">Sexo</label>
                                <input id="sexo" class="form-control" type="text" name="sexo" value="<?php echo $data['Sexo']; ?>">
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="telefono">Teléfono</label>
                                        <input id="telefono" class="form-control" type="text" name="telefono" value="<?php echo $data['Telefono']; ?>">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="profesion">Profesion</label>
                                        <input id="profesion" class="form-control" type="text" name="profesion" value="<?php echo $data['Profesion']; ?>">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-dark" type="submit"><i class="fas fa-save"></i> Modificar</button>
                            <a href="<?php echo URL_BASE(); ?>Inquilinos/Listar" class="btn btn-danger"><i class="fas fa-arrow-alt-circle-left"></i> Regresar</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<?php pie() ?>