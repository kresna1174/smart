<body>
    <section class="our-teachers">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mb-5">Kompetensi Keahlian</h2>
                </div>
            </div>
            <div class="row">
                <?php foreach ($data->result() as $row) : ?>
                    <div class="col-md-3">
                        <div class="admission_insruction">
                          <?php if(empty($row->logo_jurusan)):?>
                            <img src="<?php echo base_url().'assets/images/blank.png';?>" class="img-fluid" alt="#">
                          <?php else:?>
                            <?php if($row->id_jurusan<8 || $row->id_jurusan == 17 ){?>
                            <p><a href="<?php echo base_url('jurusan/desk/'.$row->id_jurusan) ?>"><img src="<?= base_url().'jurusan1/desk/'.$row->logo_jurusan?>" class="img-fluid" alt="#"></a></p>
                            <?php } else{ ?>
                            <p><a href="<?php echo base_url('jurusan/desk/'.$row->id_jurusan) ?>"><img src="<?php echo base_url().'assets/images/'.$row->logo_jurusan;?>" class="img-fluid" alt="#"></a></p>
                            <?php } ?>
                          <?php endif;?>
                            <p class="text-center mt-3"><span><?php echo $row->nama_jurusan;?></span>
                        </div>
                    </div>
                <?php endforeach;?>
              </div>
            <!-- End row -->
            <nav><?php echo $page;?></nav>
        </div>
    </section>

    <!--//End Style 2 -->