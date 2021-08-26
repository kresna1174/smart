<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-129282533-3"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        
        gtag('config', 'UA-129282533-3');
    </script>

        <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
        ?>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script type="text/javascript" language="JavaScript">
        var txt=" Selamat Datang di Sekolah Kami SMK NEGERI 1 BOYOLANGU ";
        var speed=200;
        var refresh=null;
        function action() { document.title=txt;
            txt=txt.substring(1,txt.length)+txt.charAt(0);
            refresh=setTimeout("action()",speed);}action();
        </script>
        <link rel="shorcut icon" href="<?php echo base_url().'theme/images/esemkita.png'?>">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>">
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>">
        <!-- Simple Line Font -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/simple-line-icons.css'?>">
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/magnific-popup.css'?>">
        <!-- Slider / Carousel -->
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick.css'?>">
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick-theme.css'?>">
        <link rel="stylesheet" href="<?php echo base_url().'theme/css/owl.carousel.min.css'?>">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/normalize.css'?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/set2.css'?>" />

        <!-- Main CSS -->
        <link href="<?php echo base_url().'theme/css/animated-masonry-gallery.css'?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">
        <link href="<?php echo base_url().'theme/css/dataTables.bootstrap4.min.css'?>" rel="stylesheet">
        <style>
            b{
                color: #fff;
            }
        </style>
    </head>
    <div class="header-topbar" style="background-color: #1f1f1f;">
        <div class="container">
            <div class="row">
                    <div class="header-top_address">
                        <div class="header-top_list">
                            <span class="icon-phone"></span>(0355) 323024
                        </div>
                        <div class="header-top_list">
                            <span class="icon-envelope-open"></span><a href="mailto:smkn1boyolangu@yahoo.co.id">smkn1boyolangu@yahoo.co.id</a>
                        </div>
                        <div class="header-top_list">
                            <span class="icon-location-pin"></span>Jl. Ki Mangunsarkoro VI/3, Beji, Boyolangu, Tulungagung, Jawa Timur
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <div data-toggle="affix" style="background-color: #125901;">
        <div class="container nav-menu2">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar2 navbar-toggleable-md navbar-light bg-faded" style="background-color: #125901;">
                        <button class="navbar-toggler navbar-toggler2 navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                            <span class="icon-menu"></span>
                        </button>
                        <a href="<?php echo site_url('');?>" class="navbar-brand nav-brand2"><img class="img img-responsive" width="70px;" src="<?php echo base_url().'theme/images/esemkita.png'?>"><b style="color: #fff;"> &nbsp;SMKN 1 BOYOLANGU</b></a>
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('');?>"><b>Home</b></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('about');?>"><b>Tentang</b></a>
                                </li>
                               
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('jurusan');?>"><b>Komp. Keahlian</b></a>
                                </li>
                                <li>
                                <div class="dropdown">
                                    <a style="background-color:transparent;background-repeat:no-repeat;border: none;cursor:pointer;overflow: hidden;color:#ffffff;font-weight:bold;" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" style="background-color:#125901;" >
                                     <a class="nav-link" href="<?php echo site_url('blog');?>"><b>Berita</b></a>
                                     <a class="nav-link" href="<?php echo site_url('kampung');?>"><b>Kampung Bahasa</b></a>
                                </div>
                                </div>
                                </li>
                               
                                 <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('album');?>"><b>Galeri</b></a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('pengumuman');?>"><b>Pengumuman</b></a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('agenda');?>"><b>Agenda</b></a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('guru');?>"><b>Guru</b></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('download');?>"><b>Download</b></a>
                                </li>
                              
                               
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>