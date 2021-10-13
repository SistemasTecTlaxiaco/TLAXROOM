<?php
    class Inquilinos extends Controllers{
        public function __construct()
        {
        session_start();
        if (empty($_SESSION['activo'])) {
            header("location: " . URL_BASE());
        }
            parent::__construct();

        }
        public function Listar()
        {
            $data = $this->model->selectInquilinos();         
            $this->views->getView($this, "Listar", $data, "");
        }
    public function eliminados()
    {
        $data = $this->model->selectInquilinosInactivos();
        $this->views->getView($this, "Eliminados", $data, "");
    }
        public function insertar()
        {
            $nombre = $_POST['nombre'];
            $ap_paterno = $_POST['ap_paterno'];
            $ap_materno = $_POST['ap_materno'];
            $telefono = $_POST['telefono'];
            $sexo = $_POST['sexo'];
            $profesion = $_POST['profesion'];
            $insert = $this->model->insertarInquilinos($nombre, $ap_paterno, $ap_materno, $telefono, $sexo, $profesion);
            if ($insert > 0) {
            $alert = 'registrado';
            }else if ($insert == 'existe') {
            $alert = 'existe';
            }else{
            $alert =  'error';
            }
            $this->model->selectInquilinos();
            header("location: " . URL_BASE() . "Inquilinos/Listar?msg=$alert");
            die();
        }
        public function editar()
        {
            $id = $_GET['id'];
            $data = $this->model->editarInquilinos($id);
            if ($data == 0) {
                $this->Listar();
            }else{
                $this->views->getView($this, "Editar", $data);
            }
        }
    public function actualizar()
    {
        $id = $_POST['id'];
        $nombre = $_POST['nombre'];
        $ap_paterno = $_POST['ap_paterno'];
        $ap_materno = $_POST['ap_materno'];
        $telefono = $_POST['telefono'];
        $sexo = $_POST['sexo'];
        $profesion = $_POST['profesion'];
        $actualizar = $this->model->actualizarInquilinos($nombre, $ap_paterno, $ap_materno, $telefono, $sexo, $profesion, $id);
        if ($actualizar == 1) {
            $alert = 'modificado';
        }else {
            $alert = 'error';
        }
        header("location: " . URL_BASE() . "Inquilinos/Listar?msg=$alert");
        die();
    }
    public function eliminar()
    {
        $id = $_GET['id'];
        $this->model->eliminarInquilinos($id);
        header("location: " . URL_BASE() . "Inquilinos/Listar");
        die();
    }
    public function reingresar()
    {
        $id = $_GET['id'];
        $this->model->reingresarInquilinos($id);
        $data = $this->model->selectInquilinos();
        header("location: " . URL_BASE() . "Inquilinos/Listar");
        die();
    }
    public function buscar()
    {
        $ruc = $_POST['ruc'];
        $data = $this->model->BuscarInquilino($ruc);
        echo json_encode($data);
    }
}
