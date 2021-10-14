<?php
class InquilinosModel extends Mysql{
    public $id, $nombre, $telefono, $ap_paterno, $ap_materno, $sexo, $profesion; 
    public function __construct()
    {
        parent::__construct();
    }
    public function selectInquilinos()
    {
        $sql = "SELECT * FROM inquilinos WHERE Estado = 1";
        $res = $this->select_all($sql);
        return $res;
    }
    public function selectInquilinosInactivos()
    {
        $sql = "SELECT * FROM inquilinos WHERE Estado = 0";
        $res = $this->select_all($sql);
        return $res;
    }
    public function BuscarInquilino(string $nombre)
    {
        $this->nombre = $nombre;
        $sql = "SELECT * FROM inquilinos WHERE Nombre = $this->nombre AND Estado = 1";
        $res = $this->select($sql);
        return $res;
    }
    public function insertarInquilinos(string  $nombre , string $ap_paterno, string $ap_materno, string $telefono, string $sexo, string $profesion)
    {
        $return = "";
        $this->nombre = $nombre;
        $this->ap_paterno = $ap_paterno;
        $this->ap_materno = $ap_materno;
        $this->telefono = $telefono;
        $this->sexo = $sexo;
        $this->profesion = $profesion;
        $sql = "SELECT * FROM inquilinos WHERE nombre = '{$this->nombre}'";
        $result = $this->select_all($sql);
        if (empty($result)) {
            $query = "INSERT INTO inquilinos(Nombre, Ap_Paterno, Ap_materno, Telefono, Sexo, Profesion) VALUES (?,?,?,?,?,?)";
            $data = array($this->nombre, $this->ap_paterno, $this->ap_materno, $this->telefono, $this->sexo, $this->profesion);
            $resul = $this->insert($query, $data);
            $return = $resul;
        }else {
            $return = "existe";
        }
        return $return;
    }
    public function editarInquilinos(int $id)
    {
        $this->id = $id;
        $sql = "SELECT * FROM inquilinos WHERE Id_Inquilino = '{$this->id}'";
        $res = $this->select($sql);
        if (empty($res)) {
            $res = 0;
        }
        return $res;
    }
    public function actualizarInquilinos(string  $nombre , string $ap_paterno, string $ap_materno, string $telefono, string $sexo, string $profesion, int $id)
    {
        $return = "";
        $this->nombre = $nombre;
        $this->ap_paterno = $ap_paterno;
        $this->ap_materno = $ap_materno;
        $this->telefono = $telefono;
        $this->sexo = $sexo;
        $this->profesion = $profesion;
        $this->id = $id;
        $query = "UPDATE inquilinos SET Nombre=?, Ap_Paterno=?, Ap_materno=?, Telefono=?, Sexo=?, Profesion=? WHERE Id_Inquilino=?";
        $data = array($this->nombre, $this->ap_paterno, $this->ap_materno, $this->telefono, $this->sexo, $this->profesion, $this->id);
        $resul = $this->update($query, $data);
        $return = $resul;
        return $return;
    }
    public function eliminarInquilinos(int $id)
    {
        $return = "";
        $this->id = $id;
        $query = "UPDATE inquilinos SET Estado = 0 WHERE Id_Inquilino=?";
        $data = array($this->id);
        $resul = $this->update($query, $data);
        $return = $resul;
        return $return;
    }
    public function reingresarInquilinos(int $id)
    {
        $return = "";
        $this->id = $id;
        $query = "UPDATE inquilinos SET Estado = 1 WHERE Id_Inquilino=?";
        $data = array($this->id);
        $resul = $this->update($query, $data);
        $return = $resul;
        return $return;
    }
}
?>