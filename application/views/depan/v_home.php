<body>
<section>
    <div class="slider_img layout_two">
        <div id="carousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img class="d-block" style="width:100%" src="<?php echo base_url().'theme/images/1.jpg'?>" alt="First slide">
                    <div class="carousel-caption d-md-block">
                        <div class="slider_title">
                          
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block" style="width:100%" src="<?php echo base_url().'theme/images/2.jpg'?>" alt="Second slide">
                    <div class="carousel-caption d-md-block">
                      
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block" style="width:100%" src="<?php echo base_url().'theme/images/3.jpg'?>" alt="Third slide">
                    <div class="carousel-caption d-md-block">
                      
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                <i class="icon-arrow-left fa-slider" style="color:black" aria-hidden="true"></i>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                <i class="icon-arrow-right fa-slider" style="color:black" aria-hidden="true"></i>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>
<!--//END HEADER -->

<!--============================= OUR JURUSAN =============================-->
<table style="width:100%">
        <tr>
            <td class="text-center font-weight-bold p-2" style="background-image: url('../theme/images/batas.jpg');">
<?php
$tgl=date('l, d-m-Y');
echo $tgl;
?>
<?php
echo " . " . date(" h:i:sa ");
?>
            </td>
        </tr>
    </table>

<section class="our_courses p-2">
    <center>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                       
                    <!--<p style="color:#cbb58b">Mohon Maaf, Link Pendaftran Masih Belum Di Akses!! Mohon Bersabar. </p>-->
                    <div class="form-group">
                    
                     
                     </div>
					
<br>







             </div>
                </div>
            </div>
        </div><br>
    <table style="width:100%">
        <tr>
            <td class="text-center font-weight-bold p-2" style="background-image: url('../theme/images/batas.jpg');"><b>KOMPETENSI KEAHLIAN</b></td>
        </tr>
    </table>
    </center>
    <div class="container">
        <div class="row">
          <?php foreach ($progli->result() as $row) :?>
            <div class="col-md-3">
                        <div class="admission_insruction">
                          <?php if(empty($row->logo_jurusan)):?>
                            <img src="<?php echo base_url().'assets/images/blank.png';?>" class="img-fluid" alt="#">
                          <?php else:?>
                            <p><a href="<?php echo base_url('jurusan/desk/'.$row->id_jurusan) ?>"><img src="<?php echo base_url().'assets/images/'.$row->logo_jurusan;?>" class="img-fluid" alt="#"></a></p>
                          <?php endif;?>
                            <p class="text-center mt-3"><span><?php echo $row->nama_jurusan;?></span>
                        </div>
                    </div>
          <?php endforeach;?>
        </div> <br>
        <div class="row">
            <div class="col-md-12 text-center">
                <a href="<?php echo site_url('jurusan');?>" class="btn btn-default btn-courses" style="color: #aiaiai; border-color: #0a0a0a0a0a; border-radius: 15px">Selengkapnya</a>
                </div>
                </div>
        </div>
       </div>
    </section>


<!--============================= EVENTS =============================-->


<!--//END ABOUT -->
<!--============================= OUR COURSES =============================-->
<section class="our_courses">
    <center>
    <table style="width:100%">
        <tr>
            <td class="text-center font-weight-bold p-2" style="background-image: url('../theme/images/batas.jpg');"><b>BERITA</b></td>
        </tr>
    </table>
    </center>
    <br>
    <br>
    <div class="container">
        <div class="row justify-content-center">
          <?php foreach ($berita->result() as $row) :?>
            <div class="col-lg-6 col-md-4 col-sm-10 py-2 smodal">
                <div class="row justify-content-center">
                    <div class="col-10">
                        <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" style="center" class="img-fluid">
                    </div>
                    <!-- // end .course-img-wrap -->
                    <div class="col-10">
                    <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" style="center" font-size:"14px" class="course-box-content">
                        <h4 style="text-align:center;"><?php echo $row->tulisan_judul;?></h4>
                    </a>
                    </div>
                </div>
            </div>
          <?php endforeach;?>
        </div> <br>
        <div class="row">
            <div class="col-md-12 text-center">
                <a href="<?php echo site_url('artikel');?>" class="btn btn-default btn-courses" style="color: #aiaiai; border-color: #0a0a0a0a0a; border-radius: 15px">View More</a>
            </div>
        </div>
        </div>
</section>
<!--//END OUR COURSES -->
<!--============================= EVENTS =============================-->
    <center>
    <table style="width:100%">
        <tr>
            <td class="text-center font-weight-bold p-2" style="background-image: url('../theme/images/batas.jpg');"><b>PENGUMUMAN DAN EVENT</b></td>
        </tr>
    </table>
    </center>
<section class="event">
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="event-img2">
                <?php foreach ($pengumuman->result() as $row) :?>
                <div class="row">
                    <div class="col-sm-2"> 
                    <img src="<?php echo base_url().'theme/images/announcement-icon.png'?>" style="width:25%" class="img-fluid" alt="event-img"></div><!-- // end .col-sm-3 -->
                    <div class="col-sm-10"> <h4><a href="<?php echo site_url('pengumuman');?>"><?php echo $row->pengumuman_judul;?></a></h4>
                      <span><?php echo $row->tanggal;?></span>
                      <p><?php echo limit_words($row->pengumuman_deskripsi,10).'...';?></p>

                    </div><!-- // end .col-sm-7 -->
                </div><!-- // end .row -->
                <?php endforeach;?>
                </div>
            </div>
            <div class="col-lg-2">
                
            </div> <br><br>
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-md-12">
                      <?php foreach ($agenda->result() as $row):?>
                        <div class="event_date">
                            <div class="event-date-wrap">
                                <p><?php echo date("d", strtotime($row->agenda_tanggal));?></p>
                                <span><?php echo date("M. y", strtotime($row->agenda_tanggal));?></span>
                            </div>
                        </div>
                        <div class="date-description">
                            <h4><a href="<?php echo site_url('agenda');?>"><?php echo $row->agenda_nama;?></a></h4>
                            <p><?php echo limit_words($row->agenda_deskripsi,10).'...';?></p>
                            <!--<hr class="event_line">-->
                        </div>
                        <?php endforeach;?>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!--//END EVENTS -->
<!--============================= DETAILED CHART =============================-->
<!--<table>-->
<div class="detailed-chart">
    <div class="container">
        <div class="row">
            <div class="col-md-3 chart_bottom bg-success">
               <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_guru;?></span> Guru
                    </p>
                </div>
            </div>
            <div class="col-md-3 chart_bottom chart_top bg-warning">
               
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_jurusan;?></span> Jurusan
                    </p>
                </div>
            </div>
            <div class="col-md-3 chart_top bg-info">
                
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_files;?></span> Download
                    </p>
                </div>
            </div>
            <div class="col-md-3 bg-danger">
                
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_agenda;?></span> Agenda</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--</table>-->
<!--//END DETAILED CHART -->