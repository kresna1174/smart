<body>
    <section class="blog-wrap" style="padding:0">
        <div class="container">
            <div class="slider_img layout_two">
                <div id="carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="d-block" style="width:100%; rgba(255,0,0,0.5)" src="<?= base_url().'jurusan1/desk/'.$desk[0]->slide_jurusan?>" alt="First slide">
                            <div class="carousel-caption d-md-block">
                                <div class="slider_title">
                                  
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?php foreach ($desk as $row) : ?>
                    <!--<div class="col-md-12">-->
                    <!--    <div class="event-heading text-center">-->
                    <!--        <h3><?php echo $row->nama_jurusan; ?></h3>-->
                    <!--        <p align="justify" ><?php echo $row->deskripsi; ?></p>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <!--<div class="col-md-12">-->
                    <!--    <div class="row">-->
                    <!--        <div class="col-md-5">-->
                    <!--            <img src="<?php echo base_url().'assets/images/'.$row->logo_jurusan;?>" width="80%;" class="img-fluid" alt="blog-img">-->
                    <!--        </div>-->
                    <!--        <div class="col-md-12">-->
                    <!--            <div class="row">-->
                    <!--        <div class="col-md-12">-->
                    <!--            &nbsp;-->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--</div>-->
                       <div class="col-md-12">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="event-heading">
                                    
                                    <p align="justify" ><?php echo $row->visi; ?></p>
                                </div>
                          </div>
                      </div>
                       <div class="col-md-12">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="event-heading">
                                    
                                    <p align="justify" ><?php echo $row->pengajar; ?></p>
                                </div>
                          </div>
                      </div>
                       </div>
                       <div class="col-md-12">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="event-heading">
                                    
                                    <p align="justify" ><?php echo $row->kerjasama; ?></p>
                                </div>
                          </div>
                      </div>
                      <div class="col-md-12">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="event-heading">
                                    
                                    <p align="justify" ><?php echo $row->produk; ?></p>
                                </div>
                          </div>
                      </div>
                       <div class="col-md-12">
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="event-heading">
                                    
                                    <p align="justify" ><?php echo $row->prestasi; ?></p>
                                </div>
                          </div>
                      </div>
                      <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="<?php echo base_url().'assets/images/'.$row->lab2;?>" width="80%;" class="img-fluid" alt="blog-img">
                            </div>
                            <div class="col-md-6">
                                <img src="<?php echo base_url().'assets/images/'.$row->lab3;?>" width="80%;" class="img-fluid" alt="blog-img" >
                            </div>
                           
                          </div>
                      <hr class="event-underline">
                  </div>
                <?php endforeach;?>
                </div>
            </div>
        </div>
    </section>