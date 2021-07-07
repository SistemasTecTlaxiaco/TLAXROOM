<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Tlaxroom</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<?php echo URL_BASE(); ?>Assets/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="<?php echo URL_BASE(); ?>Assets/css/bootstrap.min.css">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<?php echo URL_BASE(); ?>Assets/css/custom.css">
    <link rel="stylesheet" href="<?php echo URL_BASE(); ?>Assets/css/dataTables.bootstrap4.min.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- Tweaks for older IEs-->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>

<body>
    <header class="header">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid d-flex align-items-center justify-content-between">
                <div class="navbar-header">
                    <input type="hidden" id="url" value="<?php echo URL_BASE(); ?>">
                    <!-- Navbar Header--><a href="<?php echo URL_BASE(); ?>Admin/Listar" class="navbar-brand">
                        <div class="brand-text brand-big visible"><strong class="text-white">TLAXROOM</strong></div>
                        <div class="brand-text brand-sm"><strong class="text-primary">T</strong><strong>M</strong></div>
                    </a>
                    <!-- Sidebar Toggle Btn-->
                    <!--button class="sidebar-toggle"><i class="fas fa-arrow-alt-circle-left"></i></button-->
                </div>
                <div class="right-menu list-inline no-margin-bottom">
                   
                </div>
                <!-- Log out               -->
                <div class="list-inline-item logout">
                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#logout">Salir</button>
                </div>
            </div>
            </div>
        </nav>
    </header>
    <div class="d-flex align-items-stretch">
        <!-- Sidebar Navigation-->
        <nav id="sidebar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center p-1">
                <div class="avatar" data-toggle="modal" data-target="#cambiarPass"><img src="<?php echo URL_BASE(); ?>/Assets/img/logo_tlax_room.png" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h5 class="h5"><?php echo $_SESSION['rol']; ?></h5>
                </div>
            </div>
            <ul class="list-unstyled">
                <?php if($_SESSION['rol'] == "Administrador"){ ?>
				<li><a href="<?php echo URL_BASE(); ?>Configuracion/Listar"> <i class="fas fa-cogs"></i> <strong class="text-white"> Configuración </strong></a></li>
                <li><a href="<?php echo URL_BASE(); ?>Usuarios/Listar"> <i class="fas fa-user"></i> <strong class="text-white"> Usuarios </strong></a></li>
                <?php } ?>
                <li><a href="<?php echo URL_BASE(); ?>Inquilinos/Listar"> <i class="fas fa-users"></i> <strong class="text-white"> Inquilinos </strong></a></li>
                </ul>
                <button class="sidebar-toggle"><i class="fas fa-arrow-alt-circle-left" aling="center"></i></button>
        </nav>
       