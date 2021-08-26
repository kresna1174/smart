<body>
    <section class="our-teachers">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mb-5">Album</h2>
                </div>
            </div>
            <div class="row">
                <?php foreach ($data->result() as $row) : ?>
                    <div class="col-md-3">
                        <div class="admission_insruction">
                          <?php if(empty($row->album_cover)):?>
                            <img src="<?php echo base_url().'assets/images/blank.png';?>" class="img-fluid" alt="#">
                          <?php else:?>
                            <p><a href="<?php echo base_url('album/desk/'.$row->album_id) ?>"><img src="<?php echo base_url().'assets/images/'.$row->album_cover;?>" class="img-fluid" alt="#"></a></p>
                          <?php endif;?>
                            <p class="text-center mt-3"><span><?php echo $row->album_nama;?></span>
                        </div>
                    </div>
                <?php endforeach;?>
              </div>
            <!-- End row -->
            <nav><?php echo $page;?></nav>
        </div>
    </section>

    <!--//End Style 2 -->