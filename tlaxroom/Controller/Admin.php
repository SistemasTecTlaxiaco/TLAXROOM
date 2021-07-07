<?php
    class Admin extends Controllers{
        protected $totalPagar, $tot = 0;
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
            $cli = $this->model->inquilinos();
            $usu = $this->model->usuarios();
            $inquilinos = $cli['COUNT(*)'];  
            $usuarios = $usu['COUNT(*)'];
            //$ventas = $ven['COUNT(*)'];
            $this->views->getView($this, "Listar", $inquilinos, $usuarios);
        }
        public function reportes()
        {
            $data = $this->model->selectStockM();
            echo json_encode($data);
        }
        public function reportesTorta()
        {
            $data = $this->model->selectProductos();
            echo json_encode($data);
        }
}
