<<<<<<< HEAD
<?php
require_once("Config/Config.php");
require_once("Helpers/Helpers.php");
$url = isset($_GET['url']) ? $_GET['url'] : "Home/home";
$arrUrl = explode("/", $url);
$controller = $arrUrl[0];
$methop = $arrUrl[0];
$params = "";
if (isset($arrUrl[1])) {
    if ($arrUrl[1] != "") {
        $methop = $arrUrl[1];
=======
<?php session_start();
    $ruta= !empty($_GET['url']) ? empty($_GET['url']):"Home/index";
    $array = explode("/", $ruta);
    $controller= $array[0];
    $metodo = "index";
    $parametro ="";
    if(!empty($array[1])){
        if(!empty($array[1] !="")){
            $metodo=  $array[1];
        }
    }
    if(!empty($array[2])){
        if(!empty($array[2] !="")){
            for($i=2; $i<count($array); $i++)
            {
                $parametro .= $array[$i].",";
            }
            $parametro = trim($parametro, ",");
        }
    }
    require_once 'config/config.php';
    $dirControllers="Controllers".$controller.".php";
    if(file_exists($controller)){
        require_once $controller;
        $controller =new $controller();
        if(method_exists($controller,$metodo)){
            $controller->$metodo($parametro);
        }else{
            echo "No existe el metodo";
        }
    }else{
        echo "No existe el controlador";
    }
    
    //antes
    if(isset($_SESSION['usuario'])) {
        header('location: principal.php');
    }else{
        header('location: login.php');
>>>>>>> 8872f0f2ca95680e3d0396fbdf9ed0945925b83d
    }
}
if (isset($arrUrl[2])) {
    if ($arrUrl[2] != "") {
        for ($i=2; $i < count($arrUrl); $i++) { 
            $params .= $arrUrl[$i]. ',';
        }
        $params = trim($params, ',');
    }
}
require_once("Libraries/Core/Autoload.php");
require_once("Libraries/Core/Load.php");
?>