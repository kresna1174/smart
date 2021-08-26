<body>
  <!--============================= Gallery =============================-->
  <div class="gallery-wrap">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="gallery-style">Gallery Photo</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div id="gallery">
            <div id="gallery-content">
              <div id="gallery-content-center">
                <?php foreach ($all_galeri->result() as $row) : ?>
                  <div class="col-md-6">
                  <a href="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" class="image-link2" >
                    <img src="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" class="all img-fluid" alt="#" />
                    <p><?php echo $row->galeri_judul;?></p>
                  </a>
                </div>
                <?php endforeach;?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--//End Gallery -->
