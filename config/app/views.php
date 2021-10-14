<?php
class Views{
    public function getViews($controlador, $vista){
        $controlador = get_class($controlador);
        if($controlador== "Home"){
           $vista ="views/".$vista.".php";
        }else{
            $vista ="views/".$controlador."/".$vista.".php";

        }
        else $vista;
    }


}
?>