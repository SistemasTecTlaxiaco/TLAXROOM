<?php
class AdminModel extends Mysql{
    public function __construct()
    {
        parent::__construct();
    }
    public function selectStockM()
    {
        $sql = "SELECT nombre, cantidad FROM productos WHERE cantidad <= 10 ORDER BY cantidad ASC LIMIT 10";
        $res = $this->select_all($sql);
        return $res;
    }
    public function selectProductos()
    {
        $sql = "SELECT producto, cantidad, SUM(cantidad) as total FROM detalle_venta group by id_producto ORDER BY cantidad DESC LIMIT 10";
        $res = $this->select_all($sql);
        return $res;
    }
    public function inquilinos()
    {
        $sql = "SELECT COUNT(*) FROM inquilinos WHERE Estado = 1";
        $res = $this->selecT($sql);
        return $res;
    }
    public function usuarios()
    {
        $sql = "SELECT COUNT(*) FROM usuarios WHERE estado = 1";
        $res = $this->selecT($sql);
        return $res;
    }
    public function alquileres()
    {
        $sql = "SELECT COUNT(*) FROM alquiler WHERE Estado = 1";
        $res = $this->selecT($sql);
        return $res;
    }
}
